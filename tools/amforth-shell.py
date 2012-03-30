#!/usr/bin/env python
"""Runs a command shell to talk to amforth."""

# slightly modified version of a python script from Ken Staton
# http://staton.us/electronics/remote_IO/atmega_bit_whacker.html
import getopt
import cmd
import time
import sys
import serial
import fdpexpect
import commands

import os
import re
import time

debug = False
tty_dev_name=""

returnValues = ['ok', 'ok\r\n> ', ' \?\? ', fdpexpect.TIMEOUT, fdpexpect.EOF]
returnOk = [0, 1]
returnError = [2]
returnTimeout = [3]
returnEOF = [4]

AMFORTH_LIB = "AMFORTH_LIB"

# From http://pythonfiddle.com/flatten-a-list/
def flatten(tree):
    result = []
    for node in tree:
        if isinstance(node, list):
            result.extend(flatten(node))
        else:
            result.append(node)
    return result

def buildSearchPath():
    path = ["","."]
    # Append AMFORTH_LIB path
    if os.environ.has_key(AMFORTH_LIB):
        path.append(os.environ[AMFORTH_LIB].split(":"))
    path = flatten(path)
    return path

def resolveFilePath(fileName):
    for path in searchPath:
        filePath = path+"/"+fileName
        if os.path.isfile(filePath):
            if debug: print "File found:", filePath
            return filePath
    raise IOError('File not found '+fileName)
    
def send_line(f,line):
    global debug
    # interactive prompt: 'okr\n> '
    # compiling prompt: 'ok'
    # error prompt: ' ?? '
    f.send(line)
#    print line,
    sys.stdout.flush() # don't want to wait for progress indicator
    # get response
    r = f.expect(returnValues)
    if r in returnOk:
        print f.before,
        pass
    elif r in returnError:
        print "ERROR!!"
        print f.before
    elif r in returnTimeout:
        print "TIMEOUT"
        print f.before 
    elif r in returnEOF:
        print "done"
    return r

class ForthShell(cmd.Cmd):

    def __init__(self):
        cmd.Cmd.__init__(self)
        self.prompt = "f> "
        self.serial = serial.Serial()

    def emptyline(self):
        pass

    def default(self, s):
        if not self.serial.isOpen():
            print "You must set a serial port first."
        else:
            #self.serial.write('%s\r' % s)
            #time.sleep(0.5)
            #
            #output = ''
            #while self.serial.inWaiting():
            #    output += self.serial.read()
            #print output.replace('\r', '\n').rstrip()
            self.ffd.send(s+'\r')
            while True:
              r=self.ffd.expect(returnValues)
              print self.ffd.before 
              if r in returnOk: 
                  break 
            

    def do_interactive(self, s):
        """Direct interactive console"""
        # set up pexpect
        self.ffd.timeout=5
        print "^] to exit interactive" 
        self.ffd.interact()
        
    def do_i(self, s):
        """Short for interactive"""
        self.do_interactive(s)

    def do_open(self, s):
        """Open the serial port, e.g.:\nopen /dev/tty.usbserial-A3000PrP"""
        self.serial.port = s
        self.serial.baudrate = 9600
        self.serial.open()
        print('Opening serial port %s' % s)
        # start pexpect
        self.ffd=fdpexpect.fdspawn(self.serial.fd)

    def do_flush(self, s):
        """Flushes serial input buffer"""
        timeout = self.ffd.timeout
        self.ffd.timeout=1
        #self.ffd.send('\n')
        while True:
          r =self.ffd.expect(returnValues)
          if r in returnOk:
            if debug: print "OK:", self.ffd.before
          elif r in returnEOF:
            if debug: print "EOF:", self.ffd.before
          elif r in returnTimeout:
            if debug: print "TIMEOUT."
            break
        self.ffd.timeout = timeout

    def parse_line(self, line):
        if debug: print "Before parsing:", line
        newLine = line
        # Strip comments
        newLine = re.sub(r"(^| )\\( .*$|$)", "", newLine)    # Comments with backslash
        newLine = re.sub(r"(^| )\( .* \)", "", newLine)      # Comments in brackets
        # Preprocess imports
        if re.match("#include", newLine):
            importFile = re.match("#include (\S+)", newLine).group(1)
            importFile = resolveFilePath(importFile)
            if importFile != "":
                self.do_upload(importFile)
                newLine = ""
        # Replace MCU registers
        
        if debug: print "After parsing:", newLine
            
        return newLine
        
    def do_upload(self, s):
        """Upload a .frt file"""
        # set up pexpect
        self.ffd.timeout=5
        # now send file
        s=resolveFilePath(s)
        print "Uploading", s
        f=open(s,'r')
        #r=send_line(self.ffd,"\r")
        #if (r == 0 or r == 1 or r == 5):
        self.do_flush("")
        for line in f:
          parsedLine = self.parse_line(line)
          if parsedLine != "":
              if debug: print("sending: %s" %(parsedLine))
              r = send_line(self.ffd,parsedLine)
          else:
              if debug: print "Line skipped." 
#             else:
#             print "Clear error before uploading!"
        f.close()
        print
        
    def do_debug(self, s):
        """Set debug flag"""
        global debug
        if (s=='1' or s=='True'): 
            debug=True
            print "set to true"
        else: 
            debug=False
            print "set to false" 

    def do_exit(self, s):
        """Exit from the serial console"""
        self.serial.close()
        #self.ffd.close() # already closed
        return 1

def findDevice():
    devices=("ttyUSB0", "ttyUSB1", "ttyACM0", "ttyACM1")
    for dev in devices:
        (exitstatus, outtext) = commands.getstatusoutput("test -c /dev/"+dev)
        if exitstatus == 0:
            return "/dev/"+dev
    return ""

if __name__ == '__main__':
    tty_dev_name = findDevice()
    interactive = False
    toUpload = ""
    try:
      opts, args = getopt.getopt(sys.argv[1:],"iuht:vfd")
    except getopt.GetoptError:
      print >>sys.stderr, "unknown option. try -h"
      sys.exit(1)
    for opt, arg in opts:
      if opt == "-h":
        print >>sys.stderr, "usage: amforth-shell [-h] [-i] [-v] [-f] [-t tty] [-u] [file1] [file2] [...]"
        print >>sys.stderr, "   Probed tty is "+tty_dev_name
        print >>sys.stderr, "   if no files are specified, input is read from the terminal"
        print >>sys.stderr, "   -u uploads file1, file2, ..."
        print >>sys.stderr, "   -i will start in interactive mode"
        print >>sys.stderr, "   -f will run without checking for other processes accessing the tty"
        print >>sys.stderr, "   -v will print extra information during execution"
        print >>sys.stderr, "   -t selects the serial device. Default is currently " + tty_dev_name+" (probed automatically)"
        sys.exit(1)
      elif opt == "-i":
        interactive = True  
      elif opt == "-u":
        toUpload = args
      elif opt == "-t":
        tty_dev_name = arg
      elif opt == "-v":
        verbose = True
      elif opt == "-f":
        force = True
      elif opt == "-d":
        debug = True
    
    searchPath = buildSearchPath()
    if debug: print "Import search path:", searchPath

    shell = ForthShell()
    if tty_dev_name:
      if debug: print "Opening device", tty_dev_name
      shell.do_open(tty_dev_name)
    else:
        print "use open command after connecting adapter"

    if interactive:
      shell.do_interactive(tty_dev_name)

    if toUpload:
      for file in toUpload:
        #print "Uploading:", file
        shell.do_upload(file)
      exit(0)

    shell.cmdloop("enter help for help, exit to leave")

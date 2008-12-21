#!/usr/bin/env python
"""Runs a command shell to talk to amforth."""

# slightly modified version of a python script from Ken Staton
# http://staton.us/electronics/remote_IO/atmega_bit_whacker.html

import cmd
import time
import sys
import serial
import fdpexpect
import commands

debug = False

def send_line(f,line):
    global debug
    # interactive prompt: 'ok\x00\r\n> '
    # compiling prompt: 'ok\x00'
    # error prompt: ' ??\x00 '
    f.send(line)
    print "+",
    sys.stdout.flush() # don't want to wait for progress indicator
    # get response
    r = f.expect(['ok', 'ok\r\n> ', ' \?\? ', fdpexpect.TIMEOUT, fdpexpect.EOF])
    if (r == 0 or r == 1):
        pass
    elif r == 2:
        print "ERROR!!"
        print f.before
    elif r == 3:
        print "TIMEOUT"
        print f.before
    elif r == 4:
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
              r=self.ffd.expect(['ok', 'ok\r\n> ', ' \?\? ', fdpexpect.TIMEOUT, fdpexpect.EOF])
              print self.ffd.before
              if r==0 or r==1: 
                  break 
            

    def do_interactive(self, s):
        """Direct interactive console"""
        # set up pexpect
        self.ffd.timeout=5
        print "^] to exit interactive"
        self.ffd.interact()

    def do_open(self, s):
        """Open the serial port, e.g.:\nopen /dev/tty.usbserial-A3000PrP"""
        self.serial.port = s
        self.serial.baudrate = 9600
        self.serial.open()
        print 'Opening serial port: %s' % s
        # start pexpect
        self.ffd=fdpexpect.fdspawn(self.serial.fd)

    def do_upload(self, s):
        """Upload a .frt file"""
        # set up pexpect
        self.ffd.timeout=5
        # now send file
        f=open(s,'r')
        r=send_line(self.ffd,"\n") 
        if (r == 0 or r == 1):
            for line in f:
                if debug: print ("sending: %s" %(line))
                send_line(self.ffd,line)
        else:
            print "Clear error before uploading!"
        f.close()

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
		
if __name__ == '__main__':
    shell = ForthShell()
    # automatically open a known device
    (exitstatus, outtext) = commands.getstatusoutput("test -c /dev/ttyUSB*")
    if exitstatus == 0:
        (exitstatus, outtext) = commands.getstatusoutput("ls /dev/ttyUSB*")
        s=outtext.split('/')
        fname=s[len(s)-1]
        shell.do_open('/dev/'+fname)
    else:
        print "use open command after connecting adapter"

    shell.cmdloop("enter help for help")


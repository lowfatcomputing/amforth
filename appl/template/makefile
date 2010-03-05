# simple makefile for building the 
# template project. 


# --- edit these values ------------------------------------
# Name of your application (useful, if you rename template.asm)
TARGET=template

# versions before 2.1 may produce some warnings
# but should produce a running system. You should
# _always_ use the trunk.

#AMFORTH=../../releases/3.6
AMFORTH=../../core

# the MCU should be identical to the device
# setting in template.asm
MCU=atmega16

# set the fuses according to your MCU
LFUSE=0xnn
HFUSE=0xnn
# some MCU have this one, see write-fuses target below
EFUSE=0xnn

# serial port
CONSOLE=/dev/ttyUSB0

# additional directory for includes from Atmel Studio, not re-distributed!
DIR_ATMEL=../../Atmel

# programms / flags
USB=-c avr911  -P /dev/ttyUSB3
PP=-c stk200  -P /dev/parport0
JTAG=-c jtag2 -P /dev/ttyUSB2
BURNER=$(USB)
AVRDUDE=avrdude
AVRDUDE_FLAGS=-q $(BURNER) -p $(MCU)

AVRA=avra -I $(DIR_ATMEL)/Appnotes2

AVRASM=wine $(DIR_ATMEL)/avrasm2.exe -I $(DIR_ATMEL)/Appnotes2

# ----------------------------------------------------------

INCLUDE=-I $(AMFORTH)

default:  $(TARGET).hex

erase:
	$(AVRDUDE) $(AVRDUDE_FLAGS) -e

upload: $(TARGET).hex
	$(AVRDUDE) $(AVRDUDE_FLAGS)  -e -U flash:w:$(TARGET).hex:i -U eeprom:w:$(TARGET).eep.hex:i

# assembling the sources, either avra or avrasm
$(TARGET).hex: $(TARGET).asm $(AMFORTH)/*.asm $(AMFORTH)/words/*.asm $(AMFORTH)/devices/*.asm 
#	$(AVRA) $(INCLUDE) --listmac -l $(TARGET).lst -m $(TARGET).map $(TARGET).asm
	$(AVRASM) $(INCLUDE) -fI -v0 -e $(TARGET).eep.hex -l $(TARGET).lst $(TARGET).asm

# getting the image back from the controller
$(TARGET).back:
	$(AVRDUDE) $(AVRDUDE_FLAGS)  -U flash:r:$(TARGET).hex:i -U eeprom:r:$(TARGET).eep.hex:i

# remove generated files
clean:
	rm -f $(TARGET).{hex,eep.hex,lst,map,cof,obj}

# some controller types have three fuse bytes, some only two of them
write-fuse:
	$(AVRDUDE) $(AVRDUDE_FLAGS) -U hfuse:w:$(HFUSE):m -U lfuse:w:$(LFUSE):m
#	$(AVRDUDE) $(AVRDUDE_FLAGS) -U efuse:w:$(EFUSE):m -U hfuse:w:$(HFUSE):m -U lfuse:w:$(LFUSE):m

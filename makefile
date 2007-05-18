# user modifiable secion is up here

AVRDUDE=avrdude
AVRA=/opt/cdk4avr/bin/avra
INCLUDE=~/lib/avra

USB=-c avr911  -P /dev/ttyUSB0
PP=-c stk200  -P /dev/parport0
JTAG=-c jtag2 -P /dev/ttyUSB2

default: menu


target/bf.hex: *.asm words/*.asm devices/*.asm target/bf.asm
	$(AVRA) -I $(INCLUDE) --listmac -l target/bf.lst -m target/bf.map target/bf.asm

bf: target/bf.hex target/bf.eep.hex
	$(AVRDUDE) $(USB) -p atmega169 -e -U flash:w:target/bf.hex:i -U eeprom:w:target/bf.eep.hex:i

bf.back:
	$(AVRDUDE) $(USB) -p atmega169  -U flash:r:target/bf.hex:i -U eeprom:r:target/bf.eep.hex:i

target/p16.hex: *.asm words/*.asm devices/*.asm target/p16.asm
	$(AVRA) -I $(INCLUDE) --listmac -l target/p16.lst -m target/p16.map target/p16.asm

p16: target/p16.hex target/p16.eep.hex
	$(AVRDUDE) $(PP) -p atmega32 -e -U flash:w:target/p16.hex:i -U eeprom:w:target/p16.eep.hex:i

p16.back:
	$(AVRDUDE) $(PP) -p atmega32  -U flash:r:target/p16.hex:i -U eeprom:r:target/p16.eep.hex:i

target/ct-bot.hex: *.asm words/*.asm devices/*.asm target/ct-bot.asm
	$(AVRA) -I $(INCLUDE) --listmac -l target/ct-bot.lst -m target/ct-bot.map target/ct-bot.asm

ct-bot: target/ct-bot.hex target/ct-bot.eep.hex
	$(AVRDUDE) -c avr911 -p atmega32 -P /dev/ttyUSB0 -e -U flash:w:target/ct-bot.hex:i -U eeprom:w:target/ct-bot.eep.hex:i

target/p8.hex: *.asm words/*.asm devices/*.asm target/p8.asm
	$(AVRA) -I $(INCLUDE) --listmac -l target/p8.lst -m target/p8.map target/p8.asm

p8: target/p8.hex target/p8.eep.hex
	$(AVRDUDE) -c stk200 -p atmega32 -P /dev/parport0 -e -U flash:w:target/p8.hex:i -U eeprom:w:target/p8.eep.hex:i

target/asuro.hex: *.asm words/*.asm devices/*.asm target/asuro.asm
	$(AVRA) -I $(INCLUDE) --listmac -l target/asuro.lst -m target/asuro.map target/asuro.asm

asuro: target/asuro.hex target/asuro.eep.hex
	$(AVRDUDE) $(USB) -p atmega8 -e -U flash:w:target/asuro.hex:i -U eeprom:w:target/asuro.eep.hex:i

clean:
	rm -f target/p16.hex target/p16.eep.hex target/p16.lst target/p16.map target/p16.cof target/p16.obj
	rm -f target/p8.hex  target/p8.eep.hex  target/p8.lst target/p8.map target/p8.cof target/p8.obj
	rm -f target/ct-bot.hex target/ct-bot.eep.hex target/ct-bot.lst target/ct-bot.map target/ct-bot.cof target/ct-bot.obj
	rm -f target/bf.hex  target/bf.eep.hex target/bf.lst target/bf.map target/bf.cof target/bf.obj
	rm -f target/asuro.hex  target/asuro.eep.hex target/asuro.lst target/asuro.map target/asuro.cof target/asuro.obj

bf.hex: target/bf.hex
p16.hex: target/p16.hex
p8.hex: target/p8.hex
asuro.hex: target/asuro.hex
ct-bot.hex: target/ct-bot.hex

menu:
	@echo usage
	@echo make bf.back -- AVR Butterfly backup
	@echo make bf      -- AVR Butterfly upload restore or rebuild if source has changed
	@echo make bf.hex  -- AVR Butterfly without upload
	@echo make bf.back -- Evaluation Board atmega32 at 16 MHz backup
	@echo make p16     -- Evaluation Board atmega32 at 16 MHz upload restore or rebuild if source has changed
	@echo make p16.hex -- Evaluation Board atmega32 at 16 MHz without upload
	@echo make p8      -- Evaluation Board atmega8 at 8 MHz with upload
	@echo make p8.hex  -- Evaluation Board atmega8 at 8 MHz without upload
	@echo make asuro      -- AREXX asuro controller in programmer
	@echo make asuro.hex  -- AVR asuro
	@echo make ct-bot     -- ct-bot with upload
	@echo make ct-bot.hex -- ct-bot without upload

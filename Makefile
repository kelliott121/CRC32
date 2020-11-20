CFLAGS = -c -Wall -gdwarf-2 -Os -funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums -save-temps

all: libCRC32Switch.a libCRC32Power.a

libCRC32Switch.a: crc32_switch.o
	avr-ar rcs libCRC32Switch.a crc32_switch.o

crc32_switch.o: src/CRC32.h src/CRC32.c
	avr-gcc $(CFLAGS) -DF_CPU=8000000UL -mmcu=attiny45 src/CRC32.c -o crc32_switch.o

libCRC32Power.a: crc32_power.o
	avr-ar rcs libCRC32Power.a crc32_power.o

crc32_power.o: src/CRC32.h src/CRC32.c
	avr-gcc $(CFLAGS) -DF_CPU=16x000000UL -mmcu=atmega1284p src/CRC32.c -o crc32_power.o

clean:
	-rm -rf *.a *.o *.elf *.hex *.eep *.lss *.map *.i *.s
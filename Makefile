

all:
	avr-gcc -g -Os -mmcu=atmega2560 -c src/main.c
	avr-gcc -g -mmcu=atmega2560 -o main.elf main.o
	avr-objcopy -j .text -j .data -O ihex main.elf main.hex
	
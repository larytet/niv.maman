

all:
	avr-gcc -g -Os -mmcu=atmega32 -c src/main.c
	avr-gcc -g -mmcu=atmega32 -o main.elf src/main.o
	avr-objcopy -j .text -j .data -O ihex main.elf main.hex
	
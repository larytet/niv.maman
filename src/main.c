#ifndef F_CPU
#define F_CPU 16000000UL // or whatever may be your frequency
#endif
 
#include <avr/io.h>
#include <util/delay.h>                // for _delay_ms()
 
int main(void)
{
    DDRF = 0x0F;                       // initialize port F
    while(1)
    {
        // LED on
        PORTF = 0b00001111;
        _delay_ms(500);
 
        //LED off
        PORTF = 0b00000000;
        _delay_ms(500);
    }
}

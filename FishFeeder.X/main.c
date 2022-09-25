
#include "common.h"
#include <stdio.h>
#include <string.h>
#include "application/application.h"
#include "Servo/servo.h"
#include "Servo/atmega4808_pwm.h"
/*
    Main application
 * 
 
*/

#define delay 5
int main(void)
{
    /* Initializes MCU, drivers and middleware */
    SYSTEM_Initialize();
    sei();
    
    App_HWInit();
    App_SWInit();
    while (1){
        //Handle incomming command
        //App_Run();
        
        IO_PA2_SetHigh();
        IO_PA3_SetLow();
        IO_PD6_SetLow();
        IO_PD4_SetLow();
        DELAY_milliseconds(delay);
        
        IO_PA2_SetLow();
        IO_PA3_SetHigh();
        IO_PD6_SetLow();
        IO_PD4_SetLow();
        DELAY_milliseconds(delay);
        
        IO_PA2_SetLow();
        IO_PA3_SetLow();
        IO_PD6_SetHigh();
        IO_PD4_SetLow();
        DELAY_milliseconds(delay);
        
        IO_PA2_SetLow();
        IO_PA3_SetLow();
        IO_PD6_SetLow();
        IO_PD4_SetHigh();
        DELAY_milliseconds(delay);
    }
}

/**
    End of File
*/

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
#define RESET_WDT()     asm("wdr")

int main(void)
{
    /* Initializes MCU, drivers and middleware */
    SYSTEM_Initialize();
    sei();
    
    App_HWInit();
    App_SWInit();
    while (1)
    {
        RESET_WDT();
        //Handle incomming command
        App_Run();
    }
}

/**
    End of File
*/
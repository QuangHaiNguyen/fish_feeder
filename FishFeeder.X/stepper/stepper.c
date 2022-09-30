
/*******************************************************************************
* Filename:         stepper.c
* Author:           Hai Nguyen
* Original Date:    25.09.2022
* Last Update:      25.09.2022
*
* -----------------------------------------------------------------------------
* Company:          Embedded Easy
*                   Address Line 1
*                   Address Line 2
*
* -----------------------------------------------------------------------------
* Contact:          Embedded Easy
*                   hainguyen.ezm@gmail.com
*
* -----------------------------------------------------------------------------
* Copyright Hai Nguyen - All Rights Reserved
* Unauthorized copying of this file, via any medium is strictly prohibited
* Proprietary and confidential
* Written by Hai Nguyen 25.09.2022
*
*******************************************************************************/

/** @file   stepper.c
 *  @author Hai Nguyen
 *  @date   25.09.2022
 *  @brief  This is the source for a module
 *  
 *  @details
 * 
 */

/******************************************************************************
* Includes
*******************************************************************************/
#include "stepper.h"

#include "../common.h"
#include <stdio.h>
#include <string.h>

/*the rest of include go here*/

/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/
#define DELAY_BETWEEN_STEP_MAX      16
#define DELAY_BETWEEN_STEP_MIN      1

#define DELAY               1
#define NUM_OF_HALF_STEP    8
#define ONE_REVOLUTION      4096
#define HIGH                1
#define LOW                 0
#define COIL_1              0
#define COIL_2              1
#define COIL_3              2
#define COIL_4              3
#define NUM_OF_COIL         4
#define CONFIG_HALF_STEP    0

#define SET_COIL_1(x)   {if (x == 1){IO_PA2_SetHigh();}else{IO_PA2_SetLow();}}
#define SET_COIL_2(x)   {if (x == 1){IO_PA3_SetHigh();}else{IO_PA3_SetLow();}}
#define SET_COIL_3(x)   {if (x == 1){IO_PD6_SetHigh();}else{IO_PD6_SetLow();}}
#define SET_COIL_4(x)   {if (x == 1){IO_PD4_SetHigh();}else{IO_PD4_SetLow();}}
#define SET_COILS_OFF() {IO_PA2_SetLow(); IO_PA3_SetLow(); \
                            IO_PD6_SetLow(); IO_PD4_SetLow();}
/******************************************************************************
* Module Typedefs
*******************************************************************************/
/* None */

/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
static uint8_t StepperSecquece[NUM_OF_HALF_STEP][NUM_OF_COIL] = 
{
    {HIGH,  LOW,    LOW,    LOW },
    {HIGH,  HIGH,   LOW,    LOW },
    {LOW,   HIGH,   LOW,    LOW },
    {LOW,   HIGH,   HIGH,   LOW },
    {LOW,   LOW,    HIGH,   LOW },
    {LOW,   LOW,    HIGH,   HIGH },
    {LOW,   LOW,    LOW,    HIGH },
    {HIGH,  LOW,    LOW,    HIGH },
};

static uint8_t stepper_position = 0;
/******************************************************************************
* Function Definitions
*******************************************************************************/
static void Stepper_MoveOneStepBlocking(void);

/******************************************************************************
* External functions
*******************************************************************************/
void Stepper_Initialization(void)
{
    stepper_position = 0;
}

void Stepper_MoveStepsBlocking(uint32_t num_of_step, uint32_t delay_between_two_step_ms)
{
    stepper_position = 0;
    
    if(delay_between_two_step_ms > DELAY_BETWEEN_STEP_MAX)
    {
        delay_between_two_step_ms = DELAY_BETWEEN_STEP_MAX;
    }
    else if (delay_between_two_step_ms < DELAY_BETWEEN_STEP_MIN)
    {
        delay_between_two_step_ms = DELAY_BETWEEN_STEP_MIN;
    }
    else
    {
        /* do nothing */
    }
    
    for(uint32_t i = 0; i < num_of_step; i++)
    {
        Stepper_MoveOneStepBlocking();
        DELAY_milliseconds(delay_between_two_step_ms);
    }
    
    SET_COILS_OFF();
}

void Stepper_RunOneRevolutionBlocking(uint32_t delay_between_two_step_ms)
{
    Stepper_MoveStepsBlocking(ONE_REVOLUTION, delay_between_two_step_ms);
}

/******************************************************************************
* Internal functions
*******************************************************************************/


static void Stepper_MoveOneStepBlocking(void)
{
    for(uint32_t i = 0; i < NUM_OF_COIL; i++)
    {
        switch(i)
        {
        case COIL_1:
            SET_COIL_1(StepperSecquece[stepper_position][i]);
            break;
        case COIL_2:
            SET_COIL_2(StepperSecquece[stepper_position][i]);
            break;
        case COIL_3:
            SET_COIL_3(StepperSecquece[stepper_position][i]);
            break;
        case COIL_4:
            SET_COIL_4(StepperSecquece[stepper_position][i]);
            break;
        default:
            break;
        }
    }
    
    stepper_position = (stepper_position + 1) % NUM_OF_HALF_STEP;
}
/* End of file*/


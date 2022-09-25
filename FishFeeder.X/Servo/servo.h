/*******************************************************************************
* Title                 :   atmega4808_pwm Component
* Filename              :   atmega4808_pwm.h
* Author                :   Quang Hai Nguyen
* Origin Date           :   20.04.2020
* Version               :   0.0.99
*
*******************************************************************************/

/*************** INTERFACE CHANGE LIST *****************************************
*
*  Date         Version     Author              Description 
*  20.04.2020   1.0.0       Quang Hai Nguyen    Interface Created.
*
*******************************************************************************/
/** @file   atmega4808_pwm.h
 *  @brief  This file provides the APIs to interface with TCA timer,
 *          which generate PWM signal for the WS2812 LED strip 
 * 
 *  The Implementation of the TCA timer to generate the the single slope PWM,
 *  which create the pulses to control the WS2812 LED strip.  
 */
#ifndef SERVO_H
#define	SERVO_H

/*******************************************************************************
* Includes
*******************************************************************************/
#include "../common.h"   

/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/
//Define length for the PWM duty cycle and period

/******************************************************************************
* Module Typedefs
*******************************************************************************/
//None

/******************************************************************************
* Module Variable Definitions
*******************************************************************************/

/******************************************************************************
* Function Prototypes
*******************************************************************************/
void ServoInit(void);
void ServoSetPosition(uint16_t u16DestinationDegree);
void ServoStop(void);
void ServoStart(void);


#endif	/* SERVO_H */
/*** End of File **************************************************************/


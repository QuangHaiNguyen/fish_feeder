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
#ifndef ATMEGA4808_PWM_H
#define	ATMEGA4808_PWM_H

/*******************************************************************************
* Includes
*******************************************************************************/
#include "../common.h"   

/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/
//Define length for the PWM duty cycle and period
#define TICK_PER_ONE_NS         400
#define MAX_TICK                65535
#define MAX_PERIOD_NS           (MAX_TICK * TICK_PER_ONE_NS)
#define NANOSEC_TO_TICK(x)      x/TICK_PER_ONE_NS
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
void ATMEGA4808_PWM_Init(void);
void ATMEGA4808_PWM_Start(void);
void ATMEGA4808_PWM_Stop(void);
void ATMEGA4808_PWM_SetDutyCycle(uint32_t u16PeriodInNanoSec);
void ATMEGA4808_PWM_SetPeriod(uint32_t u16PeriodInNanoSec);
void ATMEGA4808_PWM_DeInit(void);
void ATMEGA4808_PWM_GetRGBDataInfo(uint16_t **ptr_to_buff, uint16_t buff_size);

#endif	/* ATMEGA4808_PWM_H */
/*** End of File **************************************************************/


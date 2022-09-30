
/*******************************************************************************
* Filename:         stepper.h
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

/** @file   stepper.h
 *  @author Hai Nguyen
 *  @date   25.09.2022
 *  @brief  This is the source for a module
 *  
 *  @details
 * 
 */

#ifndef _STEPPER_H
#define _STEPPER_H

/*******************************************************************************
* Includes
*******************************************************************************/
#include <stdint.h>

/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/
/* None */

/******************************************************************************
* Module Typedefs
*******************************************************************************/
/* None */

/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
/* None */

/******************************************************************************
* Function Prototypes
*******************************************************************************/

/******************************************************************************
* Function : Stepper_Initialization
*//** 
* @Description: Initialize the stepper driver
*
* 
* @param    None
* @return   None
*
*******************************************************************************/
void Stepper_Initialization(void);


/******************************************************************************
* Function : Stepper_RunOneRevolutionBlocking
*//** 
* @Description: Turn the stepper one revolution
*
* 
* @param    delay_between_two_step_ms: (IN) delay between two step in milli sec
* @return   None
*
*******************************************************************************/
void Stepper_RunOneRevolutionBlocking(uint32_t delay_between_two_step_ms);


/******************************************************************************
* Function : Stepper_MoveStepsBlocking
*//** 
* @Description: Move the stepper a defined steps
*
* 
* @param    num_of_step: (IN) number of step to move
* @param    delay_between_two_step_ms: (IN) delay between two step in milli sec
* @return   None
*
*******************************************************************************/
void Stepper_MoveStepsBlocking(uint32_t num_of_step, uint32_t delay_between_two_step_ms);

#endif /* _STEPPER_H */

/* End of file */


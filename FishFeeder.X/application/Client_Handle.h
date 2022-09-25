/*******************************************************************************
* Title                 :   component to handle the request from the client 
* Filename              :   Client_Handle.h
* Author                :   Quang Hai Nguyen
* Origin Date           :   19.07.2020
* Version               :   0.0.99
*
*******************************************************************************/

/*************** INTERFACE CHANGE LIST *****************************************
*
*  Date         Version     Author              Description 
*  19.07.2020   1.0.0       Quang Hai Nguyen    Interface Created.
*
*******************************************************************************/
/** @file   Client_Handle.h
 *  @brief  This component serves the request from the client
 *          What it does is check the crc of the request, type of the request 
 *          and response accordingly 
 *  
 */
#ifndef CLIENT_HANDLE_H
#define	CLIENT_HANDLE_H

#ifdef	__cplusplus
extern "C" {
#endif

/*******************************************************************************
* Includes
*******************************************************************************/
//None

/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/
//None

/******************************************************************************
* Module Typedefs
*******************************************************************************/
//None

/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
//None

/******************************************************************************
* Function Prototypes
*******************************************************************************/
    
void Client_Handle_ProcessCommand(uint8_t *data_in_ptr, uint8_t *data_out_ptr);


#ifdef	__cplusplus
}
#endif

#endif	/* CLIENT_HANDLE_H */
/*** End of File **************************************************************/

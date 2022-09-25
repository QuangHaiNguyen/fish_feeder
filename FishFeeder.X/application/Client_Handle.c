/*******************************************************************************
* Title                 :   Component to handle the request from the client  
* Filename              :   Client_Handle.c
* Author                :   Quang Hai Nguyen
* Origin Date           :   19.07.2020
* Version               :   0.0.99
*
*******************************************************************************/

/*************** SOURCE REVISION LOG *****************************************
*
*  Date         Version     Author              Description 
*  19.07.2020   0.0.99       Quang Hai Nguyen    Initial Release.
*
*******************************************************************************/
/** @file  network_winc1500.c
 *  @brief This is the source file for winc1500 network component
 */

/******************************************************************************
* Includes
*******************************************************************************/
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "Client_Handle.h"
#include "../common.h"
#include "../utility/debug.h"
#include "../Servo/atmega4808_pwm.h"

/** \brief building the OK response message*/
#define SEND_OK()       w_ptr[0] = 0xA7; w_ptr[1] = 0x02; w_ptr[2] = 0x4F; w_ptr[3] = 0x4B;     \
                        w_ptr[4] = w_ptr[0] + w_ptr[1] + w_ptr[2] + w_ptr[3];                   

/** \brief building the ERROR response message*/
#define SEND_ERR(x)     w_ptr[0] = 0xA8; w_ptr[1] = 0x01; w_ptr[2] = x; \
                        w_ptr[3] = w_ptr[0] + w_ptr[1] + w_ptr[2];

/** \brief Storing the pointer to the write buffer of the TCP server component*/
uint8_t *w_ptr;

/**
 *
 * @brief   Error Code
 * 
**/
typedef enum{
    CRC_ERR = 0xB0,
    /**< Wrong crc */
    FEEDER_ERR,
    /**< error in initialized WS2812 module */
}Reply;


/**
 *
 * @brief   Opt code. It indicates what kind of message or request from the client
 * 
**/
typedef enum{
    MSG_HELLO = 0xa4,
    /**< hello msg */
    MSG_FEED,
    /**< Start feeding msg */
    MSG_HEARTBEAT,
    END_OF_MSG,
}Opt_Code;

/**
 *
 * @brief Structure to parse the request from client
 * 
**/
typedef struct{
    Opt_Code opt_code;
    /**< opt code */
    void (*function)(uint8_t *msg);
    /**< pointer to function handling the request with the coresponding opt code */
}MSG_FROM_CLIENT;



bool VerifyCRC(uint8_t *msg);
void MSG_HELLO_Handle   (uint8_t *msg);
void MSG_FEED_Handle    (uint8_t * pu8Msg);
void MSG_HEARTBEAT_Handle(uint8_t * pu8Msg);

const MSG_FROM_CLIENT msg_list[] = {
    {   MSG_HELLO,          MSG_HELLO_Handle},
    {   MSG_FEED,           MSG_FEED_Handle},
    {   MSG_HEARTBEAT,      MSG_HEARTBEAT_Handle},
    {   END_OF_MSG,         NULL},
};

/******************************************************************************
* Function : Client_Handle_ProcessCommand
*//** 
* \b Description:
*
* This function processes the request from the client, response accordingly, and
* builds the response message 
*
* PRE-CONDITION: Underlying hardware/software must be initialized
*
* POST-CONDITION: None
* 
* @param    *data_in_ptr: pointer to the buffer where the request is stored
* @param    *data_out_ptr: pointer to the buffer where the response is stored  
* @return   None
*
* \b Example Example:
* @code
* Client_Handle_ProcessCommand();
* @endcode
*
* @see 
*
* <br><b> - HISTORY OF CHANGES - </b>
*  
* <table align="left" style="width:800px">
* <tr><td> Date       </td><td> Software Version </td><td> Initials         </td><td> Description </td></tr>
* <tr><td> 17.07.2020 </td><td> 0.0.99           </td><td> Quang Hai Nguyen </td><td> Interface Created </td></tr>
* </table><br><br>
* <hr>
*
*******************************************************************************/
void Client_Handle_ProcessCommand(uint8_t *data_in_ptr, uint8_t *data_out_ptr)
{
    w_ptr = data_out_ptr;
    if(VerifyCRC(data_in_ptr) == false){
        SEND_ERR(CRC_ERR);
        return;
    }
        
    for (uint8_t i = 0; i != END_OF_MSG; i++){
        if(msg_list[i].opt_code == data_in_ptr[0]){
            msg_list[i].function(data_in_ptr);
            return;
        }
    }
}

bool VerifyCRC(uint8_t *msg)
{
    uint32_t sum = 0;
    PRINT_DEBUG("data length: %02x\n", msg[1]);
    PRINT_DEBUG("CRC: %02x\n", msg[msg[1] + 2]);
    for (uint16_t i = 0; i < msg[1] + 2; i++)
    {
        sum = sum + msg[i];
        USART2_Write(msg[i]);
    }
    USART2_Write(msg[msg[1] + 2]);
    if((sum & 0xFF) == msg[msg[1] + 2])
    {
        PRINT_DEBUG("%s", "CRC correct!\n");
        return true;
    }
    else{
        PRINT_DEBUG("%s", "CRC wrong!\n");
        return false;
    }
}


void MSG_HELLO_Handle(uint8_t *msg)
{
    PRINT_DEBUG("%s", "Got hello msg\n");
    if(msg[2] != 0x41)
    {
        SEND_ERR(0x00);
        return;
    }
        
    if(msg[3] != 0x54)
    {
        SEND_ERR(0x00);
        return;
    }
    
    memset(w_ptr, 0, 32);
    SEND_OK();
}

void MSG_FEED_Handle    (uint8_t * pu8Msg)
{
    bool bSuccess = true;
    if(pu8Msg[2] != 0xFF)
    {
        bSuccess = false;
        SEND_ERR(0x00);
    }
    
    if(bSuccess)
    {
        ATMEGA4808_PWM_SetDutyCycle(1000000);
        ATMEGA4808_PWM_Start();
        DELAY_milliseconds(1000);
        ATMEGA4808_PWM_SetDutyCycle(2200000);
        ATMEGA4808_PWM_Start();
        DELAY_milliseconds(1000);
        ATMEGA4808_PWM_SetDutyCycle(1000000);
        ATMEGA4808_PWM_Start();
        DELAY_milliseconds(1000);
        memset(w_ptr, 0, 32);
        SEND_OK();
    }
}

void MSG_HEARTBEAT_Handle(uint8_t * pu8Msg)
{
    if(pu8Msg[2] != 0xFF)
    {
        SEND_ERR(0x00);
    }
    else
    {
        SEND_OK();
    }
}
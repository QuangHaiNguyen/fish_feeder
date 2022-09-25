#include <stdio.h>
#include <string.h>
#include <util/delay.h>
#include "application.h"
#include "Client_Handle.h"
#include "../cli/cli.h"
#include "../scheduler/atmega4808_rtc.h"
#include "../network/network.h"
#include "../common.h"
#include "../utility/debug.h"
#include "../Servo/atmega4808_pwm.h"

typedef struct{
    char const *cmd_name;
    char const *cmd_description;
}Cmd_description;

typedef enum{
    INIT_NETWORK = 0,
    INIT_TCP_SERVER,
    PROVISION,
    SERVER,
    CLIENT_PROVISIONING,
    DISCONNET,
    IDLE,
    PROCESSING,        
    ERROR,
}State;

static char ch;
static uint8_t sw0_debounce = 0;
static uint8_t sw1_debounce = 0;
uint32_t last_tick = 0;

State state = INIT_NETWORK;
static CLI_Status cli_stt;

static void UART2_RXCallback(void);
static void SW1_InterruptHandler(void);
static void SW0_InterruptHandler(void);
void BlinkBlueLED(void);

void PrintInfo(void);
void PrintState(void);
void PrintIP(void);
void PrintMenu(void);

void Network_Callback(void);

NetworkIF_t * interface;
Network_TCPServer * server;
uint8_t *r_ptr;
uint8_t *w_ptr;
uint32_t ip;

command_t cmd_table[4] = {
        {"info", PrintInfo},
		{"state", PrintState},
        {"ip", PrintIP},
        {"menu", PrintMenu},
};

Cmd_description cmd_description_table[4] = {
    {"info", "Print application info"},
    {"state", "Print state of the application"},
    {"ip", "Print the IP of the application"},
    {"menu", "Print menu"},
};

void App_HWInit(void)
{
    USART2_Enable();
    USART2_SetISRCb(UART2_RXCallback, USART2_RX_CB);
    PORTF_SW0_SetInterruptHandler(SW0_InterruptHandler);
    PORTF_SW1_SetInterruptHandler(SW1_InterruptHandler);
    PRINT_INFO("%s", "********************************************\n");
    PRINT_INFO("%s", "System initialized\n");
    
    //Turn off the LED
    RED_LED_SetLow();
    GREEN_LED_SetLow();
    BLUE_LED_SetLow();
    YELLOW_LED_SetLow();
    
    ATMEGA4808_PWM_Init();
    
    //Turn on system tick
    ATMEGA4808_RTC_Init();
    ATMEGA4808_RTC_Start();
}

void App_SWInit(void)
{
    CLI_Init(cmd_table, 4);
    CLI_GetVersion(&version, &sub_version, &ssub_version);
    PRINT_INFO("CLI version %02d.%02d.%02d\n", version, sub_version,ssub_version);
    PRINT_INFO("%s", "Type menu to print the list of command\r\n");
}

void App_Run(void)
{
    //Handle incomming command
    cli_stt = CLI_ProccessCommand(); 
    if(CLI_CMD_NOTFOUND == cli_stt){
        PRINT_INFO("%s", "command not found\r\n");
        PRINT_INFO("%s", "Type menu to print the list of command\r\n");
    }
    
    switch(state){
        case INIT_NETWORK: {              
            interface = (NetworkIF_t*)malloc(sizeof(NetworkIF_t));
            if(interface == NULL){
                PRINT_ERROR("%s", "cannot allocate memory for wifi interface\n");
                state = ERROR;
            }
            NetworkIF_Init(interface);
            interface->Network_Init();
            interface->Network_ClientModeStart();
            PRINT_INFO("%s", "Network is initialized\n");
            BLUE_LED_SetLow();
            state = INIT_TCP_SERVER;
            break;
        }
        case INIT_TCP_SERVER:{
            server = (Network_TCPServer*)malloc(sizeof(Network_TCPServerInit));
            if(server == NULL){
                PRINT_ERROR("%s", "cannot allocate memory for tcp server\n");
                state = ERROR;
            }
            Network_TCPServerInit(server);
            server->TCPServer_Open(13000, &r_ptr, &w_ptr,  32, &ip);
            server->TCPServer_SetCallback(Network_Callback);
            PRINT_INFO("%s", "TCP server is initialized\n");
            GREEN_LED_SetLow();
            state = SERVER;
            break;
        }
        case PROVISION:{
            interface->Network_ClientModeStop();
            interface->Network_APMode();
            state = CLIENT_PROVISIONING;
            PRINT_INFO("%s", "Start Provision\n");
            break;
        }
        case SERVER:{
            //handle callback
            interface->Network_EventHandle();
            BlinkBlueLED();
            break;
        }
        case CLIENT_PROVISIONING:{
            //handle callback
            interface->Network_EventHandle();
            BlinkBlueLED();
            break;
        }
        case DISCONNET:
            //server->TCPServer_Close();
            WINC1500_TCPServerClose();
            server->TCPServer_SetCallback(NULL);
            Network_TCPServerDeInit(server);
            free(server);
            interface->Network_ClientModeStop();
            interface->Network_DeInit();
            NetworkIF_DeInit(interface);
            free(interface);
            PRINT_INFO("%s", "Network is deinitialized\n");
            BLUE_LED_SetHigh();
            state = IDLE;
            break;
        case PROCESSING:                
            state = SERVER;
            break;
        case IDLE:
            BlinkBlueLED();
            //idle do nothing
            break;
        case ERROR:{
            break;
        }
    }
}

static void SW1_InterruptHandler(void)
{
    if(++sw1_debounce > 5){
        sw1_debounce = 0;
        if(IDLE == state){
            state = INIT_NETWORK;
        }
        else{
            state = DISCONNET;
        }
    }
}
static void SW0_InterruptHandler(void)
{
    if(++sw0_debounce > 5){
        sw0_debounce = 0;
        state = PROVISION;
    }
}

static void UART2_RXCallback(void)
{
    ch = USART2.RXDATAL;
    USART2.TXDATAL = ch;
    CLI_GetChar(ch);
}


void PrintInfo(void)
{
    PRINT_INFO("%s","RGB Control Application\n");
    PRINT_INFO("%s","Author: Quang Hai Nguyen\n");
    PRINT_INFO("%s","Version: 0.99\n");
}
void PrintState(void)
{
    if(state == SERVER){
        PRINT_INFO("%s","State: TCP server\n");
    }
    else if( state == CLIENT_PROVISIONING){
        PRINT_INFO("%s","State: provisioning\n");
    }
    else if(state == IDLE){
        PRINT_INFO("%s","State: wiff is deactivate\n");
    }
    else{
        PRINT_INFO("%s","State: error\n");
    }
}
void PrintIP(void)
{
    union
    {
        uint32_t ip_int;
        uint8_t ip_byte[4];
    }ip;
    interface->Network_GetIP(&ip.ip_int);
    PRINT_DEBUG("IP: %d:%d:%d:%d\n",
            ip.ip_byte[0],
            ip.ip_byte[1],
            ip.ip_byte[2],
            ip.ip_byte[3]);
}

void PrintMenu (void)
{
    for(uint8_t i = 0; i < 4; i++){
        PRINT_INFO("%s: %s\n", cmd_description_table[i].cmd_name, cmd_description_table[i].cmd_description);
    }
}

void BlinkBlueLED(void)
{
    if(state == SERVER){
        if(ATMEGA4808_RTC_GetTicks() - last_tick < 200){
        
        BLUE_LED_SetLow();
        }
        else if(ATMEGA4808_RTC_GetTicks() - last_tick > 1000){
            last_tick = ATMEGA4808_RTC_GetTicks();
        }
        else{
            BLUE_LED_SetHigh();
        }
    }
    if( state == CLIENT_PROVISIONING){
        BLUE_LED_SetLow();
    }
    if(state == IDLE){
        BLUE_LED_SetHigh();
    }
    
}

void Network_Callback(void)
{
    YELLOW_LED_Toggle();
    Client_Handle_ProcessCommand(r_ptr, w_ptr);
    WINC1500_TCPServerWrite(5);
}
#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/FishFeeder.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/FishFeeder.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=application/application.c application/Client_Handle.c cli/cli.c led/led.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/src/pin_manager.c mcc_generated_files/src/cpuint.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/spi0.c mcc_generated_files/src/tca0.c mcc_generated_files/src/usart2.c mcc_generated_files/src/rtc.c mcc_generated_files/winc/driver/winc_spi.c mcc_generated_files/winc/driver/winc_adapter.c mcc_generated_files/winc/driver/winc_hif.c mcc_generated_files/winc/driver/winc_asic.c mcc_generated_files/winc/driver/winc_drv.c mcc_generated_files/winc/m2m/m2m_ssl.c mcc_generated_files/winc/m2m/m2m_wifi.c mcc_generated_files/winc/m2m/m2m_periph.c mcc_generated_files/winc/m2m/m2m_ota.c mcc_generated_files/winc/m2m/m2m_fwinfo.c mcc_generated_files/winc/m2m/m2m_crypto.c mcc_generated_files/winc/socket/socket.c mcc_generated_files/winc/spi_flash/flexible_flash.c mcc_generated_files/winc/spi_flash/spi_flash.c mcc_generated_files/device_config.c mcc_generated_files/mcc.c mcc_generated_files/delay.c network/network.c network/network_winc1500.c network/winc1500_tcp_server.c scheduler/atmega4808_rtc.c scheduler/scheduler.c scheduler/scheduler_conf.c Servo/atmega4808_pwm.c Servo/servo.c utility/ring_buffer.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/application/application.o ${OBJECTDIR}/application/Client_Handle.o ${OBJECTDIR}/cli/cli.o ${OBJECTDIR}/led/led.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/spi0.o ${OBJECTDIR}/mcc_generated_files/src/tca0.o ${OBJECTDIR}/mcc_generated_files/src/usart2.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/delay.o ${OBJECTDIR}/network/network.o ${OBJECTDIR}/network/network_winc1500.o ${OBJECTDIR}/network/winc1500_tcp_server.o ${OBJECTDIR}/scheduler/atmega4808_rtc.o ${OBJECTDIR}/scheduler/scheduler.o ${OBJECTDIR}/scheduler/scheduler_conf.o ${OBJECTDIR}/Servo/atmega4808_pwm.o ${OBJECTDIR}/Servo/servo.o ${OBJECTDIR}/utility/ring_buffer.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/application/application.o.d ${OBJECTDIR}/application/Client_Handle.o.d ${OBJECTDIR}/cli/cli.o.d ${OBJECTDIR}/led/led.o.d ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d ${OBJECTDIR}/mcc_generated_files/src/spi0.o.d ${OBJECTDIR}/mcc_generated_files/src/tca0.o.d ${OBJECTDIR}/mcc_generated_files/src/usart2.o.d ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d ${OBJECTDIR}/mcc_generated_files/device_config.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/delay.o.d ${OBJECTDIR}/network/network.o.d ${OBJECTDIR}/network/network_winc1500.o.d ${OBJECTDIR}/network/winc1500_tcp_server.o.d ${OBJECTDIR}/scheduler/atmega4808_rtc.o.d ${OBJECTDIR}/scheduler/scheduler.o.d ${OBJECTDIR}/scheduler/scheduler_conf.o.d ${OBJECTDIR}/Servo/atmega4808_pwm.o.d ${OBJECTDIR}/Servo/servo.o.d ${OBJECTDIR}/utility/ring_buffer.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/application/application.o ${OBJECTDIR}/application/Client_Handle.o ${OBJECTDIR}/cli/cli.o ${OBJECTDIR}/led/led.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/src/spi0.o ${OBJECTDIR}/mcc_generated_files/src/tca0.o ${OBJECTDIR}/mcc_generated_files/src/usart2.o ${OBJECTDIR}/mcc_generated_files/src/rtc.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o ${OBJECTDIR}/mcc_generated_files/device_config.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/delay.o ${OBJECTDIR}/network/network.o ${OBJECTDIR}/network/network_winc1500.o ${OBJECTDIR}/network/winc1500_tcp_server.o ${OBJECTDIR}/scheduler/atmega4808_rtc.o ${OBJECTDIR}/scheduler/scheduler.o ${OBJECTDIR}/scheduler/scheduler_conf.o ${OBJECTDIR}/Servo/atmega4808_pwm.o ${OBJECTDIR}/Servo/servo.o ${OBJECTDIR}/utility/ring_buffer.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=application/application.c application/Client_Handle.c cli/cli.c led/led.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/src/pin_manager.c mcc_generated_files/src/cpuint.c mcc_generated_files/src/protected_io.S mcc_generated_files/src/spi0.c mcc_generated_files/src/tca0.c mcc_generated_files/src/usart2.c mcc_generated_files/src/rtc.c mcc_generated_files/winc/driver/winc_spi.c mcc_generated_files/winc/driver/winc_adapter.c mcc_generated_files/winc/driver/winc_hif.c mcc_generated_files/winc/driver/winc_asic.c mcc_generated_files/winc/driver/winc_drv.c mcc_generated_files/winc/m2m/m2m_ssl.c mcc_generated_files/winc/m2m/m2m_wifi.c mcc_generated_files/winc/m2m/m2m_periph.c mcc_generated_files/winc/m2m/m2m_ota.c mcc_generated_files/winc/m2m/m2m_fwinfo.c mcc_generated_files/winc/m2m/m2m_crypto.c mcc_generated_files/winc/socket/socket.c mcc_generated_files/winc/spi_flash/flexible_flash.c mcc_generated_files/winc/spi_flash/spi_flash.c mcc_generated_files/device_config.c mcc_generated_files/mcc.c mcc_generated_files/delay.c network/network.c network/network_winc1500.c network/winc1500_tcp_server.c scheduler/atmega4808_rtc.c scheduler/scheduler.c scheduler/scheduler_conf.c Servo/atmega4808_pwm.c Servo/servo.c utility/ring_buffer.c main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/FishFeeder.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega4808
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/application/application.o: application/application.c  .generated_files/flags/default/c5c03c154c06dbc09f30efae9b5734a1ca1db16 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/application" 
	@${RM} ${OBJECTDIR}/application/application.o.d 
	@${RM} ${OBJECTDIR}/application/application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/application/application.o.d" -MT "${OBJECTDIR}/application/application.o.d" -MT ${OBJECTDIR}/application/application.o -o ${OBJECTDIR}/application/application.o application/application.c 
	
${OBJECTDIR}/application/Client_Handle.o: application/Client_Handle.c  .generated_files/flags/default/ef3efb7babb73df2f2c429aab8179418e2abd44d .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/application" 
	@${RM} ${OBJECTDIR}/application/Client_Handle.o.d 
	@${RM} ${OBJECTDIR}/application/Client_Handle.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/application/Client_Handle.o.d" -MT "${OBJECTDIR}/application/Client_Handle.o.d" -MT ${OBJECTDIR}/application/Client_Handle.o -o ${OBJECTDIR}/application/Client_Handle.o application/Client_Handle.c 
	
${OBJECTDIR}/cli/cli.o: cli/cli.c  .generated_files/flags/default/3a051954b574004aa1db07b3702ef90fcd96c81c .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/cli" 
	@${RM} ${OBJECTDIR}/cli/cli.o.d 
	@${RM} ${OBJECTDIR}/cli/cli.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/cli/cli.o.d" -MT "${OBJECTDIR}/cli/cli.o.d" -MT ${OBJECTDIR}/cli/cli.o -o ${OBJECTDIR}/cli/cli.o cli/cli.c 
	
${OBJECTDIR}/led/led.o: led/led.c  .generated_files/flags/default/a7ec6589537de92eea2f04feecb128273e132300 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/led" 
	@${RM} ${OBJECTDIR}/led/led.o.d 
	@${RM} ${OBJECTDIR}/led/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/led/led.o.d" -MT "${OBJECTDIR}/led/led.o.d" -MT ${OBJECTDIR}/led/led.o -o ${OBJECTDIR}/led/led.o led/led.c 
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/4be07875165b8adee55848af17320246d2d60c .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o mcc_generated_files/drivers/spi_master.c 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/default/c327b3d56e1dda03b9f67187a163795738bbf9cb .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/default/29e3963b3ad2506df90c9c65057fe17be2b9df4c .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c 
	
${OBJECTDIR}/mcc_generated_files/src/spi0.o: mcc_generated_files/src/spi0.c  .generated_files/flags/default/94e67bd78e7749f466c5fb62b0f5ec3bf806cbbe .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/spi0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/spi0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/spi0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/spi0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/spi0.o -o ${OBJECTDIR}/mcc_generated_files/src/spi0.o mcc_generated_files/src/spi0.c 
	
${OBJECTDIR}/mcc_generated_files/src/tca0.o: mcc_generated_files/src/tca0.c  .generated_files/flags/default/14a4205d7704533fc483d0e5465d6ebd29be5b3b .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/tca0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/tca0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/tca0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/tca0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/tca0.o -o ${OBJECTDIR}/mcc_generated_files/src/tca0.o mcc_generated_files/src/tca0.c 
	
${OBJECTDIR}/mcc_generated_files/src/usart2.o: mcc_generated_files/src/usart2.c  .generated_files/flags/default/3ec57c10b81e1a084c57d31c6b47207013bbb126 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart2.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart2.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart2.o -o ${OBJECTDIR}/mcc_generated_files/src/usart2.o mcc_generated_files/src/usart2.c 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/default/128df00c84c3821b8220ee90e8cf93154480c8cb .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o: mcc_generated_files/winc/driver/winc_spi.c  .generated_files/flags/default/2b02e0d6660a00f0c40982be067675bbb9e003ac .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o mcc_generated_files/winc/driver/winc_spi.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o: mcc_generated_files/winc/driver/winc_adapter.c  .generated_files/flags/default/8aabce21ea0081412718ad523c8af06f97450bd1 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o mcc_generated_files/winc/driver/winc_adapter.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o: mcc_generated_files/winc/driver/winc_hif.c  .generated_files/flags/default/4dd8791c6edd5b95d9bdef70dc1bc498de00884 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o mcc_generated_files/winc/driver/winc_hif.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o: mcc_generated_files/winc/driver/winc_asic.c  .generated_files/flags/default/892d90f7623853a09258ec1158be61f8290c7aa3 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o mcc_generated_files/winc/driver/winc_asic.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o: mcc_generated_files/winc/driver/winc_drv.c  .generated_files/flags/default/65dc19ee3e70bf7a9c1437f970af5e7ba8e4591b .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o mcc_generated_files/winc/driver/winc_drv.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o: mcc_generated_files/winc/m2m/m2m_ssl.c  .generated_files/flags/default/1e4ddcdbdf0d37bc121673e6083e97e7946a316d .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o mcc_generated_files/winc/m2m/m2m_ssl.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o: mcc_generated_files/winc/m2m/m2m_wifi.c  .generated_files/flags/default/2aa16edf2dc8309ff0f773d943dd05af91ebb23f .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o mcc_generated_files/winc/m2m/m2m_wifi.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o: mcc_generated_files/winc/m2m/m2m_periph.c  .generated_files/flags/default/23c5b45e5b16701137646c67367b3b7496e657bc .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o mcc_generated_files/winc/m2m/m2m_periph.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o: mcc_generated_files/winc/m2m/m2m_ota.c  .generated_files/flags/default/b52c687584182c82fbb4706937e198475359f8b6 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o mcc_generated_files/winc/m2m/m2m_ota.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o: mcc_generated_files/winc/m2m/m2m_fwinfo.c  .generated_files/flags/default/440a3e71f4ec74d62ab5d21bc5692e3e852f18b9 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o mcc_generated_files/winc/m2m/m2m_fwinfo.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o: mcc_generated_files/winc/m2m/m2m_crypto.c  .generated_files/flags/default/a2c0e3801f42561f525cd1e17936f341e889f55e .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o mcc_generated_files/winc/m2m/m2m_crypto.c 
	
${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o: mcc_generated_files/winc/socket/socket.c  .generated_files/flags/default/f02182278f0bcbec0ab3aec65e5d78e8c3668fa6 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/socket" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o -o ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o mcc_generated_files/winc/socket/socket.c 
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o: mcc_generated_files/winc/spi_flash/flexible_flash.c  .generated_files/flags/default/bb3d853f371c8b1bd6ac0acf3f92765bbd48232b .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o mcc_generated_files/winc/spi_flash/flexible_flash.c 
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o: mcc_generated_files/winc/spi_flash/spi_flash.c  .generated_files/flags/default/e879444e7fe6bc3756212909e929ec3c508978d5 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o mcc_generated_files/winc/spi_flash/spi_flash.c 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/default/34255aa2677637dd8855edddec7850399e350d35 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/e2d6c2f07e9069748005ea93e190a9415c0a6239 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c 
	
${OBJECTDIR}/mcc_generated_files/delay.o: mcc_generated_files/delay.c  .generated_files/flags/default/58ca0f53d11548bd55b4d85e13fb5daa865f0b45 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/delay.o.d" -MT "${OBJECTDIR}/mcc_generated_files/delay.o.d" -MT ${OBJECTDIR}/mcc_generated_files/delay.o -o ${OBJECTDIR}/mcc_generated_files/delay.o mcc_generated_files/delay.c 
	
${OBJECTDIR}/network/network.o: network/network.c  .generated_files/flags/default/29cc929bce85dc77c31b85b4387e9058e3f4bf21 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/network" 
	@${RM} ${OBJECTDIR}/network/network.o.d 
	@${RM} ${OBJECTDIR}/network/network.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/network/network.o.d" -MT "${OBJECTDIR}/network/network.o.d" -MT ${OBJECTDIR}/network/network.o -o ${OBJECTDIR}/network/network.o network/network.c 
	
${OBJECTDIR}/network/network_winc1500.o: network/network_winc1500.c  .generated_files/flags/default/4ddcf19b4587088582b662d14fcb5238d3fcd5a9 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/network" 
	@${RM} ${OBJECTDIR}/network/network_winc1500.o.d 
	@${RM} ${OBJECTDIR}/network/network_winc1500.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/network/network_winc1500.o.d" -MT "${OBJECTDIR}/network/network_winc1500.o.d" -MT ${OBJECTDIR}/network/network_winc1500.o -o ${OBJECTDIR}/network/network_winc1500.o network/network_winc1500.c 
	
${OBJECTDIR}/network/winc1500_tcp_server.o: network/winc1500_tcp_server.c  .generated_files/flags/default/114651375122bf64e621e900810e9aa355e798d1 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/network" 
	@${RM} ${OBJECTDIR}/network/winc1500_tcp_server.o.d 
	@${RM} ${OBJECTDIR}/network/winc1500_tcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/network/winc1500_tcp_server.o.d" -MT "${OBJECTDIR}/network/winc1500_tcp_server.o.d" -MT ${OBJECTDIR}/network/winc1500_tcp_server.o -o ${OBJECTDIR}/network/winc1500_tcp_server.o network/winc1500_tcp_server.c 
	
${OBJECTDIR}/scheduler/atmega4808_rtc.o: scheduler/atmega4808_rtc.c  .generated_files/flags/default/911735fdf4f028014f30a9e8f4fa7491a5bde004 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/scheduler" 
	@${RM} ${OBJECTDIR}/scheduler/atmega4808_rtc.o.d 
	@${RM} ${OBJECTDIR}/scheduler/atmega4808_rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/scheduler/atmega4808_rtc.o.d" -MT "${OBJECTDIR}/scheduler/atmega4808_rtc.o.d" -MT ${OBJECTDIR}/scheduler/atmega4808_rtc.o -o ${OBJECTDIR}/scheduler/atmega4808_rtc.o scheduler/atmega4808_rtc.c 
	
${OBJECTDIR}/scheduler/scheduler.o: scheduler/scheduler.c  .generated_files/flags/default/a9491b227154ba8241eb39d24fefb8120a9ded4 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/scheduler" 
	@${RM} ${OBJECTDIR}/scheduler/scheduler.o.d 
	@${RM} ${OBJECTDIR}/scheduler/scheduler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/scheduler/scheduler.o.d" -MT "${OBJECTDIR}/scheduler/scheduler.o.d" -MT ${OBJECTDIR}/scheduler/scheduler.o -o ${OBJECTDIR}/scheduler/scheduler.o scheduler/scheduler.c 
	
${OBJECTDIR}/scheduler/scheduler_conf.o: scheduler/scheduler_conf.c  .generated_files/flags/default/8e62fe452e71b7949178caeda8eabd96e1d6995e .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/scheduler" 
	@${RM} ${OBJECTDIR}/scheduler/scheduler_conf.o.d 
	@${RM} ${OBJECTDIR}/scheduler/scheduler_conf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/scheduler/scheduler_conf.o.d" -MT "${OBJECTDIR}/scheduler/scheduler_conf.o.d" -MT ${OBJECTDIR}/scheduler/scheduler_conf.o -o ${OBJECTDIR}/scheduler/scheduler_conf.o scheduler/scheduler_conf.c 
	
${OBJECTDIR}/Servo/atmega4808_pwm.o: Servo/atmega4808_pwm.c  .generated_files/flags/default/8661d37c8cf9c6c1ffb2aaea235eaa2ebdca0391 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/Servo" 
	@${RM} ${OBJECTDIR}/Servo/atmega4808_pwm.o.d 
	@${RM} ${OBJECTDIR}/Servo/atmega4808_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/Servo/atmega4808_pwm.o.d" -MT "${OBJECTDIR}/Servo/atmega4808_pwm.o.d" -MT ${OBJECTDIR}/Servo/atmega4808_pwm.o -o ${OBJECTDIR}/Servo/atmega4808_pwm.o Servo/atmega4808_pwm.c 
	
${OBJECTDIR}/Servo/servo.o: Servo/servo.c  .generated_files/flags/default/c2b727efde9fd70604ed0e291aa6fc801c5f29d0 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/Servo" 
	@${RM} ${OBJECTDIR}/Servo/servo.o.d 
	@${RM} ${OBJECTDIR}/Servo/servo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/Servo/servo.o.d" -MT "${OBJECTDIR}/Servo/servo.o.d" -MT ${OBJECTDIR}/Servo/servo.o -o ${OBJECTDIR}/Servo/servo.o Servo/servo.c 
	
${OBJECTDIR}/utility/ring_buffer.o: utility/ring_buffer.c  .generated_files/flags/default/dbaa7b33dae05ec723b80e0f70fc485f76fef24 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/utility" 
	@${RM} ${OBJECTDIR}/utility/ring_buffer.o.d 
	@${RM} ${OBJECTDIR}/utility/ring_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/utility/ring_buffer.o.d" -MT "${OBJECTDIR}/utility/ring_buffer.o.d" -MT ${OBJECTDIR}/utility/ring_buffer.o -o ${OBJECTDIR}/utility/ring_buffer.o utility/ring_buffer.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/d54aad0b724b140b873fa3b19aa93bd2b85ef7b5 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
else
${OBJECTDIR}/application/application.o: application/application.c  .generated_files/flags/default/ee30de7d48c4fad97ee40b1c73ecc03d882789ac .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/application" 
	@${RM} ${OBJECTDIR}/application/application.o.d 
	@${RM} ${OBJECTDIR}/application/application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/application/application.o.d" -MT "${OBJECTDIR}/application/application.o.d" -MT ${OBJECTDIR}/application/application.o -o ${OBJECTDIR}/application/application.o application/application.c 
	
${OBJECTDIR}/application/Client_Handle.o: application/Client_Handle.c  .generated_files/flags/default/d73f7a4b8a3ae1088b9921baa41b3e7523e3bf9b .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/application" 
	@${RM} ${OBJECTDIR}/application/Client_Handle.o.d 
	@${RM} ${OBJECTDIR}/application/Client_Handle.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/application/Client_Handle.o.d" -MT "${OBJECTDIR}/application/Client_Handle.o.d" -MT ${OBJECTDIR}/application/Client_Handle.o -o ${OBJECTDIR}/application/Client_Handle.o application/Client_Handle.c 
	
${OBJECTDIR}/cli/cli.o: cli/cli.c  .generated_files/flags/default/7ed9dbf0cde776cceaf6e909b9ab01b75f92e3f4 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/cli" 
	@${RM} ${OBJECTDIR}/cli/cli.o.d 
	@${RM} ${OBJECTDIR}/cli/cli.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/cli/cli.o.d" -MT "${OBJECTDIR}/cli/cli.o.d" -MT ${OBJECTDIR}/cli/cli.o -o ${OBJECTDIR}/cli/cli.o cli/cli.c 
	
${OBJECTDIR}/led/led.o: led/led.c  .generated_files/flags/default/3f07b1955a5a5eaf7f31ccd856a272bead3562f7 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/led" 
	@${RM} ${OBJECTDIR}/led/led.o.d 
	@${RM} ${OBJECTDIR}/led/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/led/led.o.d" -MT "${OBJECTDIR}/led/led.o.d" -MT ${OBJECTDIR}/led/led.o -o ${OBJECTDIR}/led/led.o led/led.c 
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/e0fbf1f33f17edcd8ec74988d26cf6752ab3be98 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o mcc_generated_files/drivers/spi_master.c 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/default/9611455c6e353ff0bdbb4b34b8a3016b24f84329 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/default/269e47df137ac519ff7b84ba7cb64399c902294c .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c 
	
${OBJECTDIR}/mcc_generated_files/src/spi0.o: mcc_generated_files/src/spi0.c  .generated_files/flags/default/81619434d9555c2c45bd56d0a2e51f0b6f5671c0 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/spi0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/spi0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/spi0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/spi0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/spi0.o -o ${OBJECTDIR}/mcc_generated_files/src/spi0.o mcc_generated_files/src/spi0.c 
	
${OBJECTDIR}/mcc_generated_files/src/tca0.o: mcc_generated_files/src/tca0.c  .generated_files/flags/default/fd06ac6f648e9cb1bb60ff7114237f23cf06be83 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/tca0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/tca0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/tca0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/tca0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/tca0.o -o ${OBJECTDIR}/mcc_generated_files/src/tca0.o mcc_generated_files/src/tca0.c 
	
${OBJECTDIR}/mcc_generated_files/src/usart2.o: mcc_generated_files/src/usart2.c  .generated_files/flags/default/8938990c2537cc3d0d4d350436c925e01aaa2d2d .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart2.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart2.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart2.o -o ${OBJECTDIR}/mcc_generated_files/src/usart2.o mcc_generated_files/src/usart2.c 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/default/c4fc9b98fdce8d9805f453507f05cac2b9f7736c .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o: mcc_generated_files/winc/driver/winc_spi.c  .generated_files/flags/default/66b1258d3aa28adcb54dcb6ceee61efcbcb9bd2e .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o mcc_generated_files/winc/driver/winc_spi.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o: mcc_generated_files/winc/driver/winc_adapter.c  .generated_files/flags/default/3733ef12e1cddeac2ab41a1b36631996902a69e6 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o mcc_generated_files/winc/driver/winc_adapter.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o: mcc_generated_files/winc/driver/winc_hif.c  .generated_files/flags/default/bd7f7809d0e5432bdcc5a77af89c3ee2683a138a .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o mcc_generated_files/winc/driver/winc_hif.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o: mcc_generated_files/winc/driver/winc_asic.c  .generated_files/flags/default/546b9ff8d09c8a36b61b3539e9b9d44255c66e91 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o mcc_generated_files/winc/driver/winc_asic.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o: mcc_generated_files/winc/driver/winc_drv.c  .generated_files/flags/default/9ad7cb349d97e7bfe18c84df637cb680b63161b2 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o mcc_generated_files/winc/driver/winc_drv.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o: mcc_generated_files/winc/m2m/m2m_ssl.c  .generated_files/flags/default/8f2fccd0bbc4e5ba40030b3fb969e3fdbe3bd0df .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o mcc_generated_files/winc/m2m/m2m_ssl.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o: mcc_generated_files/winc/m2m/m2m_wifi.c  .generated_files/flags/default/79dd161eba3f3064d96b6a3ba35a2573772a143d .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o mcc_generated_files/winc/m2m/m2m_wifi.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o: mcc_generated_files/winc/m2m/m2m_periph.c  .generated_files/flags/default/c81c16a3d6ea3b4b36324bbf38cb07e805a324b8 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o mcc_generated_files/winc/m2m/m2m_periph.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o: mcc_generated_files/winc/m2m/m2m_ota.c  .generated_files/flags/default/5efe7994ac5f394b274e9eec843276bdb7a8ba4e .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o mcc_generated_files/winc/m2m/m2m_ota.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o: mcc_generated_files/winc/m2m/m2m_fwinfo.c  .generated_files/flags/default/4927cb8a07cacb5036e15928c00c313705b1a9f6 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o mcc_generated_files/winc/m2m/m2m_fwinfo.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o: mcc_generated_files/winc/m2m/m2m_crypto.c  .generated_files/flags/default/8373d99da0acfc57f17abdd8fa9782afa84078a6 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o mcc_generated_files/winc/m2m/m2m_crypto.c 
	
${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o: mcc_generated_files/winc/socket/socket.c  .generated_files/flags/default/3ba9929bd3baea83b463c532379a88dd43045732 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/socket" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o -o ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o mcc_generated_files/winc/socket/socket.c 
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o: mcc_generated_files/winc/spi_flash/flexible_flash.c  .generated_files/flags/default/fd53300e916773e67e3d49d0b9955adf845d8cd3 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o mcc_generated_files/winc/spi_flash/flexible_flash.c 
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o: mcc_generated_files/winc/spi_flash/spi_flash.c  .generated_files/flags/default/f7c756c92ff492bb91f545c03cf1a50a00f8c6d0 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o mcc_generated_files/winc/spi_flash/spi_flash.c 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/default/fb6bf2cfe367a3d2496a70535eba8d80e2bb9597 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/a3ce98c1751031c43b875554bd3c10a4f5848540 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c 
	
${OBJECTDIR}/mcc_generated_files/delay.o: mcc_generated_files/delay.c  .generated_files/flags/default/d06accd2916f8f236f4969dd7d55a195b67aec6a .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/delay.o.d" -MT "${OBJECTDIR}/mcc_generated_files/delay.o.d" -MT ${OBJECTDIR}/mcc_generated_files/delay.o -o ${OBJECTDIR}/mcc_generated_files/delay.o mcc_generated_files/delay.c 
	
${OBJECTDIR}/network/network.o: network/network.c  .generated_files/flags/default/3e0633ae529d54a7ca1f372ba1c4aa7e9230d601 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/network" 
	@${RM} ${OBJECTDIR}/network/network.o.d 
	@${RM} ${OBJECTDIR}/network/network.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/network/network.o.d" -MT "${OBJECTDIR}/network/network.o.d" -MT ${OBJECTDIR}/network/network.o -o ${OBJECTDIR}/network/network.o network/network.c 
	
${OBJECTDIR}/network/network_winc1500.o: network/network_winc1500.c  .generated_files/flags/default/253496741afa50eb291f077b13a14ce6f470442c .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/network" 
	@${RM} ${OBJECTDIR}/network/network_winc1500.o.d 
	@${RM} ${OBJECTDIR}/network/network_winc1500.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/network/network_winc1500.o.d" -MT "${OBJECTDIR}/network/network_winc1500.o.d" -MT ${OBJECTDIR}/network/network_winc1500.o -o ${OBJECTDIR}/network/network_winc1500.o network/network_winc1500.c 
	
${OBJECTDIR}/network/winc1500_tcp_server.o: network/winc1500_tcp_server.c  .generated_files/flags/default/473ed2578b88b618a9d9365dc5ef30189e04dd50 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/network" 
	@${RM} ${OBJECTDIR}/network/winc1500_tcp_server.o.d 
	@${RM} ${OBJECTDIR}/network/winc1500_tcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/network/winc1500_tcp_server.o.d" -MT "${OBJECTDIR}/network/winc1500_tcp_server.o.d" -MT ${OBJECTDIR}/network/winc1500_tcp_server.o -o ${OBJECTDIR}/network/winc1500_tcp_server.o network/winc1500_tcp_server.c 
	
${OBJECTDIR}/scheduler/atmega4808_rtc.o: scheduler/atmega4808_rtc.c  .generated_files/flags/default/e4483955adb7ec57d90c603dac5f60c95b3105b0 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/scheduler" 
	@${RM} ${OBJECTDIR}/scheduler/atmega4808_rtc.o.d 
	@${RM} ${OBJECTDIR}/scheduler/atmega4808_rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/scheduler/atmega4808_rtc.o.d" -MT "${OBJECTDIR}/scheduler/atmega4808_rtc.o.d" -MT ${OBJECTDIR}/scheduler/atmega4808_rtc.o -o ${OBJECTDIR}/scheduler/atmega4808_rtc.o scheduler/atmega4808_rtc.c 
	
${OBJECTDIR}/scheduler/scheduler.o: scheduler/scheduler.c  .generated_files/flags/default/a7aeb28cb6a0e810ddc7b67463a021a89164335e .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/scheduler" 
	@${RM} ${OBJECTDIR}/scheduler/scheduler.o.d 
	@${RM} ${OBJECTDIR}/scheduler/scheduler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/scheduler/scheduler.o.d" -MT "${OBJECTDIR}/scheduler/scheduler.o.d" -MT ${OBJECTDIR}/scheduler/scheduler.o -o ${OBJECTDIR}/scheduler/scheduler.o scheduler/scheduler.c 
	
${OBJECTDIR}/scheduler/scheduler_conf.o: scheduler/scheduler_conf.c  .generated_files/flags/default/771c7fb8917b1797482ce2f4440e4b694d7cb31d .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/scheduler" 
	@${RM} ${OBJECTDIR}/scheduler/scheduler_conf.o.d 
	@${RM} ${OBJECTDIR}/scheduler/scheduler_conf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/scheduler/scheduler_conf.o.d" -MT "${OBJECTDIR}/scheduler/scheduler_conf.o.d" -MT ${OBJECTDIR}/scheduler/scheduler_conf.o -o ${OBJECTDIR}/scheduler/scheduler_conf.o scheduler/scheduler_conf.c 
	
${OBJECTDIR}/Servo/atmega4808_pwm.o: Servo/atmega4808_pwm.c  .generated_files/flags/default/509e78e385ece1c9b578b51ff166fcaa3d76465c .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/Servo" 
	@${RM} ${OBJECTDIR}/Servo/atmega4808_pwm.o.d 
	@${RM} ${OBJECTDIR}/Servo/atmega4808_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/Servo/atmega4808_pwm.o.d" -MT "${OBJECTDIR}/Servo/atmega4808_pwm.o.d" -MT ${OBJECTDIR}/Servo/atmega4808_pwm.o -o ${OBJECTDIR}/Servo/atmega4808_pwm.o Servo/atmega4808_pwm.c 
	
${OBJECTDIR}/Servo/servo.o: Servo/servo.c  .generated_files/flags/default/4f9541d58125bb072db9d96248ab2315125c760d .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/Servo" 
	@${RM} ${OBJECTDIR}/Servo/servo.o.d 
	@${RM} ${OBJECTDIR}/Servo/servo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/Servo/servo.o.d" -MT "${OBJECTDIR}/Servo/servo.o.d" -MT ${OBJECTDIR}/Servo/servo.o -o ${OBJECTDIR}/Servo/servo.o Servo/servo.c 
	
${OBJECTDIR}/utility/ring_buffer.o: utility/ring_buffer.c  .generated_files/flags/default/e6be91c1a4038cda24222061d90c14e19644ad3d .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/utility" 
	@${RM} ${OBJECTDIR}/utility/ring_buffer.o.d 
	@${RM} ${OBJECTDIR}/utility/ring_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/utility/ring_buffer.o.d" -MT "${OBJECTDIR}/utility/ring_buffer.o.d" -MT ${OBJECTDIR}/utility/ring_buffer.o -o ${OBJECTDIR}/utility/ring_buffer.o utility/ring_buffer.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/d7f2403e3b413270233059da671c29339088eec0 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/default/42a517cb613c664487bc8835a1f4a1fa51a5e6d5 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o  mcc_generated_files/src/protected_io.S 
	
else
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/default/e3056848241379944709fbdbc4d2cda79db71844 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -Wa,--defsym=__MPLAB_BUILD=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o  mcc_generated_files/src/protected_io.S 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/FishFeeder.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/FishFeeder.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1     -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/FishFeeder.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/FishFeeder.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/FishFeeder.X.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/FishFeeder.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/FishFeeder.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/FishFeeder.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/FishFeeder.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/FishFeeder.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/FishFeeder.X.${IMAGE_TYPE}.hex"
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

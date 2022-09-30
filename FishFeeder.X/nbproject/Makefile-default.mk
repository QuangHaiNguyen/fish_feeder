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
${OBJECTDIR}/application/application.o: application/application.c  .generated_files/flags/default/74db98f7610bfd79ca8de3eb8cb1a8db5ec9c9fb .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/application" 
	@${RM} ${OBJECTDIR}/application/application.o.d 
	@${RM} ${OBJECTDIR}/application/application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/application/application.o.d" -MT "${OBJECTDIR}/application/application.o.d" -MT ${OBJECTDIR}/application/application.o -o ${OBJECTDIR}/application/application.o application/application.c 
	
${OBJECTDIR}/application/Client_Handle.o: application/Client_Handle.c  .generated_files/flags/default/77cbb04bcffb12f90b229f9015d0588745173d63 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/application" 
	@${RM} ${OBJECTDIR}/application/Client_Handle.o.d 
	@${RM} ${OBJECTDIR}/application/Client_Handle.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/application/Client_Handle.o.d" -MT "${OBJECTDIR}/application/Client_Handle.o.d" -MT ${OBJECTDIR}/application/Client_Handle.o -o ${OBJECTDIR}/application/Client_Handle.o application/Client_Handle.c 
	
${OBJECTDIR}/cli/cli.o: cli/cli.c  .generated_files/flags/default/6fd62ebcd8133823487f1ef628834892077d3000 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/cli" 
	@${RM} ${OBJECTDIR}/cli/cli.o.d 
	@${RM} ${OBJECTDIR}/cli/cli.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/cli/cli.o.d" -MT "${OBJECTDIR}/cli/cli.o.d" -MT ${OBJECTDIR}/cli/cli.o -o ${OBJECTDIR}/cli/cli.o cli/cli.c 
	
${OBJECTDIR}/led/led.o: led/led.c  .generated_files/flags/default/6aa16f386ed1fdebdcd59b9fa1335b58e450c091 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/led" 
	@${RM} ${OBJECTDIR}/led/led.o.d 
	@${RM} ${OBJECTDIR}/led/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/led/led.o.d" -MT "${OBJECTDIR}/led/led.o.d" -MT ${OBJECTDIR}/led/led.o -o ${OBJECTDIR}/led/led.o led/led.c 
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/4193460b487e1b0a8db95d973b1b528041480e49 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o mcc_generated_files/drivers/spi_master.c 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/default/656b113a97a0a93fcea96aefc78a26614df4ac84 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/default/49cab8fd0983e4160e3d2e9469522d98c12c40b9 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c 
	
${OBJECTDIR}/mcc_generated_files/src/spi0.o: mcc_generated_files/src/spi0.c  .generated_files/flags/default/c7e2bb0cb716173e1c3c659b30e449e441a7498f .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/spi0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/spi0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/spi0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/spi0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/spi0.o -o ${OBJECTDIR}/mcc_generated_files/src/spi0.o mcc_generated_files/src/spi0.c 
	
${OBJECTDIR}/mcc_generated_files/src/tca0.o: mcc_generated_files/src/tca0.c  .generated_files/flags/default/e7eaf6b016921afe0957e54c4d0ef7207027ca22 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/tca0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/tca0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/tca0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/tca0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/tca0.o -o ${OBJECTDIR}/mcc_generated_files/src/tca0.o mcc_generated_files/src/tca0.c 
	
${OBJECTDIR}/mcc_generated_files/src/usart2.o: mcc_generated_files/src/usart2.c  .generated_files/flags/default/5709251a8a0e220a26f6886d1160eb249a85b89 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart2.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart2.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart2.o -o ${OBJECTDIR}/mcc_generated_files/src/usart2.o mcc_generated_files/src/usart2.c 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/default/85f55f780fe95562441f1f26a83a4de19ac37b7b .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o: mcc_generated_files/winc/driver/winc_spi.c  .generated_files/flags/default/da9b9d081bb7bcf264818bbf5457b04c81da9fd5 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o mcc_generated_files/winc/driver/winc_spi.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o: mcc_generated_files/winc/driver/winc_adapter.c  .generated_files/flags/default/f4223245205567ba358cd76884e1ca59660e784f .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o mcc_generated_files/winc/driver/winc_adapter.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o: mcc_generated_files/winc/driver/winc_hif.c  .generated_files/flags/default/a22cd4e812a37ac762211a888b0671cab7d64b75 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o mcc_generated_files/winc/driver/winc_hif.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o: mcc_generated_files/winc/driver/winc_asic.c  .generated_files/flags/default/c9a03c77b1b4c9026d071066de794af321dee24 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o mcc_generated_files/winc/driver/winc_asic.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o: mcc_generated_files/winc/driver/winc_drv.c  .generated_files/flags/default/4a236894d012a4929ed4d35f4d0dc2546ddbbf7e .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o mcc_generated_files/winc/driver/winc_drv.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o: mcc_generated_files/winc/m2m/m2m_ssl.c  .generated_files/flags/default/32742e6ad8d9edae9bd741e12b2e5999b93dd668 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o mcc_generated_files/winc/m2m/m2m_ssl.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o: mcc_generated_files/winc/m2m/m2m_wifi.c  .generated_files/flags/default/ede9ca6533154980109b5497ed651c979454faff .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o mcc_generated_files/winc/m2m/m2m_wifi.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o: mcc_generated_files/winc/m2m/m2m_periph.c  .generated_files/flags/default/6b3b0224540e316357cb007e0ca7d3215d294391 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o mcc_generated_files/winc/m2m/m2m_periph.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o: mcc_generated_files/winc/m2m/m2m_ota.c  .generated_files/flags/default/48b8541b06605f50a302a0a9d1d458c319482def .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o mcc_generated_files/winc/m2m/m2m_ota.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o: mcc_generated_files/winc/m2m/m2m_fwinfo.c  .generated_files/flags/default/49ccd1552726f15ef29a359d464d45e5dcbc2097 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o mcc_generated_files/winc/m2m/m2m_fwinfo.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o: mcc_generated_files/winc/m2m/m2m_crypto.c  .generated_files/flags/default/40ca110be8f69e04b3bf7b618211bf8a414825b .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o mcc_generated_files/winc/m2m/m2m_crypto.c 
	
${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o: mcc_generated_files/winc/socket/socket.c  .generated_files/flags/default/ccc610950963a2f97b85f49885c26b157663a23f .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/socket" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o -o ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o mcc_generated_files/winc/socket/socket.c 
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o: mcc_generated_files/winc/spi_flash/flexible_flash.c  .generated_files/flags/default/ee9785e4b6a2c52e53b0ffe0a3569c7a3ee72024 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o mcc_generated_files/winc/spi_flash/flexible_flash.c 
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o: mcc_generated_files/winc/spi_flash/spi_flash.c  .generated_files/flags/default/292a1bade252e3e4bd0703c4d5adc171e1bd41f .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o mcc_generated_files/winc/spi_flash/spi_flash.c 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/default/b5bd54ba95efde441a626b2f51f4ef3b753108d2 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/1a2185cdbf6a0a28cafb5aaa95b6b5882d465bf3 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c 
	
${OBJECTDIR}/mcc_generated_files/delay.o: mcc_generated_files/delay.c  .generated_files/flags/default/a9e38f5a311e5b2933b7e393a1c9e16336b2bae0 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/delay.o.d" -MT "${OBJECTDIR}/mcc_generated_files/delay.o.d" -MT ${OBJECTDIR}/mcc_generated_files/delay.o -o ${OBJECTDIR}/mcc_generated_files/delay.o mcc_generated_files/delay.c 
	
${OBJECTDIR}/network/network.o: network/network.c  .generated_files/flags/default/978a60292789cd14ff15443217be2dfd43e775d2 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/network" 
	@${RM} ${OBJECTDIR}/network/network.o.d 
	@${RM} ${OBJECTDIR}/network/network.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/network/network.o.d" -MT "${OBJECTDIR}/network/network.o.d" -MT ${OBJECTDIR}/network/network.o -o ${OBJECTDIR}/network/network.o network/network.c 
	
${OBJECTDIR}/network/network_winc1500.o: network/network_winc1500.c  .generated_files/flags/default/9f4ba97805d42353a73743b76c1e514a890695e .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/network" 
	@${RM} ${OBJECTDIR}/network/network_winc1500.o.d 
	@${RM} ${OBJECTDIR}/network/network_winc1500.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/network/network_winc1500.o.d" -MT "${OBJECTDIR}/network/network_winc1500.o.d" -MT ${OBJECTDIR}/network/network_winc1500.o -o ${OBJECTDIR}/network/network_winc1500.o network/network_winc1500.c 
	
${OBJECTDIR}/network/winc1500_tcp_server.o: network/winc1500_tcp_server.c  .generated_files/flags/default/27971af66da9c0ac3ec809070b2e8da22fcf9e07 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/network" 
	@${RM} ${OBJECTDIR}/network/winc1500_tcp_server.o.d 
	@${RM} ${OBJECTDIR}/network/winc1500_tcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/network/winc1500_tcp_server.o.d" -MT "${OBJECTDIR}/network/winc1500_tcp_server.o.d" -MT ${OBJECTDIR}/network/winc1500_tcp_server.o -o ${OBJECTDIR}/network/winc1500_tcp_server.o network/winc1500_tcp_server.c 
	
${OBJECTDIR}/scheduler/atmega4808_rtc.o: scheduler/atmega4808_rtc.c  .generated_files/flags/default/413a2f9a7e3642ef3b5802217b840c5751febb7 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/scheduler" 
	@${RM} ${OBJECTDIR}/scheduler/atmega4808_rtc.o.d 
	@${RM} ${OBJECTDIR}/scheduler/atmega4808_rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/scheduler/atmega4808_rtc.o.d" -MT "${OBJECTDIR}/scheduler/atmega4808_rtc.o.d" -MT ${OBJECTDIR}/scheduler/atmega4808_rtc.o -o ${OBJECTDIR}/scheduler/atmega4808_rtc.o scheduler/atmega4808_rtc.c 
	
${OBJECTDIR}/scheduler/scheduler.o: scheduler/scheduler.c  .generated_files/flags/default/8b24ae33cb1e79687a6b32a2e048508414d726ef .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/scheduler" 
	@${RM} ${OBJECTDIR}/scheduler/scheduler.o.d 
	@${RM} ${OBJECTDIR}/scheduler/scheduler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/scheduler/scheduler.o.d" -MT "${OBJECTDIR}/scheduler/scheduler.o.d" -MT ${OBJECTDIR}/scheduler/scheduler.o -o ${OBJECTDIR}/scheduler/scheduler.o scheduler/scheduler.c 
	
${OBJECTDIR}/scheduler/scheduler_conf.o: scheduler/scheduler_conf.c  .generated_files/flags/default/4df9ea3dced005831af117e40dc2c9917f8ebe90 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/scheduler" 
	@${RM} ${OBJECTDIR}/scheduler/scheduler_conf.o.d 
	@${RM} ${OBJECTDIR}/scheduler/scheduler_conf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/scheduler/scheduler_conf.o.d" -MT "${OBJECTDIR}/scheduler/scheduler_conf.o.d" -MT ${OBJECTDIR}/scheduler/scheduler_conf.o -o ${OBJECTDIR}/scheduler/scheduler_conf.o scheduler/scheduler_conf.c 
	
${OBJECTDIR}/Servo/atmega4808_pwm.o: Servo/atmega4808_pwm.c  .generated_files/flags/default/9f01f65ced9270ba734478b89992ba4f3bebb183 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/Servo" 
	@${RM} ${OBJECTDIR}/Servo/atmega4808_pwm.o.d 
	@${RM} ${OBJECTDIR}/Servo/atmega4808_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/Servo/atmega4808_pwm.o.d" -MT "${OBJECTDIR}/Servo/atmega4808_pwm.o.d" -MT ${OBJECTDIR}/Servo/atmega4808_pwm.o -o ${OBJECTDIR}/Servo/atmega4808_pwm.o Servo/atmega4808_pwm.c 
	
${OBJECTDIR}/Servo/servo.o: Servo/servo.c  .generated_files/flags/default/35c80cca8177876fe718e0f9954f042ccbe10ea2 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/Servo" 
	@${RM} ${OBJECTDIR}/Servo/servo.o.d 
	@${RM} ${OBJECTDIR}/Servo/servo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/Servo/servo.o.d" -MT "${OBJECTDIR}/Servo/servo.o.d" -MT ${OBJECTDIR}/Servo/servo.o -o ${OBJECTDIR}/Servo/servo.o Servo/servo.c 
	
${OBJECTDIR}/utility/ring_buffer.o: utility/ring_buffer.c  .generated_files/flags/default/9317398077b96b13e4584b2c87bcfe72e64f3f49 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/utility" 
	@${RM} ${OBJECTDIR}/utility/ring_buffer.o.d 
	@${RM} ${OBJECTDIR}/utility/ring_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/utility/ring_buffer.o.d" -MT "${OBJECTDIR}/utility/ring_buffer.o.d" -MT ${OBJECTDIR}/utility/ring_buffer.o -o ${OBJECTDIR}/utility/ring_buffer.o utility/ring_buffer.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/30a7cca887c693e7f399f57143d9931e30b3ec73 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
else
${OBJECTDIR}/application/application.o: application/application.c  .generated_files/flags/default/430318b0dda0733478eac40549fcb47b3787b3f5 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/application" 
	@${RM} ${OBJECTDIR}/application/application.o.d 
	@${RM} ${OBJECTDIR}/application/application.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/application/application.o.d" -MT "${OBJECTDIR}/application/application.o.d" -MT ${OBJECTDIR}/application/application.o -o ${OBJECTDIR}/application/application.o application/application.c 
	
${OBJECTDIR}/application/Client_Handle.o: application/Client_Handle.c  .generated_files/flags/default/868dbf59990641e1ae44e7fe2550a541922e1747 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/application" 
	@${RM} ${OBJECTDIR}/application/Client_Handle.o.d 
	@${RM} ${OBJECTDIR}/application/Client_Handle.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/application/Client_Handle.o.d" -MT "${OBJECTDIR}/application/Client_Handle.o.d" -MT ${OBJECTDIR}/application/Client_Handle.o -o ${OBJECTDIR}/application/Client_Handle.o application/Client_Handle.c 
	
${OBJECTDIR}/cli/cli.o: cli/cli.c  .generated_files/flags/default/274db2b0552844a5457b22280464c788a6912104 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/cli" 
	@${RM} ${OBJECTDIR}/cli/cli.o.d 
	@${RM} ${OBJECTDIR}/cli/cli.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/cli/cli.o.d" -MT "${OBJECTDIR}/cli/cli.o.d" -MT ${OBJECTDIR}/cli/cli.o -o ${OBJECTDIR}/cli/cli.o cli/cli.c 
	
${OBJECTDIR}/led/led.o: led/led.c  .generated_files/flags/default/3bef38f3213397f2bed36c5e252a42cfd5385532 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/led" 
	@${RM} ${OBJECTDIR}/led/led.o.d 
	@${RM} ${OBJECTDIR}/led/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/led/led.o.d" -MT "${OBJECTDIR}/led/led.o.d" -MT ${OBJECTDIR}/led/led.o -o ${OBJECTDIR}/led/led.o led/led.c 
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/a9b37d84a3383f91e077a1e3b124ed91c5850777 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -MT "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d" -MT ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o mcc_generated_files/drivers/spi_master.c 
	
${OBJECTDIR}/mcc_generated_files/src/pin_manager.o: mcc_generated_files/src/pin_manager.c  .generated_files/flags/default/6853d148224b4c04dd4d018a75945e2561e69008 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/pin_manager.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o -o ${OBJECTDIR}/mcc_generated_files/src/pin_manager.o mcc_generated_files/src/pin_manager.c 
	
${OBJECTDIR}/mcc_generated_files/src/cpuint.o: mcc_generated_files/src/cpuint.c  .generated_files/flags/default/2f222054864c608a9cb5c5616fabe81f99d26b6c .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/cpuint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/cpuint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/cpuint.o -o ${OBJECTDIR}/mcc_generated_files/src/cpuint.o mcc_generated_files/src/cpuint.c 
	
${OBJECTDIR}/mcc_generated_files/src/spi0.o: mcc_generated_files/src/spi0.c  .generated_files/flags/default/44e5f2abf864bbfc5c7449fea7ea26c7f52fe726 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/spi0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/spi0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/spi0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/spi0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/spi0.o -o ${OBJECTDIR}/mcc_generated_files/src/spi0.o mcc_generated_files/src/spi0.c 
	
${OBJECTDIR}/mcc_generated_files/src/tca0.o: mcc_generated_files/src/tca0.c  .generated_files/flags/default/3127fffa38e0a9409a6a52af620e4f4b9b4eb808 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/tca0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/tca0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/tca0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/tca0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/tca0.o -o ${OBJECTDIR}/mcc_generated_files/src/tca0.o mcc_generated_files/src/tca0.c 
	
${OBJECTDIR}/mcc_generated_files/src/usart2.o: mcc_generated_files/src/usart2.c  .generated_files/flags/default/e4973a4f570a9644bb3e98fab0dc67d457849dab .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/usart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/usart2.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/usart2.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/usart2.o -o ${OBJECTDIR}/mcc_generated_files/src/usart2.o mcc_generated_files/src/usart2.c 
	
${OBJECTDIR}/mcc_generated_files/src/rtc.o: mcc_generated_files/src/rtc.c  .generated_files/flags/default/1ee94e0669283e44009e8aa19253e5e2fee6a048 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/rtc.o -o ${OBJECTDIR}/mcc_generated_files/src/rtc.o mcc_generated_files/src/rtc.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o: mcc_generated_files/winc/driver/winc_spi.c  .generated_files/flags/default/30c07c6ab577820e0294a02af69b48413f5bfec3 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o mcc_generated_files/winc/driver/winc_spi.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o: mcc_generated_files/winc/driver/winc_adapter.c  .generated_files/flags/default/23293737291075e2eb27762ab709bfb343a3b712 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o mcc_generated_files/winc/driver/winc_adapter.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o: mcc_generated_files/winc/driver/winc_hif.c  .generated_files/flags/default/bef2ef4ab3672c2519ebbe74d36dc7f807946cd7 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o mcc_generated_files/winc/driver/winc_hif.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o: mcc_generated_files/winc/driver/winc_asic.c  .generated_files/flags/default/f36e145211cb7a2aee303a3a3e351d584e3b5092 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o mcc_generated_files/winc/driver/winc_asic.c 
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o: mcc_generated_files/winc/driver/winc_drv.c  .generated_files/flags/default/a4e9b74605e731d71ec690530e32d529fcc0a02c .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o mcc_generated_files/winc/driver/winc_drv.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o: mcc_generated_files/winc/m2m/m2m_ssl.c  .generated_files/flags/default/40dcd1451607942aaa3671ef87c97a85870d9c6b .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o mcc_generated_files/winc/m2m/m2m_ssl.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o: mcc_generated_files/winc/m2m/m2m_wifi.c  .generated_files/flags/default/edb16b813421a645330c0a480904333e935dac59 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o mcc_generated_files/winc/m2m/m2m_wifi.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o: mcc_generated_files/winc/m2m/m2m_periph.c  .generated_files/flags/default/24c35c3ac76e3320094078ee5652fac826007101 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o mcc_generated_files/winc/m2m/m2m_periph.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o: mcc_generated_files/winc/m2m/m2m_ota.c  .generated_files/flags/default/35cf8ef3f3f6b0c730de945e03d6826f47d208b6 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o mcc_generated_files/winc/m2m/m2m_ota.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o: mcc_generated_files/winc/m2m/m2m_fwinfo.c  .generated_files/flags/default/81f21037ed70e3c39d8afc67823c70fa0b9a7076 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o mcc_generated_files/winc/m2m/m2m_fwinfo.c 
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o: mcc_generated_files/winc/m2m/m2m_crypto.c  .generated_files/flags/default/33fa4317edda980b141ba9b071225243d5e624b9 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o mcc_generated_files/winc/m2m/m2m_crypto.c 
	
${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o: mcc_generated_files/winc/socket/socket.c  .generated_files/flags/default/21b4c60f42751fe5f3255d7e641a7d9afa1ea8c5 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/socket" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o -o ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o mcc_generated_files/winc/socket/socket.c 
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o: mcc_generated_files/winc/spi_flash/flexible_flash.c  .generated_files/flags/default/c7bd7b670fa83a5ff5b06d44e22ff28b93375bd1 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o mcc_generated_files/winc/spi_flash/flexible_flash.c 
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o: mcc_generated_files/winc/spi_flash/spi_flash.c  .generated_files/flags/default/1ee4fd7a693fbcca3a5f57e1319b5bf4dbfd8ce .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d" -MT "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d" -MT ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o mcc_generated_files/winc/spi_flash/spi_flash.c 
	
${OBJECTDIR}/mcc_generated_files/device_config.o: mcc_generated_files/device_config.c  .generated_files/flags/default/d6f80cbcd9e6795d9201a34ead3efa2897ae6d7f .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT "${OBJECTDIR}/mcc_generated_files/device_config.o.d" -MT ${OBJECTDIR}/mcc_generated_files/device_config.o -o ${OBJECTDIR}/mcc_generated_files/device_config.o mcc_generated_files/device_config.c 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/b72c4ce9b4fa0b977f0ac31a8fb3c948644003be .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/mcc.o -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c 
	
${OBJECTDIR}/mcc_generated_files/delay.o: mcc_generated_files/delay.c  .generated_files/flags/default/a858019bcd4ec1bfebfded0d6ec0f60008060cec .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/delay.o.d" -MT "${OBJECTDIR}/mcc_generated_files/delay.o.d" -MT ${OBJECTDIR}/mcc_generated_files/delay.o -o ${OBJECTDIR}/mcc_generated_files/delay.o mcc_generated_files/delay.c 
	
${OBJECTDIR}/network/network.o: network/network.c  .generated_files/flags/default/e7f930c29bbcbae52adae7e7b581cc16889394a .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/network" 
	@${RM} ${OBJECTDIR}/network/network.o.d 
	@${RM} ${OBJECTDIR}/network/network.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/network/network.o.d" -MT "${OBJECTDIR}/network/network.o.d" -MT ${OBJECTDIR}/network/network.o -o ${OBJECTDIR}/network/network.o network/network.c 
	
${OBJECTDIR}/network/network_winc1500.o: network/network_winc1500.c  .generated_files/flags/default/da8676f252e18ab0199808547086bfefe9dbee47 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/network" 
	@${RM} ${OBJECTDIR}/network/network_winc1500.o.d 
	@${RM} ${OBJECTDIR}/network/network_winc1500.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/network/network_winc1500.o.d" -MT "${OBJECTDIR}/network/network_winc1500.o.d" -MT ${OBJECTDIR}/network/network_winc1500.o -o ${OBJECTDIR}/network/network_winc1500.o network/network_winc1500.c 
	
${OBJECTDIR}/network/winc1500_tcp_server.o: network/winc1500_tcp_server.c  .generated_files/flags/default/55b3f2601ae7d6380c111e3d657e2aae884b82ea .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/network" 
	@${RM} ${OBJECTDIR}/network/winc1500_tcp_server.o.d 
	@${RM} ${OBJECTDIR}/network/winc1500_tcp_server.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/network/winc1500_tcp_server.o.d" -MT "${OBJECTDIR}/network/winc1500_tcp_server.o.d" -MT ${OBJECTDIR}/network/winc1500_tcp_server.o -o ${OBJECTDIR}/network/winc1500_tcp_server.o network/winc1500_tcp_server.c 
	
${OBJECTDIR}/scheduler/atmega4808_rtc.o: scheduler/atmega4808_rtc.c  .generated_files/flags/default/67cf301d0273947722cc090ed1c2222a933d80c .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/scheduler" 
	@${RM} ${OBJECTDIR}/scheduler/atmega4808_rtc.o.d 
	@${RM} ${OBJECTDIR}/scheduler/atmega4808_rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/scheduler/atmega4808_rtc.o.d" -MT "${OBJECTDIR}/scheduler/atmega4808_rtc.o.d" -MT ${OBJECTDIR}/scheduler/atmega4808_rtc.o -o ${OBJECTDIR}/scheduler/atmega4808_rtc.o scheduler/atmega4808_rtc.c 
	
${OBJECTDIR}/scheduler/scheduler.o: scheduler/scheduler.c  .generated_files/flags/default/8d0e4c8588238c7cdcf3beaaffc4be4a2739ee69 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/scheduler" 
	@${RM} ${OBJECTDIR}/scheduler/scheduler.o.d 
	@${RM} ${OBJECTDIR}/scheduler/scheduler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/scheduler/scheduler.o.d" -MT "${OBJECTDIR}/scheduler/scheduler.o.d" -MT ${OBJECTDIR}/scheduler/scheduler.o -o ${OBJECTDIR}/scheduler/scheduler.o scheduler/scheduler.c 
	
${OBJECTDIR}/scheduler/scheduler_conf.o: scheduler/scheduler_conf.c  .generated_files/flags/default/af8c3b46accfcbbcee15cb75ff1cc636af9431aa .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/scheduler" 
	@${RM} ${OBJECTDIR}/scheduler/scheduler_conf.o.d 
	@${RM} ${OBJECTDIR}/scheduler/scheduler_conf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/scheduler/scheduler_conf.o.d" -MT "${OBJECTDIR}/scheduler/scheduler_conf.o.d" -MT ${OBJECTDIR}/scheduler/scheduler_conf.o -o ${OBJECTDIR}/scheduler/scheduler_conf.o scheduler/scheduler_conf.c 
	
${OBJECTDIR}/Servo/atmega4808_pwm.o: Servo/atmega4808_pwm.c  .generated_files/flags/default/a74ffb95c5e3ee0bf04d6fd4d62c2eb47d89ef38 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/Servo" 
	@${RM} ${OBJECTDIR}/Servo/atmega4808_pwm.o.d 
	@${RM} ${OBJECTDIR}/Servo/atmega4808_pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/Servo/atmega4808_pwm.o.d" -MT "${OBJECTDIR}/Servo/atmega4808_pwm.o.d" -MT ${OBJECTDIR}/Servo/atmega4808_pwm.o -o ${OBJECTDIR}/Servo/atmega4808_pwm.o Servo/atmega4808_pwm.c 
	
${OBJECTDIR}/Servo/servo.o: Servo/servo.c  .generated_files/flags/default/6eab0d324bc8cae78a02158c031546803c31f66e .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/Servo" 
	@${RM} ${OBJECTDIR}/Servo/servo.o.d 
	@${RM} ${OBJECTDIR}/Servo/servo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/Servo/servo.o.d" -MT "${OBJECTDIR}/Servo/servo.o.d" -MT ${OBJECTDIR}/Servo/servo.o -o ${OBJECTDIR}/Servo/servo.o Servo/servo.c 
	
${OBJECTDIR}/utility/ring_buffer.o: utility/ring_buffer.c  .generated_files/flags/default/6b2a0d6a737ee4f293e3ec9f6a41cff40b70952f .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/utility" 
	@${RM} ${OBJECTDIR}/utility/ring_buffer.o.d 
	@${RM} ${OBJECTDIR}/utility/ring_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/utility/ring_buffer.o.d" -MT "${OBJECTDIR}/utility/ring_buffer.o.d" -MT ${OBJECTDIR}/utility/ring_buffer.o -o ${OBJECTDIR}/utility/ring_buffer.o utility/ring_buffer.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/336795ad8fbbe573c152552f25d149f685cf1ed .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
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
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/default/afbd94835f8d22097c5f79a80f02e63e76949c13 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DF_CPU=20000000 -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/src/protected_io.o  mcc_generated_files/src/protected_io.S 
	
else
${OBJECTDIR}/mcc_generated_files/src/protected_io.o: mcc_generated_files/src/protected_io.S  .generated_files/flags/default/b1e5ca56e9f5d7393742bb54e0a97c776c0f024 .generated_files/flags/default/e09b0e40d7b3831c7c38d7d989a37cb6aa1c3e64
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

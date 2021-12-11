################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/User/aspep.c \
../Application/User/dac_ui.c \
../Application/User/main.c \
../Application/User/mc_api.c \
../Application/User/mc_config.c \
../Application/User/mc_configuration_registers.c \
../Application/User/mc_interface.c \
../Application/User/mc_math.c \
../Application/User/mc_parameters.c \
../Application/User/mc_tasks.c \
../Application/User/mcp_config.c \
../Application/User/motorcontrol.c \
../Application/User/pwm_curr_fdbk.c \
../Application/User/register_interface.c \
../Application/User/regular_conversion_manager.c \
../Application/User/stm32g4xx_hal_msp.c \
../Application/User/stm32g4xx_it.c \
../Application/User/stm32g4xx_mc_it.c \
../Application/User/syscalls.c \
../Application/User/sysmem.c \
../Application/User/system_stm32g4xx.c \
../Application/User/usart_aspep_driver.c 

OBJS += \
./Application/User/aspep.o \
./Application/User/dac_ui.o \
./Application/User/main.o \
./Application/User/mc_api.o \
./Application/User/mc_config.o \
./Application/User/mc_configuration_registers.o \
./Application/User/mc_interface.o \
./Application/User/mc_math.o \
./Application/User/mc_parameters.o \
./Application/User/mc_tasks.o \
./Application/User/mcp_config.o \
./Application/User/motorcontrol.o \
./Application/User/pwm_curr_fdbk.o \
./Application/User/register_interface.o \
./Application/User/regular_conversion_manager.o \
./Application/User/stm32g4xx_hal_msp.o \
./Application/User/stm32g4xx_it.o \
./Application/User/stm32g4xx_mc_it.o \
./Application/User/syscalls.o \
./Application/User/sysmem.o \
./Application/User/system_stm32g4xx.o \
./Application/User/usart_aspep_driver.o 

C_DEPS += \
./Application/User/aspep.d \
./Application/User/dac_ui.d \
./Application/User/main.d \
./Application/User/mc_api.d \
./Application/User/mc_config.d \
./Application/User/mc_configuration_registers.d \
./Application/User/mc_interface.d \
./Application/User/mc_math.d \
./Application/User/mc_parameters.d \
./Application/User/mc_tasks.d \
./Application/User/mcp_config.d \
./Application/User/motorcontrol.d \
./Application/User/pwm_curr_fdbk.d \
./Application/User/register_interface.d \
./Application/User/regular_conversion_manager.d \
./Application/User/stm32g4xx_hal_msp.d \
./Application/User/stm32g4xx_it.d \
./Application/User/stm32g4xx_mc_it.d \
./Application/User/syscalls.d \
./Application/User/sysmem.d \
./Application/User/system_stm32g4xx.d \
./Application/User/usart_aspep_driver.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/%.o: ../Application/User/%.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32G431xx -c -I"../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc" -I"../Drivers/CMSIS/DSP/Include" -I"../Drivers/CMSIS/Include" -I"../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/G4xx/Inc" -I"../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy" -I"../Drivers/STM32G4xx_HAL_Driver/Inc" -I"../Drivers/CMSIS/Device/ST/STM32G4xx/Include" -I../MCSDK_v5.Y.3/Inc -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"


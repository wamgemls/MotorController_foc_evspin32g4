################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/wamge/OneDrive/Hochschule/HM\ -\ Elektrotechnik\ MSc/Kurse/1.\ Semester/Projekt\ Elektrische\ Fahrzeugantriebe/GitRep/foc_evspin32g4/sensorless/Src/system_stm32g4xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32g4xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32g4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32g4xx.o: C:/Users/wamge/OneDrive/Hochschule/HM\ -\ Elektrotechnik\ MSc/Kurse/1.\ Semester/Projekt\ Elektrische\ Fahrzeugantriebe/GitRep/foc_evspin32g4/sensorless/Src/system_stm32g4xx.c Drivers/CMSIS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../../Inc -I../../Drivers/STM32G4xx_HAL_Driver/Inc -I../../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/G4xx/Inc -I../../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../../Drivers/CMSIS/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/system_stm32g4xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS

clean-Drivers-2f-CMSIS:
	-$(RM) ./Drivers/CMSIS/system_stm32g4xx.d ./Drivers/CMSIS/system_stm32g4xx.o

.PHONY: clean-Drivers-2f-CMSIS


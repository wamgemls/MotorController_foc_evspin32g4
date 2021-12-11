################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/MotorControl/bus_voltage_sensor.c \
../Application/MotorControl/circle_limitation.c \
../Application/MotorControl/digital_output.c \
../Application/MotorControl/mcp.c \
../Application/MotorControl/mcpa.c \
../Application/MotorControl/motor_power_measurement.c \
../Application/MotorControl/ntc_temperature_sensor.c \
../Application/MotorControl/open_loop.c \
../Application/MotorControl/pid_regulator.c \
../Application/MotorControl/pqd_motor_power_measurement.c \
../Application/MotorControl/pwm_common.c \
../Application/MotorControl/r3_2_g4xx_pwm_curr_fdbk.c \
../Application/MotorControl/r_divider_bus_voltage_sensor.c \
../Application/MotorControl/ramp_ext_mngr.c \
../Application/MotorControl/speed_pos_fdbk.c \
../Application/MotorControl/speed_torq_ctrl.c \
../Application/MotorControl/state_machine.c \
../Application/MotorControl/stspin32g4.c \
../Application/MotorControl/virtual_speed_sensor.c 

OBJS += \
./Application/MotorControl/bus_voltage_sensor.o \
./Application/MotorControl/circle_limitation.o \
./Application/MotorControl/digital_output.o \
./Application/MotorControl/mcp.o \
./Application/MotorControl/mcpa.o \
./Application/MotorControl/motor_power_measurement.o \
./Application/MotorControl/ntc_temperature_sensor.o \
./Application/MotorControl/open_loop.o \
./Application/MotorControl/pid_regulator.o \
./Application/MotorControl/pqd_motor_power_measurement.o \
./Application/MotorControl/pwm_common.o \
./Application/MotorControl/r3_2_g4xx_pwm_curr_fdbk.o \
./Application/MotorControl/r_divider_bus_voltage_sensor.o \
./Application/MotorControl/ramp_ext_mngr.o \
./Application/MotorControl/speed_pos_fdbk.o \
./Application/MotorControl/speed_torq_ctrl.o \
./Application/MotorControl/state_machine.o \
./Application/MotorControl/stspin32g4.o \
./Application/MotorControl/virtual_speed_sensor.o 

C_DEPS += \
./Application/MotorControl/bus_voltage_sensor.d \
./Application/MotorControl/circle_limitation.d \
./Application/MotorControl/digital_output.d \
./Application/MotorControl/mcp.d \
./Application/MotorControl/mcpa.d \
./Application/MotorControl/motor_power_measurement.d \
./Application/MotorControl/ntc_temperature_sensor.d \
./Application/MotorControl/open_loop.d \
./Application/MotorControl/pid_regulator.d \
./Application/MotorControl/pqd_motor_power_measurement.d \
./Application/MotorControl/pwm_common.d \
./Application/MotorControl/r3_2_g4xx_pwm_curr_fdbk.d \
./Application/MotorControl/r_divider_bus_voltage_sensor.d \
./Application/MotorControl/ramp_ext_mngr.d \
./Application/MotorControl/speed_pos_fdbk.d \
./Application/MotorControl/speed_torq_ctrl.d \
./Application/MotorControl/state_machine.d \
./Application/MotorControl/stspin32g4.d \
./Application/MotorControl/virtual_speed_sensor.d 


# Each subdirectory must supply rules for building sources it contributes
Application/MotorControl/%.o: ../Application/MotorControl/%.c Application/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32G431xx -c -I"../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/Any/Inc" -I"../Drivers/CMSIS/DSP/Include" -I"../Drivers/CMSIS/Include" -I"../MCSDK_v5.Y.3/MotorControl/MCSDK/MCLib/G4xx/Inc" -I"../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy" -I"../Drivers/STM32G4xx_HAL_Driver/Inc" -I"../Drivers/CMSIS/Device/ST/STM32G4xx/Include" -I../MCSDK_v5.Y.3/Inc -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"


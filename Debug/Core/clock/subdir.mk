################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/clock/anlog.c \
../Core/clock/digital_face.c \
../Core/clock/hour.c \
../Core/clock/minute.c \
../Core/clock/night_clock.c \
../Core/clock/second.c \
../Core/clock/watchface3.c \
../Core/clock/watchface3w.c \
../Core/clock/watchface4.c 

OBJS += \
./Core/clock/anlog.o \
./Core/clock/digital_face.o \
./Core/clock/hour.o \
./Core/clock/minute.o \
./Core/clock/night_clock.o \
./Core/clock/second.o \
./Core/clock/watchface3.o \
./Core/clock/watchface3w.o \
./Core/clock/watchface4.o 

C_DEPS += \
./Core/clock/anlog.d \
./Core/clock/digital_face.d \
./Core/clock/hour.d \
./Core/clock/minute.d \
./Core/clock/night_clock.d \
./Core/clock/second.d \
./Core/clock/watchface3.d \
./Core/clock/watchface3w.d \
./Core/clock/watchface4.d 


# Each subdirectory must supply rules for building sources it contributes
Core/clock/%.o: ../Core/clock/%.c Core/clock/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"


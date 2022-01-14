################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/menu/breath_icn.c \
../Core/menu/menu_ui.c \
../Core/menu/pomedora_icn.c \
../Core/menu/settings_icn.c \
../Core/menu/themes.c \
../Core/menu/workout_icn.c 

OBJS += \
./Core/menu/breath_icn.o \
./Core/menu/menu_ui.o \
./Core/menu/pomedora_icn.o \
./Core/menu/settings_icn.o \
./Core/menu/themes.o \
./Core/menu/workout_icn.o 

C_DEPS += \
./Core/menu/breath_icn.d \
./Core/menu/menu_ui.d \
./Core/menu/pomedora_icn.d \
./Core/menu/settings_icn.d \
./Core/menu/themes.d \
./Core/menu/workout_icn.d 


# Each subdirectory must supply rules for building sources it contributes
Core/menu/%.o: ../Core/menu/%.c Core/menu/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"


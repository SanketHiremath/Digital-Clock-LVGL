################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/lv_core/lv_disp.c \
../Core/lvgl/src/lv_core/lv_group.c \
../Core/lvgl/src/lv_core/lv_indev.c \
../Core/lvgl/src/lv_core/lv_obj.c \
../Core/lvgl/src/lv_core/lv_refr.c \
../Core/lvgl/src/lv_core/lv_style.c 

OBJS += \
./Core/lvgl/src/lv_core/lv_disp.o \
./Core/lvgl/src/lv_core/lv_group.o \
./Core/lvgl/src/lv_core/lv_indev.o \
./Core/lvgl/src/lv_core/lv_obj.o \
./Core/lvgl/src/lv_core/lv_refr.o \
./Core/lvgl/src/lv_core/lv_style.o 

C_DEPS += \
./Core/lvgl/src/lv_core/lv_disp.d \
./Core/lvgl/src/lv_core/lv_group.d \
./Core/lvgl/src/lv_core/lv_indev.d \
./Core/lvgl/src/lv_core/lv_obj.d \
./Core/lvgl/src/lv_core/lv_refr.d \
./Core/lvgl/src/lv_core/lv_style.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/lv_core/%.o: ../Core/lvgl/src/lv_core/%.c Core/lvgl/src/lv_core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"


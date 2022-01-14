################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/lv_themes/lv_theme.c \
../Core/lvgl/src/lv_themes/lv_theme_empty.c \
../Core/lvgl/src/lv_themes/lv_theme_material.c \
../Core/lvgl/src/lv_themes/lv_theme_mono.c \
../Core/lvgl/src/lv_themes/lv_theme_template.c 

OBJS += \
./Core/lvgl/src/lv_themes/lv_theme.o \
./Core/lvgl/src/lv_themes/lv_theme_empty.o \
./Core/lvgl/src/lv_themes/lv_theme_material.o \
./Core/lvgl/src/lv_themes/lv_theme_mono.o \
./Core/lvgl/src/lv_themes/lv_theme_template.o 

C_DEPS += \
./Core/lvgl/src/lv_themes/lv_theme.d \
./Core/lvgl/src/lv_themes/lv_theme_empty.d \
./Core/lvgl/src/lv_themes/lv_theme_material.d \
./Core/lvgl/src/lv_themes/lv_theme_mono.d \
./Core/lvgl/src/lv_themes/lv_theme_template.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/lv_themes/%.o: ../Core/lvgl/src/lv_themes/%.c Core/lvgl/src/lv_themes/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"


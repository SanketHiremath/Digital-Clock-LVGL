################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/lv_hal/lv_hal_disp.c \
../Core/lvgl/src/lv_hal/lv_hal_indev.c \
../Core/lvgl/src/lv_hal/lv_hal_tick.c 

OBJS += \
./Core/lvgl/src/lv_hal/lv_hal_disp.o \
./Core/lvgl/src/lv_hal/lv_hal_indev.o \
./Core/lvgl/src/lv_hal/lv_hal_tick.o 

C_DEPS += \
./Core/lvgl/src/lv_hal/lv_hal_disp.d \
./Core/lvgl/src/lv_hal/lv_hal_indev.d \
./Core/lvgl/src/lv_hal/lv_hal_tick.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/lv_hal/lv_hal_disp.o: ../Core/lvgl/src/lv_hal/lv_hal_disp.c Core/lvgl/src/lv_hal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/lvgl/src/lv_hal/lv_hal_disp.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/lvgl/src/lv_hal/lv_hal_indev.o: ../Core/lvgl/src/lv_hal/lv_hal_indev.c Core/lvgl/src/lv_hal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/lvgl/src/lv_hal/lv_hal_indev.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/lvgl/src/lv_hal/lv_hal_tick.o: ../Core/lvgl/src/lv_hal/lv_hal_tick.c Core/lvgl/src/lv_hal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/lvgl/src/lv_hal/lv_hal_tick.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"


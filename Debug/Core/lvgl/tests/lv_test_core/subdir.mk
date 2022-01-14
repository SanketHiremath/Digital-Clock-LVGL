################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/tests/lv_test_core/lv_test_core.c \
../Core/lvgl/tests/lv_test_core/lv_test_font_loader.c \
../Core/lvgl/tests/lv_test_core/lv_test_obj.c \
../Core/lvgl/tests/lv_test_core/lv_test_style.c 

OBJS += \
./Core/lvgl/tests/lv_test_core/lv_test_core.o \
./Core/lvgl/tests/lv_test_core/lv_test_font_loader.o \
./Core/lvgl/tests/lv_test_core/lv_test_obj.o \
./Core/lvgl/tests/lv_test_core/lv_test_style.o 

C_DEPS += \
./Core/lvgl/tests/lv_test_core/lv_test_core.d \
./Core/lvgl/tests/lv_test_core/lv_test_font_loader.d \
./Core/lvgl/tests/lv_test_core/lv_test_obj.d \
./Core/lvgl/tests/lv_test_core/lv_test_style.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/tests/lv_test_core/lv_test_core.o: ../Core/lvgl/tests/lv_test_core/lv_test_core.c Core/lvgl/tests/lv_test_core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/lvgl/tests/lv_test_core/lv_test_core.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/lvgl/tests/lv_test_core/lv_test_font_loader.o: ../Core/lvgl/tests/lv_test_core/lv_test_font_loader.c Core/lvgl/tests/lv_test_core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/lvgl/tests/lv_test_core/lv_test_font_loader.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/lvgl/tests/lv_test_core/lv_test_obj.o: ../Core/lvgl/tests/lv_test_core/lv_test_obj.c Core/lvgl/tests/lv_test_core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/lvgl/tests/lv_test_core/lv_test_obj.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/lvgl/tests/lv_test_core/lv_test_style.o: ../Core/lvgl/tests/lv_test_core/lv_test_style.c Core/lvgl/tests/lv_test_core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/lvgl/tests/lv_test_core/lv_test_style.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

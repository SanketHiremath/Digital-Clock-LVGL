################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lv_examples/src/lv_ex_widgets/lv_ex_img/lv_ex_img_1.c \
../Core/lv_examples/src/lv_ex_widgets/lv_ex_img/lv_ex_img_2.c \
../Core/lv_examples/src/lv_ex_widgets/lv_ex_img/lv_ex_img_3.c 

OBJS += \
./Core/lv_examples/src/lv_ex_widgets/lv_ex_img/lv_ex_img_1.o \
./Core/lv_examples/src/lv_ex_widgets/lv_ex_img/lv_ex_img_2.o \
./Core/lv_examples/src/lv_ex_widgets/lv_ex_img/lv_ex_img_3.o 

C_DEPS += \
./Core/lv_examples/src/lv_ex_widgets/lv_ex_img/lv_ex_img_1.d \
./Core/lv_examples/src/lv_ex_widgets/lv_ex_img/lv_ex_img_2.d \
./Core/lv_examples/src/lv_ex_widgets/lv_ex_img/lv_ex_img_3.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lv_examples/src/lv_ex_widgets/lv_ex_img/lv_ex_img_1.o: ../Core/lv_examples/src/lv_ex_widgets/lv_ex_img/lv_ex_img_1.c Core/lv_examples/src/lv_ex_widgets/lv_ex_img/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/lv_examples/src/lv_ex_widgets/lv_ex_img/lv_ex_img_1.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/lv_examples/src/lv_ex_widgets/lv_ex_img/lv_ex_img_2.o: ../Core/lv_examples/src/lv_ex_widgets/lv_ex_img/lv_ex_img_2.c Core/lv_examples/src/lv_ex_widgets/lv_ex_img/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/lv_examples/src/lv_ex_widgets/lv_ex_img/lv_ex_img_2.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/lv_examples/src/lv_ex_widgets/lv_ex_img/lv_ex_img_3.o: ../Core/lv_examples/src/lv_ex_widgets/lv_ex_img/lv_ex_img_3.c Core/lv_examples/src/lv_ex_widgets/lv_ex_img/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/lv_examples/src/lv_ex_widgets/lv_ex_img/lv_ex_img_3.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"


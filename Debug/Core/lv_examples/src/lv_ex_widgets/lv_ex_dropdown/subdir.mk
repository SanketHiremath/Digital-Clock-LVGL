################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lv_examples/src/lv_ex_widgets/lv_ex_dropdown/lv_ex_dropdown_1.c \
../Core/lv_examples/src/lv_ex_widgets/lv_ex_dropdown/lv_ex_dropdown_2.c 

OBJS += \
./Core/lv_examples/src/lv_ex_widgets/lv_ex_dropdown/lv_ex_dropdown_1.o \
./Core/lv_examples/src/lv_ex_widgets/lv_ex_dropdown/lv_ex_dropdown_2.o 

C_DEPS += \
./Core/lv_examples/src/lv_ex_widgets/lv_ex_dropdown/lv_ex_dropdown_1.d \
./Core/lv_examples/src/lv_ex_widgets/lv_ex_dropdown/lv_ex_dropdown_2.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lv_examples/src/lv_ex_widgets/lv_ex_dropdown/%.o: ../Core/lv_examples/src/lv_ex_widgets/lv_ex_dropdown/%.c Core/lv_examples/src/lv_ex_widgets/lv_ex_dropdown/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"


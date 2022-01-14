################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lv_examples/src/lv_ex_style/lv_ex_style_1.c \
../Core/lv_examples/src/lv_ex_style/lv_ex_style_10.c \
../Core/lv_examples/src/lv_ex_style/lv_ex_style_11.c \
../Core/lv_examples/src/lv_ex_style/lv_ex_style_2.c \
../Core/lv_examples/src/lv_ex_style/lv_ex_style_3.c \
../Core/lv_examples/src/lv_ex_style/lv_ex_style_4.c \
../Core/lv_examples/src/lv_ex_style/lv_ex_style_5.c \
../Core/lv_examples/src/lv_ex_style/lv_ex_style_6.c \
../Core/lv_examples/src/lv_ex_style/lv_ex_style_7.c \
../Core/lv_examples/src/lv_ex_style/lv_ex_style_8.c \
../Core/lv_examples/src/lv_ex_style/lv_ex_style_9.c 

OBJS += \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_1.o \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_10.o \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_11.o \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_2.o \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_3.o \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_4.o \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_5.o \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_6.o \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_7.o \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_8.o \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_9.o 

C_DEPS += \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_1.d \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_10.d \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_11.d \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_2.d \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_3.d \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_4.d \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_5.d \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_6.d \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_7.d \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_8.d \
./Core/lv_examples/src/lv_ex_style/lv_ex_style_9.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lv_examples/src/lv_ex_style/%.o: ../Core/lv_examples/src/lv_ex_style/%.c Core/lv_examples/src/lv_ex_style/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"


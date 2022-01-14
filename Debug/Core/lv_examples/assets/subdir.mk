################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lv_examples/assets/img_cogwheel_alpha16.c \
../Core/lv_examples/assets/img_cogwheel_argb.c \
../Core/lv_examples/assets/img_cogwheel_chroma_keyed.c \
../Core/lv_examples/assets/img_cogwheel_indexed16.c \
../Core/lv_examples/assets/img_cogwheel_rgb.c \
../Core/lv_examples/assets/lv_font_montserrat_12_compr_az.c \
../Core/lv_examples/assets/lv_font_montserrat_16_compr_az.c \
../Core/lv_examples/assets/lv_font_montserrat_28_compr_az.c 

OBJS += \
./Core/lv_examples/assets/img_cogwheel_alpha16.o \
./Core/lv_examples/assets/img_cogwheel_argb.o \
./Core/lv_examples/assets/img_cogwheel_chroma_keyed.o \
./Core/lv_examples/assets/img_cogwheel_indexed16.o \
./Core/lv_examples/assets/img_cogwheel_rgb.o \
./Core/lv_examples/assets/lv_font_montserrat_12_compr_az.o \
./Core/lv_examples/assets/lv_font_montserrat_16_compr_az.o \
./Core/lv_examples/assets/lv_font_montserrat_28_compr_az.o 

C_DEPS += \
./Core/lv_examples/assets/img_cogwheel_alpha16.d \
./Core/lv_examples/assets/img_cogwheel_argb.d \
./Core/lv_examples/assets/img_cogwheel_chroma_keyed.d \
./Core/lv_examples/assets/img_cogwheel_indexed16.d \
./Core/lv_examples/assets/img_cogwheel_rgb.d \
./Core/lv_examples/assets/lv_font_montserrat_12_compr_az.d \
./Core/lv_examples/assets/lv_font_montserrat_16_compr_az.d \
./Core/lv_examples/assets/lv_font_montserrat_28_compr_az.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lv_examples/assets/img_cogwheel_alpha16.o: ../Core/lv_examples/assets/img_cogwheel_alpha16.c Core/lv_examples/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/lv_examples/assets/img_cogwheel_alpha16.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/lv_examples/assets/img_cogwheel_argb.o: ../Core/lv_examples/assets/img_cogwheel_argb.c Core/lv_examples/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/lv_examples/assets/img_cogwheel_argb.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/lv_examples/assets/img_cogwheel_chroma_keyed.o: ../Core/lv_examples/assets/img_cogwheel_chroma_keyed.c Core/lv_examples/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/lv_examples/assets/img_cogwheel_chroma_keyed.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/lv_examples/assets/img_cogwheel_indexed16.o: ../Core/lv_examples/assets/img_cogwheel_indexed16.c Core/lv_examples/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/lv_examples/assets/img_cogwheel_indexed16.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/lv_examples/assets/img_cogwheel_rgb.o: ../Core/lv_examples/assets/img_cogwheel_rgb.c Core/lv_examples/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/lv_examples/assets/img_cogwheel_rgb.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/lv_examples/assets/lv_font_montserrat_12_compr_az.o: ../Core/lv_examples/assets/lv_font_montserrat_12_compr_az.c Core/lv_examples/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/lv_examples/assets/lv_font_montserrat_12_compr_az.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/lv_examples/assets/lv_font_montserrat_16_compr_az.o: ../Core/lv_examples/assets/lv_font_montserrat_16_compr_az.c Core/lv_examples/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/lv_examples/assets/lv_font_montserrat_16_compr_az.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/lv_examples/assets/lv_font_montserrat_28_compr_az.o: ../Core/lv_examples/assets/lv_font_montserrat_28_compr_az.c Core/lv_examples/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/lv_examples/assets/lv_font_montserrat_28_compr_az.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"


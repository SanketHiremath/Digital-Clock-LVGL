################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/lv_gpu/lv_gpu_nxp_pxp.c \
../Core/lvgl/src/lv_gpu/lv_gpu_nxp_pxp_osa.c \
../Core/lvgl/src/lv_gpu/lv_gpu_nxp_vglite.c \
../Core/lvgl/src/lv_gpu/lv_gpu_stm32_dma2d.c 

OBJS += \
./Core/lvgl/src/lv_gpu/lv_gpu_nxp_pxp.o \
./Core/lvgl/src/lv_gpu/lv_gpu_nxp_pxp_osa.o \
./Core/lvgl/src/lv_gpu/lv_gpu_nxp_vglite.o \
./Core/lvgl/src/lv_gpu/lv_gpu_stm32_dma2d.o 

C_DEPS += \
./Core/lvgl/src/lv_gpu/lv_gpu_nxp_pxp.d \
./Core/lvgl/src/lv_gpu/lv_gpu_nxp_pxp_osa.d \
./Core/lvgl/src/lv_gpu/lv_gpu_nxp_vglite.d \
./Core/lvgl/src/lv_gpu/lv_gpu_stm32_dma2d.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/lv_gpu/%.o: ../Core/lvgl/src/lv_gpu/%.c Core/lvgl/src/lv_gpu/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"


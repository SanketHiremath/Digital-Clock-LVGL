################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/lvgl/src/lv_draw/lv_draw_arc.c \
../Core/lvgl/src/lv_draw/lv_draw_blend.c \
../Core/lvgl/src/lv_draw/lv_draw_img.c \
../Core/lvgl/src/lv_draw/lv_draw_label.c \
../Core/lvgl/src/lv_draw/lv_draw_line.c \
../Core/lvgl/src/lv_draw/lv_draw_mask.c \
../Core/lvgl/src/lv_draw/lv_draw_rect.c \
../Core/lvgl/src/lv_draw/lv_draw_triangle.c \
../Core/lvgl/src/lv_draw/lv_img_buf.c \
../Core/lvgl/src/lv_draw/lv_img_cache.c \
../Core/lvgl/src/lv_draw/lv_img_decoder.c 

OBJS += \
./Core/lvgl/src/lv_draw/lv_draw_arc.o \
./Core/lvgl/src/lv_draw/lv_draw_blend.o \
./Core/lvgl/src/lv_draw/lv_draw_img.o \
./Core/lvgl/src/lv_draw/lv_draw_label.o \
./Core/lvgl/src/lv_draw/lv_draw_line.o \
./Core/lvgl/src/lv_draw/lv_draw_mask.o \
./Core/lvgl/src/lv_draw/lv_draw_rect.o \
./Core/lvgl/src/lv_draw/lv_draw_triangle.o \
./Core/lvgl/src/lv_draw/lv_img_buf.o \
./Core/lvgl/src/lv_draw/lv_img_cache.o \
./Core/lvgl/src/lv_draw/lv_img_decoder.o 

C_DEPS += \
./Core/lvgl/src/lv_draw/lv_draw_arc.d \
./Core/lvgl/src/lv_draw/lv_draw_blend.d \
./Core/lvgl/src/lv_draw/lv_draw_img.d \
./Core/lvgl/src/lv_draw/lv_draw_label.d \
./Core/lvgl/src/lv_draw/lv_draw_line.d \
./Core/lvgl/src/lv_draw/lv_draw_mask.d \
./Core/lvgl/src/lv_draw/lv_draw_rect.d \
./Core/lvgl/src/lv_draw/lv_draw_triangle.d \
./Core/lvgl/src/lv_draw/lv_img_buf.d \
./Core/lvgl/src/lv_draw/lv_img_cache.d \
./Core/lvgl/src/lv_draw/lv_img_decoder.d 


# Each subdirectory must supply rules for building sources it contributes
Core/lvgl/src/lv_draw/%.o: ../Core/lvgl/src/lv_draw/%.c Core/lvgl/src/lv_draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"


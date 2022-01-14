################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Core/menu/subdir.mk
-include Core/lvgl/tests/lv_test_widgets/subdir.mk
-include Core/lvgl/tests/lv_test_fonts/subdir.mk
-include Core/lvgl/tests/lv_test_core/subdir.mk
-include Core/lvgl/tests/subdir.mk
-include Core/lvgl/src/lv_widgets/subdir.mk
-include Core/lvgl/src/lv_themes/subdir.mk
-include Core/lvgl/src/lv_misc/subdir.mk
-include Core/lvgl/src/lv_hal/subdir.mk
-include Core/lvgl/src/lv_gpu/subdir.mk
-include Core/lvgl/src/lv_font/subdir.mk
-include Core/lvgl/src/lv_draw/subdir.mk
-include Core/lvgl/src/lv_core/subdir.mk
-include Core/lvgl/examples/porting/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_win/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_tileview/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_textarea/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_tabview/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_table/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_switch/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_spinner/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_spinbox/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_slider/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_roller/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_page/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_objmask/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_obj/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_msgbox/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_list/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_linemeter/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_line/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_led/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_label/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_keyboard/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_imgbtn/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_img/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_gauge/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_dropdown/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_cpicker/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_cont/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_checkbox/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_chart/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_canvas/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_calendar/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_btnmatrix/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_btn/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_bar/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/lv_ex_arc/subdir.mk
-include Core/lv_examples/src/lv_ex_widgets/subdir.mk
-include Core/lv_examples/src/lv_ex_style/subdir.mk
-include Core/lv_examples/src/lv_ex_get_started/subdir.mk
-include Core/lv_examples/src/lv_demo_widgets/subdir.mk
-include Core/lv_examples/src/lv_demo_stress/subdir.mk
-include Core/lv_examples/src/lv_demo_printer/images/subdir.mk
-include Core/lv_examples/src/lv_demo_printer/subdir.mk
-include Core/lv_examples/src/lv_demo_keypad_encoder/subdir.mk
-include Core/lv_examples/src/lv_demo_benchmark/subdir.mk
-include Core/lv_examples/assets/subdir.mk
-include Core/clock/subdir.mk
-include Core/breath/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := The_clock_v1.11
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
The_clock_v1.11.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
The_clock_v1.11.list \

OBJCOPY_BIN += \
The_clock_v1.11.bin \


# All Target
all: main-build

# Main-build Target
main-build: The_clock_v1.11.elf secondary-outputs

# Tool invocations
The_clock_v1.11.elf: $(OBJS) $(USER_OBJS) D:\PersonalProjects_andFiles\STM32_PersonalWorkspace\The_clock_v1.11\STM32F411CEUX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "The_clock_v1.11.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"D:\PersonalProjects_andFiles\STM32_PersonalWorkspace\The_clock_v1.11\STM32F411CEUX_FLASH.ld" --specs=nosys.specs -Wl,-Map="The_clock_v1.11.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

The_clock_v1.11.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "The_clock_v1.11.list"
	@echo 'Finished building: $@'
	@echo ' '

The_clock_v1.11.bin: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "The_clock_v1.11.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(SIZE_OUTPUT)$(OBJDUMP_LIST)$(EXECUTABLES)$(OBJS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS)$(OBJCOPY_BIN) The_clock_v1.11.elf
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets

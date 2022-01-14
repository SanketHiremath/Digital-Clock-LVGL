/*
 * state_machine.c
 *
 *  Created on: Jan 26, 2021
 *      Author: Sanket H
 */
//uint8_t screenNumber, bool selButton_state, bool backButton_state, uint8_t navButton_Number

#include "stm32f4xx_hal.h"
#include "state_machine.h"
#include "../breath/breath_ui.h"
#include "../menu/menu_ui.h"
#include "../breath/test_navigation.h"
#include "variables.h"
#include "st7735.h"
//#include "page_clock.h"
#include "../clock/night_clock.h"


buttonState button_register;

uint8_t del_pomodoro_task_flag;


bool button_read(lv_indev_drv_t *drv, lv_indev_data_t * data){
//	uint8_t screenNumber = button_register.screen;

	if( button_register.downButton){
		button_register.downButton = 0;
		lv_group_send_data(g, LV_KEY_UP);
//		lv_group_send_data(m, LV_KEY_UP);
		if (button_register.screen == 5)
			lv_task_del(task);
	}

	else if( button_register.upButton){
		button_register.upButton = 0;
		lv_group_send_data(g, LV_KEY_DOWN);
//		lv_group_send_data(m, LV_KEY_DOWN);
	}

	data->state =LV_INDEV_STATE_REL;
    return false;
}



void run_stateMachine(uint8_t button_pressed)
{
	uint8_t screenNumber = button_register.screen;
//	bool selButton_state = button_register.selectButton;
//	bool backButton_state = button_register.backButton;
//	uint8_t navButton_Number = button_register.navButton;


	switch(button_pressed)
	{
	case SELECTBUTTON:
		switch(screenNumber)
		{
		case 2:
			launch_opn_setting_menu();
			break;
		case 3:
			launch_update_breathing();

			break;
		case 4:
			lv_group_focus_next(g);

			break;
		case 5:
//			lv_group_focus_next(g);

			break;
		case 10:
//			lv_group_focus_next(m);

			break;
		default:
//			analog();
			break;

//		break;
		}
       break;

	case NAVIGATIONBUTTON:
		switch(screenNumber)
		{
		case 1:
			launch_setting_menu_screen();
			break;
		case 2:
			launch_pomedora_menu_screen();
			break;
		default:
			launch_analog_clock();
			break;
		}
		break;

		  default:
				break;

	}

}



void processTasks(void)
{
	if (processButtonFlag == 1) {   //process the button press
		processButtonFlag = 0;

//		if (button_register.upButton == 1) {
//			button_register.upButton = 0;
//			run_stateMachine(UPBUTTON);
//		}
		if (button_register.navigationButton == 1) {
			button_register.navigationButton = 0;
			run_stateMachine(NAVIGATIONBUTTON);
		}
		else if (button_register.selectButton == 1) {
			button_register.selectButton = 0;
			run_stateMachine(SELECTBUTTON);
		}
//		else if (button_register.downButton == 1) {
//			button_register.downButton =  0;
//			run_stateMachine(DOWNBUTTON);
//		}


	}

	if (set_brightness_flag == 1) {   //set the brightness when the value changes in the setting page
		set_brightness_flag = 0;
		Set_Brightness(brightness_val);
	}

	if ((sTime.Hours == 11) && (sTime.Minutes == 0) && (sTime.TimeFormat == RTC_HOURFORMAT12_PM)) {
		Set_Brightness(11);

	}

	if ((sTime.Hours == 07) && (sTime.Minutes == 00) && (sTime.TimeFormat == RTC_HOURFORMAT12_AM)) {
		Set_Brightness(255);

	}

//	if (movement_detection_flag == 1) {
//		movement_detection_flag = 0;
////		HAL_TIM_Base_Start_IT(&htim3);
//		Set_Brightness(brightness_val);
//	}
//
//	if (screen_on_timeout == 1) {
//		screen_on_timeout = 0;
//		Set_Brightness(0);
//	}
//	if (activate_night_ui_flag == 1) {
//		activate_night_ui_flag = 0;
//	}
//
//	if(del_pomodoro_task_flag == 1) {
//		del_pomodoro_task_flag = 0;
//
//	}


}

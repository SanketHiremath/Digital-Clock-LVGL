/*
 * variables.h
 *
 *  Created on: Jan 27, 2021
 *      Author: Sanket H
 */
#include "../lvgl/lvgl.h"
//#include "../lv_examples/lv_examples.h"
#include "../menu/menu_ui.h"
#include "main.h"

#ifndef INC_VARIABLES_H_
#define INC_VARIABLES_H_



typedef struct buttonStates{
	uint8_t screen;
	uint8_t selectButton;
	uint8_t navigationButton;
	uint8_t upButton;
	uint8_t downButton;
}buttonState;

enum {SELECTBUTTON = 1, NAVIGATIONBUTTON = 2, FORWARDBUTTON = 3, UPBUTTON = 4, DOWNBUTTON = 5};

extern RTC_TimeTypeDef sTime;
extern RTC_HandleTypeDef hrtc;
extern RTC_DateTypeDef sDate;
extern TIM_HandleTypeDef htim2;
extern TIM_HandleTypeDef htim3;
extern buttonState button_register;

uint8_t processButtonFlag;
extern uint16_t brightness_val;
extern uint8_t set_brightness_flag;
extern uint8_t movement_detection_flag;
extern uint8_t screen_on_timeout;

extern lv_indev_drv_t enc_drv;
extern lv_group_t*  g;


extern uint8_t activate_night_ui_flag ;
extern uint8_t arc_loader_task_flag;
extern lv_task_t * task;

extern  lv_obj_t * list_btn1;
extern uint8_t flag;


#endif /* INC_VARIABLES_H_ */

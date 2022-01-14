/*
 * test_navigation.c
 *
 *  Created on: Feb 1, 2021
 *      Author: Sanket H
 */

#include <stdio.h>
#include <stdlib.h>
#include "../lvgl/lvgl.h"
#include "breath_ui.h"
#include "variables.h"
#include "../menu/menu_ui.h"
#include "test_navigation.h"
#include"state_machine.h"


static lv_obj_t * scr4;
static lv_obj_t * page_sys;
static lv_obj_t * cont_bluetooth;
static lv_obj_t * sw_bluetooth;
static lv_obj_t * label_bluetooth;
static lv_obj_t * cont_bright;
static lv_obj_t * slider_brightness;
static lv_obj_t * label_bright;


void kill_setting_menu(void) {
    lv_obj_del(scr4);
}

void launch_opn_setting_menu(void) {
	button_register.screen = 4;
//	lv_disp_load_scr(scr4);
	lv_scr_load_anim(scr4, LV_SCR_LOAD_ANIM_MOVE_RIGHT, 300, 100, false);

}

static void slider_event_handler(lv_obj_t * obj, lv_event_t event)
{

     if(event == LV_EVENT_VALUE_CHANGED) {
  //   	brightness_val = lv_slider_get_value(slider_brightness);
     	lv_slider_set_value(slider_brightness, brightness_val, LV_ANIM_ON);
     	set_brightness_flag = 1;
    }
}


void opn_setting_menu(void) {

    //creating a group & setting the input driver
	g = lv_group_create();
    lv_indev_drv_init(&enc_drv);
    enc_drv.type = LV_INDEV_TYPE_KEYPAD;
    enc_drv.read_cb = button_read;
    lv_indev_t * kb_indev = lv_indev_drv_register(&enc_drv);
    lv_indev_set_group(kb_indev, g);

//	scr4 = lv_scr_act();
    scr4 = lv_obj_create(NULL, NULL);
	page_sys = lv_page_create(scr4,NULL);

	//defining the style for the settings menu UI
	static lv_style_t style_menu;
	lv_style_init(&style_menu);
	lv_style_set_text_font(&style_menu, LV_STATE_DEFAULT,&lv_font_montserrat_12);
	lv_style_set_border_width(&style_menu, LV_STATE_DEFAULT , 0);

	//setting page parameters
	lv_obj_set_size(page_sys,128,128);
	lv_obj_align(page_sys,scr4,LV_ALIGN_CENTER,0,0);
	lv_page_set_scrl_layout(page_sys, LV_FIT_TIGHT);     /*Arrange elements automatically*/
	lv_page_set_scrollbar_mode(page_sys, LV_SCROLLBAR_MODE_OFF);
	lv_obj_add_style(page_sys, LV_LABEL_PART_MAIN, &style_menu);
//	lv_obj_set_style_local_bg_color(page_sys, LV_OBJ_PART_MAIN, LV_STATE_DEFAULT, LV_COLOR_BLACK);

	//creating a container for the switch and setting parameters
	cont_bluetooth = lv_cont_create(page_sys,NULL);
	lv_obj_set_width(cont_bluetooth,128);
	lv_cont_set_fit(cont_bluetooth,false);

	//creating a container for the brightness slider
	cont_bright = lv_cont_create(page_sys,cont_bluetooth);

	//creating label for the switch
	label_bluetooth = lv_label_create(cont_bluetooth,NULL);
	lv_label_set_recolor(label_bluetooth,true);
	lv_obj_set_style_local_bg_color(label_bluetooth, LV_OBJ_PART_MAIN, LV_STATE_DEFAULT, LV_COLOR_BLACK);
	lv_obj_add_style(label_bluetooth, LV_LABEL_PART_MAIN, &style_menu);
	lv_label_set_text(label_bluetooth," #FF7F50 Alerts#");

	//creating a label for the slider
	label_bright= lv_label_create(cont_bright,NULL);
	lv_label_set_recolor(label_bright,true);
	lv_obj_set_style_local_bg_color(label_bright, LV_OBJ_PART_MAIN, LV_STATE_DEFAULT, LV_COLOR_BLACK);
	lv_obj_add_style(label_bright, LV_LABEL_PART_MAIN, &style_menu);
	lv_label_set_text(label_bright," #FF7F50 Brightness#");

	//creating a switch
	sw_bluetooth = lv_switch_create(cont_bluetooth,NULL);
	lv_obj_align(sw_bluetooth,label_bluetooth,LV_ALIGN_OUT_RIGHT_MID,20,13);
	lv_switch_on(sw_bluetooth,LV_ANIM_ON);

	//creating a slider object for brightness control
	slider_brightness = lv_slider_create(cont_bright, NULL);
	lv_obj_align(slider_brightness, cont_bright, 0, 95, 5);
	lv_obj_set_width(slider_brightness, 80);
	lv_slider_set_range(slider_brightness, 0, 255);
	lv_slider_set_value(slider_brightness, brightness_val, LV_ANIM_ON);
	lv_obj_set_event_cb(slider_brightness, slider_event_handler);


	//setting focus group and adding objects to thesame group
	lv_group_set_focus_cb(g, NULL);
	lv_group_add_obj(g, sw_bluetooth);
	lv_group_add_obj(g, slider_brightness);
	lv_group_focus_obj(sw_bluetooth);
}

#include "stdio.h"
#include <stdlib.h>
#include <string.h>
#include "../lvgl/lvgl.h"
#include "page_clock.h"
#include "variables.h"
#include "main.h"
#include "state_machine.h"
#include "st7735.h"


//LV_IMG_DECLARE(watch_bg);
LV_IMG_DECLARE(watchface3w);
LV_IMG_DECLARE(watchface3);
LV_IMG_DECLARE(watchface4);
LV_IMG_DECLARE(hour);
LV_IMG_DECLARE(minute);
LV_IMG_DECLARE(second);

static lv_obj_t * scr1;
static lv_obj_t * lvMinute;
static lv_obj_t * lvHour;
static lv_obj_t * lvSecond ;
static lv_obj_t * date_label;
 lv_indev_drv_t enc_drv;
 lv_group_t*  g;


static uint16_t Minute ;
static uint8_t Hour ;
static uint16_t Second;
static uint32_t angle = 0;
uint8_t analog_flag = 0;
static uint8_t hour_flag = 1;
uint8_t activate_night_ui_flag = 0;

int  Date ;
char date_str[2] ;


static lv_obj_t * img = NULL;


void launch_analog_clock(void) {
	button_register.screen = 1;
	lv_scr_load_anim(scr1, LV_SCR_LOAD_ANIM_MOVE_RIGHT, 300, 100, false);

}

void kill_analog_clock(void) {
	 lv_obj_del(scr1);
}


static void update_time(lv_task_t *t)
{

	  HAL_RTC_GetTime(&hrtc, &sTime,RTC_FORMAT_BIN);
	  HAL_RTC_GetDate(&hrtc, &sDate, RTC_FORMAT_BIN);
	  Date = sDate.Date;
	  Minute =sTime.Minutes;
	  Hour =sTime.Hours;
	  Second=sTime.Seconds;


	 lv_label_set_text_fmt(date_label, "%d", Date);
		if(lvHour !=NULL)
		{
		   // Hour,Minute,Second;

			lv_img_set_angle(t->user_data, Second*60);
			lv_img_set_angle(lvMinute, Minute*60);
//			lv_img_set_angle(lvHour, Hour*300);
			if ((Minute > 30) && (Minute < 59)) {

				    angle = (Hour*300) + 120;
				    lv_img_set_angle(lvHour, angle);
//					lv_img_set_angle(lvHour, Hour*300);
					hour_flag = 0;

			}
			else {
				lv_img_set_angle(lvHour, Hour*300);
				hour_flag = 1;
			}
		  }

}





 void analog(void)
{


	 activate_night_ui_flag = 0;

	  static lv_style_t style;
	  lv_style_init(&style);

	  lv_style_set_text_font(&style, LV_STATE_DEFAULT,&lv_font_montserrat_12);


	scr1 = lv_obj_create(NULL, NULL);
	 lv_obj_set_style_local_bg_color(scr1, LV_OBJ_PART_MAIN, LV_STATE_DEFAULT, LV_COLOR_BLACK);

//	lv_scr_load(scr1);

 //   lv_obj_t *central = lv_scr_act();
 //   lv_obj_set_style_local_bg_color(central, LV_OBJ_PART_MAIN, LV_STATE_DEFAULT, LV_COLOR_GRAY);  //LV_COLOR_GRAY
   // lv_obj_set_style_local_bg_grad_color(central,LV_OBJ_PART_MAIN, LV_STATE_DEFAULT,LV_COLOR_GRAY);

    img = lv_img_create(scr1,NULL);
    lv_img_set_src(img, &watchface4);
    //   lv_obj_set_size(img, 80,80);
 //   lv_img_set_zoom(img, 155);
    lv_img_set_auto_size(img, true);
    lv_obj_align(img, NULL,LV_ALIGN_CENTER, 0, 0);
    lv_img_set_antialias(img, true);

    //creating text box for date

    lv_coord_t box_w = 22;
    lv_obj_t * box = lv_obj_create(scr1, NULL);
    lv_obj_set_size(box, box_w, 20);
    lv_obj_align(box, NULL, LV_ALIGN_IN_RIGHT_MID, -26,0);

	  date_label = lv_label_create(scr1, NULL);
	  lv_obj_add_style(date_label, LV_LABEL_PART_MAIN, &style);
	  lv_obj_align(date_label, NULL, LV_ALIGN_IN_RIGHT_MID, -18, 0);
//	  lv_label_set_text(date_label, "00");
 
    lvHour = lv_img_create(scr1,NULL);
    lv_img_set_src( lvHour, &hour);
    lv_img_set_zoom(lvHour, 120);
//    lv_img_set_auto_size(lvHour, true);
    lv_obj_align(lvHour, scr1,LV_ALIGN_CENTER,0 ,0);
    lv_img_set_angle(lvHour, 750);
    lv_img_set_antialias(lvHour, true);
   // lv_img_set_pivot(lvHour, 15, 77);

    lvMinute = lv_img_create(scr1,NULL);
    lv_img_set_src( lvMinute, &minute);
    lv_img_set_zoom(lvMinute, 120);
    lv_img_set_auto_size(lvMinute, true);
    lv_obj_align(  lvMinute, scr1,LV_ALIGN_CENTER, 0, 0);
 //   lv_img_set_angle(lvMinute, 50);
    lv_img_set_antialias(lvMinute, true);
  //  lv_img_set_pivot(lvMinute, 11, 106);

    lvSecond = lv_img_create(scr1,NULL);
    lv_img_set_src( lvSecond, &second); 
    lv_img_set_zoom(lvSecond, 120);
    lv_img_set_auto_size(lvSecond, true);
    lv_obj_align(  lvSecond, scr1,LV_ALIGN_CENTER, 0, 0);
    lv_img_set_angle(lvSecond, 600);
    lv_img_set_antialias(lvSecond, true);
   // lv_img_set_pivot(lvSecond, 10, 118);


    lv_task_create(update_time, 1000, LV_TASK_PRIO_HIGH, lvSecond);
//    lv_task_create(update_sm_function, 4, LV_TASK_PRIO_HIGH, NULL);

}


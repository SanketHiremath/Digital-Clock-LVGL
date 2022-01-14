/*
 * breath_ui.c
 *
 *  Created on: Jan 28, 2021
 *      Author: Sanket H
 */

#include "../lvgl/lvgl.h"
#include "breath_ui.h"
#include "variables.h"
#include "../menu/menu_ui.h"



static lv_obj_t * labels[3];
static lv_obj_t * scr5;
static lv_obj_t * arc;
lv_task_t * task;

LV_IMG_DECLARE(label1);

static uint8_t s = 0;
uint8_t arc_loader_task_flag;





static void arc_loader_hold(void * v)
{
	s=1;
    lv_task_del(v);
    return;
}


static void arc_loader(lv_task_t * task)
{
    static int16_t a = 270;
    const char * texts[] = {"Breath in", "Hold breath", "Breath out", NULL};
 //   static uint8_t i = 0;


 if(s==0){

	 lv_label_set_text(labels[0], texts[0]);
	    a+=5;
	    lv_arc_set_end_angle(task->user_data, a);

     if(a >= 270 + 360)
       {
    	 lv_label_set_text(labels[0], texts[1]);
    	 lv_task_create(arc_loader_hold, 2000, LV_TASK_PRIO_LOWEST, NULL);
       }
   }
  if(s == 1)
     {
    	a-=5;
    	lv_label_set_text(labels[0], texts[2]);
    	lv_arc_set_end_angle(task->user_data, a);
        if(a <= 270 )
         {
           s = 0;
         }
     }
}


void launch_update_breathing() {
	button_register.screen = 5;
//	lv_disp_load_scr(scr5);
	lv_scr_load_anim(scr5, LV_SCR_LOAD_ANIM_MOVE_RIGHT, 300, 100, false);
	task = lv_task_create(arc_loader, 50, LV_TASK_PRIO_LOWEST, arc);

}

void kill_update_breathing() {
	lv_obj_del(scr5);
}


void update_breathing(void)
{

	  static lv_style_t style;
	  lv_style_init(&style);

	  scr5 = lv_obj_create(NULL, NULL);
	  lv_obj_set_style_local_bg_color(scr5, LV_OBJ_PART_MAIN, LV_STATE_DEFAULT, LV_COLOR_BLACK);
//	  lv_scr_load_anim(scr5, LV_SCR_LOAD_ANIM_MOVE_TOP, 300, 100, false);


	  arc = lv_arc_create(scr5, NULL);
	  lv_arc_set_bg_angles(arc, 0, 360);
	  lv_arc_set_angles(arc, 270, 270);
	  lv_obj_align(arc, NULL, LV_ALIGN_CENTER, 0, 0);

	  lv_style_set_text_color(&style, LV_STATE_DEFAULT, LV_COLOR_RED);
	  lv_style_set_text_font(&style, LV_STATE_DEFAULT,&lv_font_montserrat_12);

	  labels[0] = lv_label_create(scr5, NULL);
	  lv_obj_add_style(labels[0], LV_LABEL_PART_MAIN, &style);
	  lv_obj_align(labels[0], NULL, LV_ALIGN_IN_TOP_MID, -20, 0);


	 /* Create an `lv_task` to update the arc.
	  * Store the `arc` in the user data*/

//	 lv_task_set_repeat_count(task, 6);
}


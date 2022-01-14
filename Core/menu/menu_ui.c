#include "../lvgl/lvgl.h"
#include "../lv_examples/lv_examples.h"
#include "menu_ui.h"
#include "variables.h"
#include"state_machine.h"


LV_IMG_DECLARE(settings_icn);
LV_IMG_DECLARE(breath_icn);
LV_IMG_DECLARE(pomedora_icn);
LV_IMG_DECLARE(workout_icn);

static lv_obj_t* scr2;
static lv_obj_t* scr3;
static lv_obj_t * lvIcon1;
static lv_obj_t * lvIcon2;
static lv_obj_t * heading2;
static lv_obj_t * box;
static lv_obj_t * heading1;
static lv_obj_t * heading2;


uint8_t flag = 0;
uint8_t set_brightness_flag;
uint16_t brightness_val;

void launch_setting_menu_screen() {
	button_register.screen = 2;
	lv_scr_load_anim(scr2, LV_SCR_LOAD_ANIM_MOVE_LEFT, 300, 100, false);

}

void launch_pomedora_menu_screen() {
	button_register.screen = 3;
	lv_scr_load_anim(scr3, LV_SCR_LOAD_ANIM_MOVE_LEFT, 300, 100, false);

}

void kill_setting_menu_screen() {
	 lv_obj_del(scr2);
}

void kill_pomedora_menu_screen() {
	 lv_obj_del(scr3);
}


void create_setting_menu (void) {

	static lv_style_t style;

	scr2 = lv_obj_create(NULL, NULL);
	lv_obj_set_style_local_bg_color(scr2, LV_OBJ_PART_MAIN, LV_STATE_DEFAULT, LV_COLOR_BLACK);


    lv_style_init(&style);

    /*Make a gradient*/
    lv_style_set_bg_opa(&style, LV_STATE_DEFAULT, LV_OPA_COVER);
    lv_style_set_bg_color(&style, LV_STATE_DEFAULT, LV_COLOR_BLACK);
    lv_style_set_bg_grad_color(&style, LV_STATE_DEFAULT, LV_COLOR_GRAY);
    lv_style_set_border_width(&style, LV_STATE_DEFAULT , 0);
    lv_style_set_bg_grad_dir(&style, LV_STATE_DEFAULT, LV_GRAD_DIR_HOR);
    lv_style_set_bg_opa(&style, LV_STATE_DEFAULT, LV_OPA_COVER);

    lv_coord_t box_w = 128;
    box = lv_obj_create(scr2, NULL);
    lv_obj_set_size(box, box_w, 25);
    lv_obj_align(box, NULL, LV_ALIGN_IN_TOP_MID, 0, 0);
    lv_obj_add_style(box, LV_OBJ_PART_MAIN, &style);


    heading1 = lv_label_create(scr2, NULL);
    lv_label_set_recolor(heading1, true);                     // Enable re-coloring by commands in the text
    lv_label_set_align(heading1, LV_LABEL_ALIGN_CENTER);       //Center aligned lines
    lv_label_set_text(heading1, "#ffffff Settings#");
    lv_obj_align(heading1, NULL, LV_ALIGN_IN_TOP_MID, 3,0);

//	lv_obj_t *iconObj = scr4;
    lvIcon1 = lv_img_create(scr2,NULL);
    lv_img_set_src( lvIcon1, &settings_icn);
    lv_img_set_zoom(lvIcon1, 155);
    lv_img_set_auto_size(lvIcon1, true);
    lv_obj_align(lvIcon1, scr2,LV_ALIGN_CENTER,0 ,0);

}

void create_pomedora_menu (void) {



	scr3 = lv_obj_create(NULL, NULL);
	lv_obj_set_style_local_bg_color(scr3, LV_OBJ_PART_MAIN, LV_STATE_DEFAULT, LV_COLOR_BLACK);
//	lv_scr_load(scr5);


    static lv_style_t style;
    lv_style_init(&style);
//    lv_style_set_radius(&style, LV_STATE_DEFAULT, 20);

    /*Make a gradient*/
    lv_style_set_bg_opa(&style, LV_STATE_DEFAULT, LV_OPA_COVER);
    lv_style_set_bg_color(&style, LV_STATE_DEFAULT, LV_COLOR_BLACK);
    lv_style_set_bg_grad_color(&style, LV_STATE_DEFAULT, LV_COLOR_GRAY);
    lv_style_set_border_width(&style, LV_STATE_DEFAULT , 0);
    lv_style_set_bg_grad_dir(&style, LV_STATE_DEFAULT, LV_GRAD_DIR_HOR);
    lv_style_set_bg_opa(&style, LV_STATE_DEFAULT, LV_OPA_COVER);

    lv_coord_t box_w = 128;
    lv_obj_t * box = lv_obj_create(scr3, NULL);
    lv_obj_set_size(box, box_w, 25);
    lv_obj_align(box, NULL, LV_ALIGN_IN_TOP_MID, 0, 0);
    lv_obj_add_style(box, LV_OBJ_PART_MAIN, &style);


    heading2 = lv_label_create(scr3, NULL);
    lv_label_set_recolor(heading2, true);                     // Enable re-coloring by commands in the text
    lv_label_set_align(heading2, LV_LABEL_ALIGN_CENTER);       //Center aligned lines
    lv_label_set_text(heading2, "#ffffff Breathing#");
    lv_obj_align(heading2, NULL, LV_ALIGN_IN_TOP_MID, 3,0);

//	lv_obj_t *iconObj = scr5;
    lvIcon2 = lv_img_create(scr3,NULL);
    lv_img_set_src( lvIcon2, &breath_icn);
    lv_img_set_zoom(lvIcon2, 155);
    lv_img_set_auto_size(lvIcon2, true);
    lv_obj_align(lvIcon2, scr3,LV_ALIGN_CENTER,0 ,0);

//	return (scr5);
}

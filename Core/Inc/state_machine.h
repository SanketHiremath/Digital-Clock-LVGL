/*
 * state_machine.h
 *
 *  Created on: Jan 26, 2021
 *      Author: Sanket H
 */

#ifndef INC_STATE_MACHINE_H_
#define INC_STATE_MACHINE_H_
#include <stdbool.h>
#include "variables.h"
#include "page_clock.h"
#include "../menu/menu_ui.h"
#include "main.h"

bool button_read(lv_indev_drv_t *drv, lv_indev_data_t * data);
void run_stateMachine(uint8_t button_pressed);
void processTasks(void);

#endif /* INC_STATE_MACHINE_H_ */

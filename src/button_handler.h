#ifndef _BUTTON_H_
#define _BUTTON_H_

#include <stdint.h>

#define BUTTON_1 BIT(0)
#define BUTTON_2 BIT(1)

typedef enum{
    LONG_PRESS = 1 ,
    SHOT_PRESS = 0 ,
}PRESS_STATUS ; 

typedef void (*button_handler_t)(uint32_t buttons, uint32_t has_changed,PRESS_STATUS button_press_status);

int button_handler_init(button_handler_t button_func);

#endif

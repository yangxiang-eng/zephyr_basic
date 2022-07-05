#include <zephyr.h>
#include <sys/printk.h>
#include "button_handler.h"
#include <nrfx_timer.h>
#include "led.h"

#define MS  400 
#define BUTTON_MS 1000
struct k_timer my_timer ; 

//这是一个周期行定时器，如果需要可以在回调函数中关闭
void my_timer_handler(struct k_timer *dummy)
{
	// printk("timer out\n");
	//上电闪灯
	led_off();
	k_timer_stop(&my_timer);
}

static void button_handler(uint32_t button ,uint32_t changed , PRESS_STATUS result);

void main(void)
{
	printk("hello_world\n");
	led_init();
	//第三个参数是stop_timer后执行的任务,可以不写
	k_timer_init(&my_timer , my_timer_handler,NULL);
	k_timer_start(&my_timer,K_MSEC(MS),K_MSEC(MS));
	button_handler_init(button_handler);

}

static void button_handler(uint32_t button , uint32_t changed,PRESS_STATUS result)
{
	if(button ==BUTTON_1)
	{
		if(result ==LONG_PRESS && changed ==1)
		{
			printk("button1 long press\n");
			led_on();
			k_timer_start(&my_timer,K_MSEC(BUTTON_MS),K_MSEC(BUTTON_MS));
		}
		else if(result ==SHOT_PRESS && changed ==1)
		{
			printk("button1 shot press\n");
			
		}
	}
	if(button ==BUTTON_2)
	{
		if(result ==LONG_PRESS && changed ==1)
		{
			printk("button2 long press\n");
			led_on();
			k_timer_start(&my_timer,K_MSEC(BUTTON_MS),K_MSEC(BUTTON_MS));
		}
		else if(result ==SHOT_PRESS && changed ==1)
		{
			printk("button2 shot press\n");
			
		}
	}
	
}
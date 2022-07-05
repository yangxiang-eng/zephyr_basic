/*
 * Copyright (c) 2016 Open-RnD Sp. z o.o.
 * Copyright (c) 2020 Nordic Semiconductor ASA
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <zephyr.h>
#include <device.h>
#include <drivers/gpio.h>
#include <sys/util.h>
#include <sys/printk.h>
#include <inttypes.h>
#include "button_handler.h"

#define SW0_NODE	DT_ALIAS(sw0)
#if DT_NODE_HAS_STATUS(DT_ALIAS(sw1), okay)
#define SW1_NODE	DT_ALIAS(sw1)
#endif

#define LONG_MS  2000

#define SHOT_MS 80

struct k_timer button1_long_timer ; 
struct k_timer button2_long_timer ; 

struct k_timer button1_shot_timer ; 
struct k_timer button2_shot_timer;

static struct gpio_callback button_cb_data;
static button_handler_t gap_button_func = NULL;

static const struct gpio_dt_spec s_button1 = GPIO_DT_SPEC_GET_OR(SW0_NODE, gpios,
        {
            0
        });
static const struct gpio_dt_spec s_button2 = GPIO_DT_SPEC_GET_OR(SW1_NODE, gpios,
        {
            0
        });

void button1_long_timer_handler(struct k_timer *dummy)
{
    int val = gpio_pin_get_dt(&s_button1);
    if(val==1)
    {
        gap_button_func(BUTTON_1 ,val , LONG_PRESS);
        k_timer_stop(&button1_long_timer);
    }
}

void button2_long_timer_handler(struct k_timer *dummy)
{
    int val = gpio_pin_get_dt(&s_button2);
    if(val==1)
    {
        gap_button_func(BUTTON_2 ,val , LONG_PRESS);
        k_timer_stop(&button2_long_timer);
    }
}

void button1_shot_timer_handler(struct k_timer *dummy)
{
    int val = gpio_pin_get_dt(&s_button1);
    if(val ==1)
    {
        gap_button_func(BUTTON_1,val,SHOT_PRESS);
        k_timer_stop(&button1_shot_timer);
        k_timer_start(&button1_long_timer,K_MSEC(LONG_MS),K_MSEC(LONG_MS));
    }
}

void button2_shot_timer_handler(struct k_timer *dummy)
{
    int val = gpio_pin_get_dt(&s_button2);
    if(val ==1)
    {
        gap_button_func(BUTTON_2,val,SHOT_PRESS);
        k_timer_stop(&button2_shot_timer);
        k_timer_start(&button2_long_timer,K_MSEC(LONG_MS),K_MSEC(LONG_MS));
    }
}




static void button_pressed(const struct device *dev, struct gpio_callback *cb, uint32_t pins)
{
    if (BIT(s_button1.pin) == pins && gap_button_func)
    {
        k_timer_start(&button1_shot_timer,K_MSEC(SHOT_MS),K_MSEC(SHOT_MS));
    }
#ifdef SW1_NODE    
    else if (BIT(s_button2.pin) == pins && gap_button_func)
    {
        k_timer_start(&button2_shot_timer,K_MSEC(SHOT_MS),K_MSEC(SHOT_MS));
    }
#endif    
}

int button_handler_init(button_handler_t button_func)
{
    k_timer_init(&button1_long_timer,button1_long_timer_handler,NULL);
    k_timer_init(&button2_long_timer,button2_long_timer_handler,NULL);
    k_timer_init(&button1_shot_timer,button1_shot_timer_handler,NULL);
    k_timer_init(&button2_shot_timer,button2_shot_timer_handler,NULL);
    int ret = 0;

    gap_button_func = button_func;
    if (!device_is_ready(s_button1.port))
    {
        printk("Error: button device %s is not ready\n", s_button1.port->name);
        return -1;
    }
    ret = gpio_pin_configure_dt(&s_button1, GPIO_INPUT);
    if (ret != 0)
    {
        printk("Error %d: failed to configure %s pin %d\n", ret, s_button1.port->name, s_button1.pin);
        return ret;
    }

    ret = gpio_pin_interrupt_configure_dt(&s_button1, GPIO_INT_EDGE_BOTH);
    if (ret != 0) 
    {
      printk("Error %d: failed to configure interrupt on %s pin %d\n", ret, s_button1.port->name, s_button1.pin);
      return ret;
    }

#ifdef SW1_NODE
    if (!device_is_ready(s_button2.port))
    {
        printk("Error: button device %s is not ready\n",  s_button2.port->name);
        return -1;
    }
    ret = gpio_pin_configure_dt(&s_button2, GPIO_INPUT);
    if (ret != 0)
    {
        printk("Error %d: failed to configure %s pin %d\n", ret, s_button2.port->name, s_button2.pin);
        return ret ;
    }

    ret = gpio_pin_interrupt_configure_dt(&s_button2, GPIO_INT_EDGE_BOTH);
    if (ret != 0) 
    {
      printk("Error %d: failed to configure interrupt on %s pin %d\n", ret, s_button2.port->name, s_button2.pin);
      return ret;
    }
    
    gpio_init_callback(&button_cb_data, button_pressed, BIT(s_button1.pin) | BIT(s_button2.pin) );
    gpio_add_callback(s_button1.port, &button_cb_data);
    gpio_add_callback(s_button2.port, &button_cb_data);

#else
    gpio_init_callback(&button_cb_data, button_pressed, BIT(s_button1.pin));
    gpio_add_callback(s_button1.port, &button_cb_data);
#endif

    printk("init button driver complete\n");
    return 0;
}


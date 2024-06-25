/*
 * drv8835.c
 *
 *  Created on: Mar 7, 2024
 *      Author: Y700
 */
#include "main.h"
#include "tim.h"
#include "drv8835.h"
#include "stm32_hal_legacy.h"
#include "stm32f4xx_hal_tim.h"



void drv8835_mode_control(DRV8835_Mode mode)
{
	if(mode == Phase_Enable_Mode)
		HAL_GPIO_WritePin(MODE_GPIO_Port, MODE_Pin, SET);
	else if(mode == In_In_Mode)
		HAL_GPIO_WritePin(MODE_GPIO_Port, MODE_Pin, RESET);
}

void drv8835_set_motorA_direction(DRV8835_Direction dir)
{
	if(dir == CeW)
		HAL_GPIO_WritePin(APHASE_GPIO_Port, APHASE_Pin, SET);
	else if(dir == CCW)
		HAL_GPIO_WritePin(APHASE_GPIO_Port, APHASE_Pin, RESET);
}

void drv8835_set_motorA_speed(uint8_t speed)
{
	if(speed >= htim3.Instance->ARR)
		speed = htim3.Instance->ARR;

	__HAL_TIM_SetCompare(&htim3, TIM_CHANNEL_1, speed);
}

void drv8835_init()
{
	drv8835_mode_control(Phase_Enable_Mode);
	drv8835_set_motorA_direction(CCW);
	drv8835_set_motorA_speed(0);

	HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_1);
}



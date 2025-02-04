/*
 * button.c
 *
 *  Created on: Feb 3, 2025
 *      Author: Y700
 */

#include "main.h"
#include "button.h"
#include "cmsis_os2.h"

void ButtonInitKey (TBUTTON *key,GPIO_TypeDef *GpioPort,uint16_t GpioPin,uint32_t TimerDebounce,uint32_t TimerLongPress,uint32_t TimerRepeat)
{
	key->State = IDLE;
	key->GpioPort = GpioPort;
	key->GpioPin = GpioPin;
	key->TimerDebounce = TimerDebounce;
	key->TimerLongPress = TimerLongPress;
	key->TimerRepeat = TimerRepeat;
}
//time setting functions
void ButtonSetDebounceTime(TBUTTON *key,uint32_t Miliseconds)
{
	key->TimerDebounce = Miliseconds;
}
//register buttons
void ButtonRegisterPressCallback(TBUTTON *key,void (*Callback)())
{
	key->ButtonPressed = Callback;
}
void ButtonRegisterLongPressCallback(TBUTTON *key,void (*Callback)())
{
	key->ButtonLongPressed = Callback;
}
void ButtonRegisterRepeatCallback(TBUTTON *key,void (*Callback)())
{
	key->ButtonRepeat = Callback;
}
void ButtonIdleRoute(TBUTTON * key)
	{
		if(HAL_GPIO_ReadPin(key->GpioPort, key->GpioPin) == GPIO_PIN_RESET)
		{
			key->State = DEBOUNCE;
			key->LastTick = osKernelGetTickCount();
		}
	}
void ButtonDebounceRoute(TBUTTON * key)
	{
		if ((osKernelGetTickCount() - key->LastTick) > key ->TimerDebounce)
		{
			if(HAL_GPIO_ReadPin(key->GpioPort, key->GpioPin) == GPIO_PIN_RESET)
			{
				key->State = PRESSED;
				key->LastTick = osKernelGetTickCount();
				if (key->ButtonPressed != 0)
				{
					key->ButtonPressed;
				}
			}
		}
		else
		{
			key->State = IDLE;
		}

	}
void ButtonPressedRoute(TBUTTON * key)
	{
		if (HAL_GPIO_ReadPin(key->GpioPort, key->GpioPin) == GPIO_PIN_SET)
		{
			key->State = IDLE;
		}
		else
		{
			if ((osKernelGetTickCount() - key->LastTick) > key ->TimerLongPress)
			{
				key->State = REPEAT;
				key->LastTick = osKernelGetTickCount();
				if (key->ButtonLongPressed != 0)
					{
						key->ButtonLongPressed;
					}
			}
		}
	}
void ButtonRepeatRoute(TBUTTON * key)
	{
		if (HAL_GPIO_ReadPin(key->GpioPort, key->GpioPin) == GPIO_PIN_SET)
				{
					key->State = IDLE;
				}
		else
		{
			if ((osKernelGetTickCount() - key->LastTick) > key ->TimerRepeat)
			{
				key->LastTick = osKernelGetTickCount();
				if (key->ButtonRepeat != 0)
					{

						key->ButtonRepeat;

					}
			}
		}
	}
//State machine
void ButtonTask(TBUTTON * key)
{
	switch(key->State)
	{
		case IDLE:
			ButtonIdleRoute(key);
			break;
		case DEBOUNCE:
			ButtonDebounceRoute(key);
			break;

		case PRESSED:
			ButtonPressedRoute(key);
			break;
		case REPEAT:
			ButtonRepeatRoute( key);
			break;
	}
}

/*
 * button.c
 *
 *  Created on: Feb 3, 2025
 *      Author: Y700
 */

#include "main.h"
#include "button.h"
#include "cmsis_os2.h"
#include <stdint.h>

extern osMessageQueueId_t QueueCounterPumpHandle;

//void ButtonInitKey (TBUTTON *key,CONFIG_MANAGER *config,BUTTON_TYPE Type,GPIO_TypeDef *GpioPort,uint16_t GpioPin,uint32_t TimerDebounce,uint32_t TimerLongPress,uint32_t TimerRepeat)
//{
//	key->State = IDLE;
//	key->Type = Type;
//	key->GpioPort = GpioPort;
//	key->GpioPin = GpioPin;
//	key->TimerDebounce = TimerDebounce;
//	key->TimerLongPress = TimerLongPress;
//	key->TimerRepeat = TimerRepeat;
//
//
//	 // Przypisanie domyślnych wskaźników do funkcji
//	    switch (Type)
//	    {
//	    	case OPTION:
//	               key->ButtonPressed = ButtonOptionPressed;
//	               break;
//	           case ACTIVATED:
//	        	   key->ButtonPressed = ButtonActivatedPressed;
//	        	   key->ButtonLongPressed = ButtonActivatedPressed;
//
//	               break;
//	           case UP:
//	        	   key->ButtonPressed = ButtonUpPressed;
//	               break;
//	           case DOWN:
//	        	   key->ButtonPressed = ButtonDownPressed;
//	        	   key->ButtonLongPressed = ButtonDownPressed;
////	        	   key->ButtonRepeat = ButtonDownPressed;
//	               break;
//	           default:
//	        	   key->ButtonPressed = NULL;
//	               break;
//	    }
//
//}
//time setting functions
//void ButtonSetDebounceTime(TBUTTON *key,uint32_t Miliseconds)
//{
//	key->TimerDebounce = Miliseconds;
//}
////register buttons
//void ButtonRegisterPressCallback(TBUTTON *key,void (*Callback)())
//{
//	key->ButtonPressed = Callback;
//}
//void ButtonRegisterLongPressCallback(TBUTTON *key,void (*Callback)())
//{
//	key->ButtonLongPressed = Callback;
//}
//void ButtonRegisterRepeatCallback(TBUTTON *key,void (*Callback)())
//{
//	key->ButtonRepeat = Callback;
//}
//void ButtonIdleRoute(TBUTTON * key)
//	{
//		if(HAL_GPIO_ReadPin(key->GpioPort, key->GpioPin) == GPIO_PIN_RESET)
//		{
//			key->State = DEBOUNCE;
//			key->LastTick = osKernelGetTickCount();
//		}
//	}
//void ButtonDebounceRoute(TBUTTON * key, CONFIG_MANAGER *config)
//	{
//		if ((osKernelGetTickCount() - key->LastTick) > key ->TimerDebounce)
//		{
//			if(HAL_GPIO_ReadPin(key->GpioPort, key->GpioPin) == GPIO_PIN_RESET)
//			{
//				key->State = PRESSED;
//				key->LastTick = osKernelGetTickCount();
//				if (key->ButtonPressed != 0)
//				{
//					key->ButtonPressed(config);
//					osMessageQueuePut(QueueCounterPumpHandle, &config , 0, 50);
//
//				}
//			}
//		}
//		else
//		{
//			key->State = IDLE;
//		}
//
//	}
//void ButtonPressedRoute(TBUTTON * key,CONFIG_MANAGER *config)
//	{
//		if (HAL_GPIO_ReadPin(key->GpioPort, key->GpioPin) == GPIO_PIN_SET)
//		{
//			key->State = IDLE;
//		}
//		else
//		{
//			if ((osKernelGetTickCount() - key->LastTick) > key ->TimerLongPress)
//			{
////				key->State = REPEAT;
//				key->LastTick = osKernelGetTickCount();
//				if (key->ButtonLongPressed != 0)
//					{
//						key->ButtonLongPressed(config);
//						osMessageQueuePut(QueueCounterPumpHandle, &config , 0, 50);
//					}
//			}
//		}
//	}
//void ButtonRepeatRoute(TBUTTON * key,CONFIG_MANAGER *config)
//	{
//		if (HAL_GPIO_ReadPin(key->GpioPort, key->GpioPin) == GPIO_PIN_SET)
//				{
//					key->State = IDLE;
//				}
//		else
//		{
//			if ((osKernelGetTickCount() - key->LastTick) > key ->TimerRepeat)
//			{
//				key->LastTick = osKernelGetTickCount();
//				if (key->ButtonRepeat != 0)
//					{
//
//						key->ButtonRepeat(config);
//						osMessageQueuePut(QueueCounterPumpHandle, &config , 0, 50);
//
//					}
//			}
//		}
//	}


void ButtonUpPressed(CONFIG_MANAGER *config)
{
		if (config->CurrentConfig == CONFIG_PUMP_TIME && config->TempValue < 60)
			{
			if (config->TempValue < 60)
				config->TempValue++;
			else
				config->TempValue = 1;
			}
	    else if (config->CurrentConfig == CONFIG_ALARM_FREQ && config->TempValue < 24)
			{
	    		if(config->TempValue < 24)
	    			config->TempValue++;
	    		else
	    			config->TempValue = 1;
			}
	}

// DOWN - Zmniejsza wartość w aktualnym trybie konfiguracji
void ButtonDownPressed(CONFIG_MANAGER *config)
{
	  if (config->CurrentConfig == CONFIG_PUMP_TIME )
	    {
		  if (config->TempValue > 1)
	          config->TempValue--;
		  else
			  config->TempValue=59;
	    }
	    else if (config->CurrentConfig == CONFIG_ALARM_FREQ )
	    {
	    	if (config->TempValue > 1)
	    		config->TempValue--;
	    	else
	    		config ->TempValue = 23;
	    }
}


void ButtonOptionPressed(CONFIG_MANAGER *config)
{

    config->CurrentConfig++;
    if (config->CurrentConfig >= CONFIG_TYPE_COUNT)
    {
        config->CurrentConfig = CONFIG_PUMP_TIME;
    }

    // Po zmianie opcji przywracamy niezatwierdzoną wartość
    switch (config->CurrentConfig)
    {
        case CONFIG_PUMP_TIME:
            config->TempValue = config->PumpTime;
            break;
        case CONFIG_ALARM_FREQ:
            config->TempValue = config->AlarmFreq;
            break;

    }
}

// ACTIVATED - Zatwierdza zmianę i zapisuje wartość

void ButtonActivatedPressed(CONFIG_MANAGER *config)
{
	switch (config->CurrentConfig)
	    {
	        case CONFIG_PUMP_TIME:
	            config->PumpTime = config->TempValue;
	            break;
	        case CONFIG_ALARM_FREQ:
	            config->AlarmFreq = config->TempValue;
	            break;
	    }
}




//State machine
//void ButtonTask(TBUTTON * key,CONFIG_MANAGER *config)
//{
//	switch(key->State)
//	{
//		case IDLE:
//			ButtonIdleRoute(key);
//			break;
//		case DEBOUNCE:
//			ButtonDebounceRoute(key,config);
//			break;
//
//		case PRESSED:
//			ButtonPressedRoute(key,config);
//			break;
////		case REPEAT:
////			ButtonRepeatRoute( key,config);
////			break;
//	}
//}

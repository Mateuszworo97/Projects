/*
 * button.h
 *
 *  Created on: Feb 3, 2025
 *      Author: Y700
 */

#ifndef INC_BUTTON_H_
#define INC_BUTTON_H_

//state for state machine
typedef enum
{
	IDLE = 0,
	DEBOUNCE,
	PRESSED,
	REPEAT
}BUTTON_STATE;

// struct for button
typedef struct
{
	BUTTON_STATE State;
	GPIO_TypeDef *GpioPort;
	uint16_t GpioPin;

	uint32_t LastTick;
	uint32_t TimerDebounce;
	uint32_t TimerLongPress;
	uint32_t TimerRepeat;

	void (*ButtonPressed)(void);
	void (*ButtonLongPressed)(void);
	void (*ButtonRepeat)(void);

}TBUTTON;

//public functions
void ButtonInitKey (TBUTTON *key,GPIO_TypeDef *GpioPort,uint16_t GpioPin,uint32_t TimerDebounce,
		uint32_t TimerLongPress,uint32_t TimerRepeat);
void ButtonRegisterPressCallback(TBUTTON *key,void (*Callback)());
void ButtonRegisterLongPressCallback(TBUTTON *key,void (*Callback)());
void ButtonRegisterRepeatCallback(TBUTTON *key,void (*Callback)());

void ButtonIdleRoute(TBUTTON * key);
void ButtonDebounceRoute(TBUTTON * key);
void ButtonPressedRoute(TBUTTON * key);
void ButtonTask(TBUTTON * key);

#endif /* INC_BUTTON_H_ */

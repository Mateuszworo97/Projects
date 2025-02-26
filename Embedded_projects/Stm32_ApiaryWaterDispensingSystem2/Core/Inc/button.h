/*
 * button.h
 *
 *  Created on: Feb 3, 2025
 *      Author: Y700
 */

#ifndef INC_BUTTON_H_
#define INC_BUTTON_H_
/*
typedef uint8_t (*CallbackUp) (uint8_t);
typedef uint8_t (*CallbackDown) (uint8_t);
typedef void (*CallbackActivated) (void);
typedef uint8_t (*CallbackOption) (uint8_t);
*/
//state for state machine
//typedef union
//{
//	CallbackUp withArgIncrement;
//	CallbackDown withArgDecrement;
//	CallbackActivated noArg;
//	CallbackOption withArgOption;
//}ButtonCallback;
typedef enum
{
	CONFIG_PUMP_TIME = 0,
	CONFIG_ALARM_FREQ,
	CONFIG_TYPE_COUNT
}CONFIG_TYPE;
//typedef enum
//{
//		MENU_IDLE = 0,      // Brak akcji
//	    MENU_SET_TIME,      // Ustawienie czasu pompowania
//		MENU_SET_ALARM,
//	    MENU_ACTIVATE_PUMP, // Aktywacja pompy
//	    MENU_ADVANCED,      // Zaawansowane opcje
//	    MENU_TYPE_COUNT
//
//};

typedef struct
{
		CONFIG_TYPE CurrentConfig ;  // Aktualnie edytowana opcja
	     uint8_t PumpTime  ;           // Ustawiona wartość czasu pompowania
	     uint8_t AlarmFreq ;          // Ustawiona wartość częstotliwości alarmu

	     uint8_t TempValue ;          // Tymczasowa wartość edytowanej opcji
	     uint8_t AcceptedValue ;      // Zatwierdzona wartość

}CONFIG_MANAGER;
typedef enum
{
	IDLE = 0,
	DEBOUNCE,
	PRESSED,
	REPEAT,
}BUTTON_STATE;

typedef enum
{
	UP = 0,
	DOWN,
	ACTIVATED,
	OPTION,

}BUTTON_TYPE;

// struct for button
typedef struct
{
	BUTTON_STATE State;
	BUTTON_TYPE Type;
	GPIO_TypeDef *GpioPort;
	uint16_t GpioPin;

	uint32_t LastTick;
	uint32_t TimerDebounce;
	uint32_t TimerLongPress;
	uint32_t TimerRepeat;


	void (*ButtonPressed)(CONFIG_MANAGER *config);
	void (*ButtonLongPressed)(CONFIG_MANAGER *config);
	void (*ButtonRepeat)(CONFIG_MANAGER *config);



}TBUTTON;

//public functions
void ButtonInitKey (TBUTTON *key,CONFIG_MANAGER *config,BUTTON_TYPE Type,GPIO_TypeDef *GpioPort,uint16_t GpioPin,uint32_t TimerDebounce,uint32_t TimerLongPress,uint32_t TimerRepeat);
void ButtonRegisterPressCallback(TBUTTON *key,void (*Callback)());
void ButtonRegisterLongPressCallback(TBUTTON *key,void (*Callback)());
void ButtonRegisterRepeatCallback(TBUTTON *key,void (*Callback)());

void ButtonUpPressed(CONFIG_MANAGER *config);
void ButtonDownPressed(CONFIG_MANAGER *config);
void ButtonOptionPressed(CONFIG_MANAGER *config);
void ButtonActivatedPressed(CONFIG_MANAGER *config);

void ButtonIdleRoute(TBUTTON * key);
void ButtonDebounceRoute(TBUTTON * key,CONFIG_MANAGER *config);
void ButtonPressedRoute(TBUTTON * key,CONFIG_MANAGER *config);
void ButtonTask(TBUTTON * key,CONFIG_MANAGER *config);

#endif /* INC_BUTTON_H_ */

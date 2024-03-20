/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "semphr.h"

#include "stm32f4xx_it.h"
#include "stm32f4xx_hal.h"
#include "stm32f4xx_hal_gpio_ex.h"
#include "stm32f4xx_hal_rtc_ex.h"
#include "stm32_hal_legacy.h"
#include "stm32f4xx_hal_gpio.h"
#include "stm32f4xx_hal_rtc.h"
#include "stm32f4xx_hal_i2c.h"

#include "stm32f4xx_hal_exti.h"
#include "stm32f4xx_hal_uart.h"

#include <stdio.h>
#include <printf.h>

#include "usart.h"
#include "gpio.h"
#include "i2c.h"
#include "rtc.h"
#include "bme280.h"
#include "tim.h"
#include "SSD1306_OLED.h"
#include "drv8835.h"

#include "bh1750.h"
#include "GFX_BW.h"
#include "fonts/font_8x5.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */
typedef struct {
	float Humidity;
	float Temperature;
	int32_t Pressure;
} BmeData_t;
typedef struct {
	float LightIntensity;

} BHData_t;




/* USER CODE END Variables */
/* Definitions for TaskLed */
osThreadId_t TaskLedHandle;
const osThreadAttr_t TaskLed_attributes = {
  .name = "TaskLed",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskRTC */
osThreadId_t TaskRTCHandle;
const osThreadAttr_t TaskRTC_attributes = {
  .name = "TaskRTC",
  .stack_size = 2048 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskBme280 */
osThreadId_t TaskBme280Handle;
const osThreadAttr_t TaskBme280_attributes = {
  .name = "TaskBme280",
  .stack_size = 512 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskBH1750 */
osThreadId_t TaskBH1750Handle;
const osThreadAttr_t TaskBH1750_attributes = {
  .name = "TaskBH1750",
  .stack_size = 512 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskSSD1306 */
osThreadId_t TaskSSD1306Handle;
const osThreadAttr_t TaskSSD1306_attributes = {
  .name = "TaskSSD1306",
  .stack_size = 2048 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskPumpON */
osThreadId_t TaskPumpONHandle;
const osThreadAttr_t TaskPumpON_attributes = {
  .name = "TaskPumpON",
  .stack_size = 512 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskPumpOFF */
osThreadId_t TaskPumpOFFHandle;
const osThreadAttr_t TaskPumpOFF_attributes = {
  .name = "TaskPumpOFF",
  .stack_size = 256 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskCounterUp */
osThreadId_t TaskCounterUpHandle;
const osThreadAttr_t TaskCounterUp_attributes = {
  .name = "TaskCounterUp",
  .stack_size = 512 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskCounterDown */
osThreadId_t TaskCounterDownHandle;
const osThreadAttr_t TaskCounterDown_attributes = {
  .name = "TaskCounterDown",
  .stack_size = 256 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskAlarmCountU */
osThreadId_t TaskAlarmCountUHandle;
const osThreadAttr_t TaskAlarmCountU_attributes = {
  .name = "TaskAlarmCountU",
  .stack_size = 256 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskAlarmCountD */
osThreadId_t TaskAlarmCountDHandle;
const osThreadAttr_t TaskAlarmCountD_attributes = {
  .name = "TaskAlarmCountD",
  .stack_size = 256 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for QueueBme */
osMessageQueueId_t QueueBmeHandle;
const osMessageQueueAttr_t QueueBme_attributes = {
  .name = "QueueBme"
};
/* Definitions for QueueBh1750 */
osMessageQueueId_t QueueBh1750Handle;
const osMessageQueueAttr_t QueueBh1750_attributes = {
  .name = "QueueBh1750"
};
/* Definitions for QueueRTCData */
osMessageQueueId_t QueueRTCDataHandle;
const osMessageQueueAttr_t QueueRTCData_attributes = {
  .name = "QueueRTCData"
};
/* Definitions for QueueRTCTime */
osMessageQueueId_t QueueRTCTimeHandle;
const osMessageQueueAttr_t QueueRTCTime_attributes = {
  .name = "QueueRTCTime"
};
/* Definitions for QueueCounterPump */
osMessageQueueId_t QueueCounterPumpHandle;
const osMessageQueueAttr_t QueueCounterPump_attributes = {
  .name = "QueueCounterPump"
};
/* Definitions for QueueAlarm */
osMessageQueueId_t QueueAlarmHandle;
const osMessageQueueAttr_t QueueAlarm_attributes = {
  .name = "QueueAlarm"
};
/* Definitions for TimerBmeData */
osTimerId_t TimerBmeDataHandle;
const osTimerAttr_t TimerBmeData_attributes = {
  .name = "TimerBmeData"
};
/* Definitions for TimerBh1750Data */
osTimerId_t TimerBh1750DataHandle;
const osTimerAttr_t TimerBh1750Data_attributes = {
  .name = "TimerBh1750Data"
};
/* Definitions for TimerRTC */
osTimerId_t TimerRTCHandle;
const osTimerAttr_t TimerRTC_attributes = {
  .name = "TimerRTC"
};
/* Definitions for MutexPrintf */
osMutexId_t MutexPrintfHandle;
const osMutexAttr_t MutexPrintf_attributes = {
  .name = "MutexPrintf"
};
/* Definitions for MutexI2C */
osMutexId_t MutexI2CHandle;
const osMutexAttr_t MutexI2C_attributes = {
  .name = "MutexI2C"
};
/* Definitions for MutexRTC */
osMutexId_t MutexRTCHandle;
const osMutexAttr_t MutexRTC_attributes = {
  .name = "MutexRTC"
};
/* Definitions for MutexAlarm */
osMutexId_t MutexAlarmHandle;
const osMutexAttr_t MutexAlarm_attributes = {
  .name = "MutexAlarm"
};
/* Definitions for MutexI2C2 */
osMutexId_t MutexI2C2Handle;
const osMutexAttr_t MutexI2C2_attributes = {
  .name = "MutexI2C2"
};
/* Definitions for BinarySemBme280 */
osSemaphoreId_t BinarySemBme280Handle;
const osSemaphoreAttr_t BinarySemBme280_attributes = {
  .name = "BinarySemBme280"
};
/* Definitions for BinarySemBH1750 */
osSemaphoreId_t BinarySemBH1750Handle;
const osSemaphoreAttr_t BinarySemBH1750_attributes = {
  .name = "BinarySemBH1750"
};
/* Definitions for BinarySemRTC */
osSemaphoreId_t BinarySemRTCHandle;
const osSemaphoreAttr_t BinarySemRTC_attributes = {
  .name = "BinarySemRTC"
};
/* Definitions for BinarySemCountUp */
osSemaphoreId_t BinarySemCountUpHandle;
const osSemaphoreAttr_t BinarySemCountUp_attributes = {
  .name = "BinarySemCountUp"
};
/* Definitions for BinarySemCountDown */
osSemaphoreId_t BinarySemCountDownHandle;
const osSemaphoreAttr_t BinarySemCountDown_attributes = {
  .name = "BinarySemCountDown"
};
/* Definitions for BinarySemSetAlarm */
osSemaphoreId_t BinarySemSetAlarmHandle;
const osSemaphoreAttr_t BinarySemSetAlarm_attributes = {
  .name = "BinarySemSetAlarm"
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */
void _putchar(char character);
/* USER CODE END FunctionPrototypes */

void StartTaskL(void *argument);
void StartTaskRTC(void *argument);
void StartTaskBme280(void *argument);
void StartTaskBH1750(void *argument);
void StartTaskSSD1306(void *argument);
void StartTaskPumpON(void *argument);
void StartTaskPumpOFF(void *argument);
void StartTaskCounterPumpUp(void *argument);
void StartTaskCounterDown(void *argument);
void StartTaskAlarmCounterUp(void *argument);
void StartTaskAlarmCountDown(void *argument);
void CallbackTimerBmeData(void *argument);
void CallbackTimerBh1750Data(void *argument);
void CallbackTimerRTC(void *argument);

void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */
  /* Create the mutex(es) */
  /* creation of MutexPrintf */
  MutexPrintfHandle = osMutexNew(&MutexPrintf_attributes);

  /* creation of MutexI2C */
  MutexI2CHandle = osMutexNew(&MutexI2C_attributes);

  /* creation of MutexRTC */
  MutexRTCHandle = osMutexNew(&MutexRTC_attributes);

  /* creation of MutexAlarm */
  MutexAlarmHandle = osMutexNew(&MutexAlarm_attributes);

  /* creation of MutexI2C2 */
  MutexI2C2Handle = osMutexNew(&MutexI2C2_attributes);

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* Create the semaphores(s) */
  /* creation of BinarySemBme280 */
  BinarySemBme280Handle = osSemaphoreNew(1, 1, &BinarySemBme280_attributes);

  /* creation of BinarySemBH1750 */
  BinarySemBH1750Handle = osSemaphoreNew(1, 1, &BinarySemBH1750_attributes);

  /* creation of BinarySemRTC */
  BinarySemRTCHandle = osSemaphoreNew(1, 1, &BinarySemRTC_attributes);

  /* creation of BinarySemCountUp */
  BinarySemCountUpHandle = osSemaphoreNew(1, 1, &BinarySemCountUp_attributes);

  /* creation of BinarySemCountDown */
  BinarySemCountDownHandle = osSemaphoreNew(1, 1, &BinarySemCountDown_attributes);

  /* creation of BinarySemSetAlarm */
  BinarySemSetAlarmHandle = osSemaphoreNew(1, 1, &BinarySemSetAlarm_attributes);

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* Create the timer(s) */
  /* creation of TimerBmeData */
  TimerBmeDataHandle = osTimerNew(CallbackTimerBmeData, osTimerPeriodic, NULL, &TimerBmeData_attributes);

  /* creation of TimerBh1750Data */
  TimerBh1750DataHandle = osTimerNew(CallbackTimerBh1750Data, osTimerPeriodic, NULL, &TimerBh1750Data_attributes);

  /* creation of TimerRTC */
  TimerRTCHandle = osTimerNew(CallbackTimerRTC, osTimerPeriodic, NULL, &TimerRTC_attributes);

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* Create the queue(s) */
  /* creation of QueueBme */
  QueueBmeHandle = osMessageQueueNew (16, sizeof(BmeData_t), &QueueBme_attributes);

  /* creation of QueueBh1750 */
  QueueBh1750Handle = osMessageQueueNew (16, sizeof(BHData_t), &QueueBh1750_attributes);

  /* creation of QueueRTCData */
  QueueRTCDataHandle = osMessageQueueNew (16, sizeof(RTC_DateTypeDef), &QueueRTCData_attributes);

  /* creation of QueueRTCTime */
  QueueRTCTimeHandle = osMessageQueueNew (16, sizeof(RTC_TimeTypeDef), &QueueRTCTime_attributes);

  /* creation of QueueCounterPump */
  QueueCounterPumpHandle = osMessageQueueNew (16, sizeof(RTC_TimeTypeDef), &QueueCounterPump_attributes);

  /* creation of QueueAlarm */
  QueueAlarmHandle = osMessageQueueNew (16, sizeof(RTC_TimeTypeDef), &QueueAlarm_attributes);

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of TaskLed */
  TaskLedHandle = osThreadNew(StartTaskL, NULL, &TaskLed_attributes);

  /* creation of TaskRTC */
  TaskRTCHandle = osThreadNew(StartTaskRTC, NULL, &TaskRTC_attributes);

  /* creation of TaskBme280 */
  TaskBme280Handle = osThreadNew(StartTaskBme280, NULL, &TaskBme280_attributes);

  /* creation of TaskBH1750 */
  TaskBH1750Handle = osThreadNew(StartTaskBH1750, NULL, &TaskBH1750_attributes);

  /* creation of TaskSSD1306 */
  TaskSSD1306Handle = osThreadNew(StartTaskSSD1306, NULL, &TaskSSD1306_attributes);

  /* creation of TaskPumpON */
  TaskPumpONHandle = osThreadNew(StartTaskPumpON, NULL, &TaskPumpON_attributes);

  /* creation of TaskPumpOFF */
  TaskPumpOFFHandle = osThreadNew(StartTaskPumpOFF, NULL, &TaskPumpOFF_attributes);

  /* creation of TaskCounterUp */
  TaskCounterUpHandle = osThreadNew(StartTaskCounterPumpUp, NULL, &TaskCounterUp_attributes);

  /* creation of TaskCounterDown */
  TaskCounterDownHandle = osThreadNew(StartTaskCounterDown, NULL, &TaskCounterDown_attributes);

  /* creation of TaskAlarmCountU */
  TaskAlarmCountUHandle = osThreadNew(StartTaskAlarmCounterUp, NULL, &TaskAlarmCountU_attributes);

  /* creation of TaskAlarmCountD */
  TaskAlarmCountDHandle = osThreadNew(StartTaskAlarmCountDown, NULL, &TaskAlarmCountD_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

}

/* USER CODE BEGIN Header_StartTaskL */
/**
  * @brief  Function implementing the TaskLed thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_StartTaskL */
void StartTaskL(void *argument)
{
  /* USER CODE BEGIN StartTaskL */
	uint32_t tick4 = osKernelGetTickCount();
  /* Infinite loop */
  for(;;)
  {
	  tick4 += ((10000 * osKernelGetTickFreq()) / 1000);
	  osDelayUntil(tick4);
  }
  /* USER CODE END StartTaskL */
}

/* USER CODE BEGIN Header_StartTaskRTC */
/**
* @brief Function implementing the TaskRTC thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTaskRTC */
void StartTaskRTC(void *argument)
{
  /* USER CODE BEGIN StartTaskRTC */
//	RTC_TimeTypeDef _RTCTime;
// 	RTC_DateTypeDef _RTCDate;
 	extern RTC_HandleTypeDef hrtc;
 	 RTC_TimeTypeDef _RTCTime, _AlarmPeriod;
 	 RTC_DateTypeDef _RTCDate;
 	 RTC_AlarmTypeDef _AlarmON, _AlarmOFF;


 	RTC_TimeTypeDef _PumpOperatingTime;







 	 _AlarmON.AlarmTime.Hours = 8 ;
 	 _AlarmON.AlarmTime.Minutes = 0 ;
 	_AlarmON.AlarmTime.Seconds = 0 ;


	 _AlarmOFF.AlarmTime.Hours = 8 ;
	 _AlarmOFF.AlarmTime.Minutes = 1 ;
	_AlarmOFF.AlarmTime.Seconds = 0 ;




 	HAL_RTC_Init(&hrtc);
	HAL_RTC_GetDate(&hrtc, &_RTCDate, RTC_FORMAT_BIN);
	HAL_RTC_GetTime(&hrtc, &_RTCTime, RTC_FORMAT_BIN);

	HAL_RTC_SetAlarm(&hrtc, &_AlarmON, RTC_FORMAT_BIN);
	HAL_RTC_SetAlarm(&hrtc, &_AlarmOFF, RTC_FORMAT_BIN);

// 	_RTCTime.Hours = 0x0;
//    _RTCTime.Minutes =0x0;
//	_RTCTime.Seconds =0x0;
// 	HAL_RTC_SetDate(&hrtc, &_RTCDate, RTC_FORMAT_BIN);
// 	HAL_RTC_SetTime(&hrtc, &_RTCTime, RTC_FORMAT_BIN);


 	osTimerStart(TimerRTCHandle, 100);
 	uint32_t tick4 = osKernelGetTickCount();
  /* Infinite loop */
  for(;;)
  {
//	  osMessageQueuePut(QueueCounterPumpHandle, &_PumpOperatingTime, 0, 10);
//	  osMessageQueuePut(QueueAlarmHandle, &_AlarmPeriod, 0, 10);

	  HAL_RTC_GetDate(&hrtc, &_RTCDate, RTC_FORMAT_BIN);
	  HAL_RTC_GetTime(&hrtc, &_RTCTime, RTC_FORMAT_BIN);

////	  osMessageQueueGet(QueueAlarmHandle, &_AlarmPeriod, 0, 10);
//	  if(osOK == osSemaphoreAcquire(BinarySemSetAlarmHandle, 0))
//		{
//
//		  	  osMessageQueueGet(QueueAlarmHandle, &_AlarmPeriod, 0, 100);
//		  	  osMessageQueueGet(QueueCounterPumpHandle, &_PumpOperatingTime, 0, 100);
//			  _AlarmOFF.AlarmTime.Minutes = _PumpOperatingTime.Minutes;
//			  HAL_RTC_SetAlarm(&hrtc, &_AlarmOFF, RTC_FORMAT_BIN);
//		}



	   if (_AlarmON.AlarmTime.Hours ==  _RTCTime.Hours && _AlarmON.AlarmTime.Minutes ==  _RTCTime.Minutes )
	  	  {
		  osMutexAcquire(MutexAlarmHandle, osWaitForever);
			  HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin,GPIO_PIN_SET);
			  osThreadFlagsSet(TaskPumpONHandle, 0x00000001U);
			  _AlarmON.AlarmTime.Hours = _AlarmON.AlarmTime.Hours + 1;

			  if(_AlarmON.AlarmTime.Hours == 24)
				  {
					  _AlarmON.AlarmTime.Hours = 8;
				  }
			  HAL_RTC_SetAlarm(&hrtc, &_AlarmON, RTC_FORMAT_BIN);
			  osMutexRelease(MutexAlarmHandle);
	  	  }
	  else if(_AlarmOFF.AlarmTime.Hours ==  _RTCTime.Hours && _AlarmOFF.AlarmTime.Minutes ==  _RTCTime.Minutes )
	  	  {
		  	  osMutexAcquire(MutexAlarmHandle, osWaitForever);
			  HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin,GPIO_PIN_RESET);
			  osThreadFlagsSet(TaskPumpOFFHandle, 0x00000010U);

			  _AlarmOFF.AlarmTime.Hours = _AlarmOFF.AlarmTime.Hours + 1;
			  HAL_RTC_SetAlarm(&hrtc, &_AlarmOFF, RTC_FORMAT_BIN);
			  osMutexRelease(MutexAlarmHandle);

	  	  }



//	  if(RTCTime.Seconds != CompareSeconds)
//	  {
//
//
//		  CompareSeconds = RTCTime.Seconds;
//	  }
	  if (osOK == osSemaphoreAcquire(BinarySemRTCHandle, 0)) {
//	  	  			osMessageQueuePut(QueueRTCDataHandle, &_RTCDate, 0, osWaitForever);
	  	  			osMessageQueuePut(QueueRTCTimeHandle, &_RTCTime, 0, osWaitForever);
	  	  		}

	  tick4 += ((70 * osKernelGetTickFreq()) / 1000);
	  osDelayUntil(tick4);
  }
  /* USER CODE END StartTaskRTC */
}

/* USER CODE BEGIN Header_StartTaskBme280 */
/**
* @brief Function implementing the TaskBme280 thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTaskBme280 */
void StartTaskBme280(void *argument)
{
  /* USER CODE BEGIN StartTaskBme280 */
	BmeData_t _BmeData;
	uint32_t tick3;
	osMutexAcquire(MutexI2CHandle, osWaitForever);
	BME280_Init(&hi2c1, BME280_TEMPERATURE_16BIT, BME280_PRESSURE_ULTRALOWPOWER,
	BME280_HUMINIDITY_STANDARD, BME280_NORMALMODE);
	BME280_SetConfig(BME280_STANDBY_MS_10, BME280_FILTER_OFF);
	osMutexRelease(MutexI2CHandle);
	osTimerStart(TimerBmeDataHandle, 100);

	tick3 = osKernelGetTickCount();
  /* Infinite loop */
  for(;;)
  {
	  osMutexAcquire(MutexI2CHandle, osWaitForever);
	  BME280_ReadTemperatureAndPressureAndHuminidity(&_BmeData.Temperature,
	  				&_BmeData.Pressure, &_BmeData.Humidity);
	  osMutexRelease(MutexI2CHandle);

	  if (osOK == osSemaphoreAcquire(BinarySemBme280Handle, 0)) {
	  			osMessageQueuePut(QueueBmeHandle, &_BmeData, 0, osWaitForever);
	  		}
		printf("TASK BME280 \n\r ");
//	  printf("Temperature: %.2f, Humidity: %.2f z \n\r", _BmeData.Temperature, _BmeData.Humidity);
//////    osDelay(100);
		tick3 += (75 * osKernelGetTickFreq()) / 1000;
		osDelayUntil(tick3);
  }
  /* USER CODE END StartTaskBme280 */
}

/* USER CODE BEGIN Header_StartTaskBH1750 */
/**
* @brief Function implementing the TaskBH1750 thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTaskBH1750 */
void StartTaskBH1750(void *argument)
{
  /* USER CODE BEGIN StartTaskBH1750 */

	uint32_t tick4;
	BHData_t _BHData;

	//	float BH1750_lux;

	osMutexAcquire(MutexI2CHandle, osWaitForever);
	BH1750_Init(&hi2c1);
	BH1750_SetMode(CONTINUOUS_HIGH_RES_MODE_2);
	osMutexRelease(MutexI2CHandle);

	osTimerStart(TimerBh1750DataHandle, 100);
	tick4 = osKernelGetTickCount();
  /* Infinite loop */
  for(;;)
  {
	  	  osMutexAcquire(MutexI2CHandle, osWaitForever);

	  		BH1750_ReadLight(&_BHData.LightIntensity);
	  //	  	  printf("Light: %.2f \n\r", _BhData.LightIntensity);
	  		osMutexRelease(MutexI2CHandle);

	  		if (osOK == osSemaphoreAcquire(BinarySemBH1750Handle, 0)) {
	  			osMessageQueuePut(QueueBh1750Handle, &_BHData, 0, osWaitForever);
	  		}
	  //	  	 	  if(BH1750_OK == BH1750_ReadLight(&BH1750_lux))
	  //	  	 	  	  {
	  //	  	 	  		  size = sprintf(buffer, "BH1750 Lux: %.2f\n\r", BH1750_lux);
	  //	  	 	  	  	  HAL_UART_Transmit(&huart2, (uint8_t*)buffer, size, 100);
	  //	  	 	  	  }
	  		printf("TASK BH1750 \n\r ");
	  		tick4 += ((65 * osKernelGetTickFreq()) / 1000);
	  		osDelayUntil(tick4);

  }
  /* USER CODE END StartTaskBH1750 */
}

/* USER CODE BEGIN Header_StartTaskSSD1306 */
/**
* @brief Function implementing the TaskSSD1306 thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTaskSSD1306 */
void StartTaskSSD1306(void *argument)
{
  /* USER CODE BEGIN StartTaskSSD1306 */

	char MessageTemp[32], MessageHum[32];
	char MessageInten[32];
	char MessageTime[32];
	char MessageTimePump[32];




	BmeData_t _BmeData;
	BHData_t _BHData;
	RTC_TimeTypeDef _RTCTime;


	uint32_t tick2;


	osMutexAcquire(MutexI2C2Handle, osWaitForever);
	SSD1306_Init(&hi2c2);
	osMutexRelease(MutexI2C2Handle);

	GFX_SetFont(font_8x5);
	SSD1306_Clear(BLACK);
	SSD1306_Display();

	tick2 = osKernelGetTickCount();

  /* Infinite loop */
  for(;;)
  {
	  SSD1306_Clear(BLACK);
	  osMessageQueueGet(QueueBmeHandle, &_BmeData, 0, osWaitForever);
	  osMessageQueueGet(QueueBh1750Handle, &_BHData, 0, osWaitForever);
//	  osMessageQueueGet(QueueRTCDataHandle, &_RTCDate, 0,osWaitForever);
	  osMessageQueueGet(QueueRTCTimeHandle, &_RTCTime, 0, osWaitForever);

//	  osMessageQueueGet(QueueAlarmHandle, &_AlarmPeriodicty, 0, 50);


	  sprintf(MessageTemp, "Temperature: %.2f ", _BmeData.Temperature);
	  sprintf(MessageHum, "Humidity: %.2f", _BmeData.Humidity);
	  sprintf(MessageInten, "Lx: %.2f,", _BHData.LightIntensity);
//	  sprintf(MessageData, "Data: %02d.%02d.20%02d  Time: %02d:%02d:%02d:%02d",_RTCDate.Date,_RTCDate.Month,_RTCDate.Year,_RTCTime.Hours,_RTCTime.Minutes,_RTCTime.Seconds);
	  sprintf(MessageTime, "Time: %02d:%02d:%02d",_RTCTime.Hours,_RTCTime.Minutes,_RTCTime.Seconds);
//	  sprintf(MessageTimePump, "Pump OP Time: %02d Min",_PumpOperatingTime.Minutes);
//	  sprintf(MessageFreqAlarm, "Alarm Period: %02d H", _AlarmPeriod.Hours);
	  GFX_DrawString(0, 0, MessageTime, WHITE, 0);
	  GFX_DrawString(0, 10, MessageTemp, WHITE, 0);
	  GFX_DrawString(0, 20, MessageHum, WHITE, 0);
	  GFX_DrawString(0, 30, MessageInten, WHITE, 0);
//	  GFX_DrawString(0, 40, MessageTimePump, WHITE, 0);
//	  GFX_DrawString(0, 50, MessageFreqAlarm, WHITE, 0);

	  SSD1306_Display();

	  printf("TASK OLED \n\r");

//		printf("TASK OLED I2C MUTEX is released \n\r");
      tick2 += (250 * osKernelGetTickFreq()) / 1000;
	  osDelayUntil(tick2);
  }
  /* USER CODE END StartTaskSSD1306 */
}

/* USER CODE BEGIN Header_StartTaskPumpON */
/**
* @brief Function implementing the TaskPumpON thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTaskPumpON */
void StartTaskPumpON(void *argument)
{
  /* USER CODE BEGIN StartTaskPumpON */

	drv8835_init();
  /* Infinite loop */
  for(;;)
  {


	  osThreadFlagsWait(0x00000001U, osFlagsWaitAny, osWaitForever);

	  drv8835_set_motorA_speed(99);
	  osThreadFlagsClear(0x00000001U);
  }
  /* USER CODE END StartTaskPumpON */
}

/* USER CODE BEGIN Header_StartTaskPumpOFF */
/**
* @brief Function implementing the TaskPumpOFF thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTaskPumpOFF */
void StartTaskPumpOFF(void *argument)
{
  /* USER CODE BEGIN StartTaskPumpOFF */

  /* Infinite loop */
  for(;;)
  {

	  osThreadFlagsWait(0x00000010U, osFlagsWaitAny, osWaitForever);


	  drv8835_set_motorA_speed(0);



  }
  /* USER CODE END StartTaskPumpOFF */
}

/* USER CODE BEGIN Header_StartTaskCounterPumpUp */
/**
* @brief Function implementing the TaskCounterUp thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTaskCounterPumpUp */
void StartTaskCounterPumpUp(void *argument)
{
  /* USER CODE BEGIN StartTaskCounterPumpUp */
	RTC_TimeTypeDef _PumpOperatingTime;
	uint32_t tick;

	tick= osKernelGetTickCount();
  /* Infinite loop */
  for(;;)
  {

	  	  osThreadFlagsWait(0x00000100U, osFlagsWaitAll, osWaitForever);
		  osMessageQueueGet(QueueCounterPumpHandle, &_PumpOperatingTime, 0, 100);
	  	  _PumpOperatingTime.Minutes = _PumpOperatingTime.Minutes + 1;

	  	  if(_PumpOperatingTime.Minutes >= 59  )
	  	  {
	  		   _PumpOperatingTime.Minutes = 1;
	  	  }

	  	  osMessageQueuePut(QueueCounterPumpHandle, &_PumpOperatingTime, 0, 100);



	  	tick += (420 * osKernelGetTickFreq()) / 1000;
	  	osDelayUntil(tick);



  }
  /* USER CODE END StartTaskCounterPumpUp */
}

/* USER CODE BEGIN Header_StartTaskCounterDown */
/**
* @brief Function implementing the TaskCounterDown thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTaskCounterDown */
void StartTaskCounterDown(void *argument)
{
  /* USER CODE BEGIN StartTaskCounterDown */
	RTC_TimeTypeDef _PumpOperatingTime;

	uint32_t tick;
	tick = osKernelGetTickCount();
  /* Infinite loop */
  for(;;)
  {

	  	  	  osThreadFlagsWait(0x00001000U, osFlagsWaitAll, osWaitForever);

	  		  osMessageQueueGet(QueueCounterPumpHandle, &_PumpOperatingTime, 0, 100);
	  	      _PumpOperatingTime.Minutes = _PumpOperatingTime.Minutes - 1;

	  	  	  if(_PumpOperatingTime.Minutes == 0 ||_PumpOperatingTime.Minutes >= 60 )
	  	  	  {
	  	  	        _PumpOperatingTime.Minutes = 59;
	  	  	  }

	  	  	  osMessageQueuePut(QueueCounterPumpHandle, &_PumpOperatingTime,0,  100);



	 tick += (410 * osKernelGetTickFreq()) / 1000;
	osDelayUntil(tick);

  }
  /* USER CODE END StartTaskCounterDown */
}

/* USER CODE BEGIN Header_StartTaskAlarmCounterUp */
/**
* @brief Function implementing the TaskAlarmCounte thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTaskAlarmCounterUp */
void StartTaskAlarmCounterUp(void *argument)
{
  /* USER CODE BEGIN StartTaskAlarmCounterUp */
	RTC_TimeTypeDef _AlarmPeriod;



	uint32_t tick;
	tick = osKernelGetTickCount();
  /* Infinite loop */
  for(;;)
  {
	  osThreadFlagsWait(0x00010000U, osFlagsWaitAll, osWaitForever);
	  	  osMessageQueueGet(QueueAlarmHandle, &_AlarmPeriod, 0, 100);
	  	_AlarmPeriod.Hours= _AlarmPeriod.Hours + 1;

	  	  	  	  	  if(_AlarmPeriod.Hours >= 16 )
	  	  	  	  	  {
	  	  	  	  		  	 _AlarmPeriod.Hours = 1;
	  	  	  	  	  }

	  	  osMessageQueuePut(QueueAlarmHandle, &_AlarmPeriod,0,  100);
	  	osSemaphoreRelease(BinarySemSetAlarmHandle);

	  tick += (390 * osKernelGetTickFreq()) / 1000;
	  	osDelayUntil(tick);
  }
  /* USER CODE END StartTaskAlarmCounterUp */
}

/* USER CODE BEGIN Header_StartTaskAlarmCountDown */
/**
* @brief Function implementing the TaskAlarmCountD thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTaskAlarmCountDown */
void StartTaskAlarmCountDown(void *argument)
{
  /* USER CODE BEGIN StartTaskAlarmCountDown */
	RTC_AlarmTypeDef _AlarmPeriod;
	uint32_t tick;
	tick = osKernelGetTickCount();
  /* Infinite loop */
  for(;;)
  {
	  osThreadFlagsWait(0x00100000U, osFlagsWaitAll, osWaitForever);
	  osMessageQueueGet(QueueAlarmHandle, &_AlarmPeriod, 0, 100);
	  _AlarmPeriod.AlarmTime.Hours= _AlarmPeriod.AlarmTime.Hours - 1;

	  	  	  	  if(_AlarmPeriod.AlarmTime.Hours == 0 ||_AlarmPeriod.AlarmTime.Hours >= 16 )
	  	  	  	  {
	  	  	  		  	  _AlarmPeriod.AlarmTime.Hours = 16;
	  	  	  	  }

	  osMessageQueuePut(QueueAlarmHandle, &_AlarmPeriod,0,  100);
	  osSemaphoreRelease(BinarySemSetAlarmHandle);;

	  tick += (380 * osKernelGetTickFreq()) / 1000;
	  osDelayUntil(tick);
  }
  /* USER CODE END StartTaskAlarmCountDown */
}

/* CallbackTimerBmeData function */
void CallbackTimerBmeData(void *argument)
{
  /* USER CODE BEGIN CallbackTimerBmeData */
	osSemaphoreRelease(BinarySemBme280Handle);

  /* USER CODE END CallbackTimerBmeData */
}

/* CallbackTimerBh1750Data function */
void CallbackTimerBh1750Data(void *argument)
{
  /* USER CODE BEGIN CallbackTimerBh1750Data */
	osSemaphoreRelease(BinarySemBH1750Handle);
  /* USER CODE END CallbackTimerBh1750Data */
}

/* CallbackTimerRTC function */
void CallbackTimerRTC(void *argument)
{
  /* USER CODE BEGIN CallbackTimerRTC */
	osSemaphoreRelease(BinarySemRTCHandle);
  /* USER CODE END CallbackTimerRTC */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */


//void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
//{
//
//	if(GPIO_Pin == B1_Pin)
//	{
//
//
//
////		osThreadFlagsSet(TaskCounterUpHandle, 0x00000100U);
//
//
//		osThreadFlagsSet(TaskAlarmCountUHandle, 0x00010000U);
//
//
//
//
//
//	}
//	else if(GPIO_Pin == B2_Pin)
//	{
//
//
//
////		osThreadFlagsSet(TaskCounterDownHandle, 0x00001000U);
//
//		osThreadFlagsSet(TaskAlarmCountDHandle, 0x00100000U);
//	}
//	else{
//		__NOP();
//	}
//}



void _putchar(char character) {
	// send char to console etc.
	osMutexAcquire(MutexPrintfHandle, osWaitForever);
	HAL_UART_Transmit(&huart2, (uint8_t*)&character, 1, 1000);

	osMutexRelease(MutexPrintfHandle);
}

/* USER CODE END Application */


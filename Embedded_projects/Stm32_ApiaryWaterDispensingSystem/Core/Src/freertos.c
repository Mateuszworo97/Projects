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

#include "stm32f4xx_it.h"
#include "stm32f4xx_hal.h"
#include "stm32f4xx_hal_gpio_ex.h"
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
/* Definitions for defaultTask */
osThreadId_t defaultTaskHandle;
const osThreadAttr_t defaultTask_attributes = {
  .name = "defaultTask",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskRTC */
osThreadId_t TaskRTCHandle;
const osThreadAttr_t TaskRTC_attributes = {
  .name = "TaskRTC",
  .stack_size = 512 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskBme280 */
osThreadId_t TaskBme280Handle;
const osThreadAttr_t TaskBme280_attributes = {
  .name = "TaskBme280",
  .stack_size = 256 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskBH1750 */
osThreadId_t TaskBH1750Handle;
const osThreadAttr_t TaskBH1750_attributes = {
  .name = "TaskBH1750",
  .stack_size = 256 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskSSD1306 */
osThreadId_t TaskSSD1306Handle;
const osThreadAttr_t TaskSSD1306_attributes = {
  .name = "TaskSSD1306",
  .stack_size = 512 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskPump */
osThreadId_t TaskPumpHandle;
const osThreadAttr_t TaskPump_attributes = {
  .name = "TaskPump",
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

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */
void _putchar(char character);
/* USER CODE END FunctionPrototypes */

void StartDefaultTask(void *argument);
void StartTaskRTC(void *argument);
void StartTaskBme280(void *argument);
void StartTaskBH1750(void *argument);
void StartTaskSSD1306(void *argument);
void StartTaskPump(void *argument);
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

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of defaultTask */
  defaultTaskHandle = osThreadNew(StartDefaultTask, NULL, &defaultTask_attributes);

  /* creation of TaskRTC */
  TaskRTCHandle = osThreadNew(StartTaskRTC, NULL, &TaskRTC_attributes);

  /* creation of TaskBme280 */
  TaskBme280Handle = osThreadNew(StartTaskBme280, NULL, &TaskBme280_attributes);

  /* creation of TaskBH1750 */
  TaskBH1750Handle = osThreadNew(StartTaskBH1750, NULL, &TaskBH1750_attributes);

  /* creation of TaskSSD1306 */
  TaskSSD1306Handle = osThreadNew(StartTaskSSD1306, NULL, &TaskSSD1306_attributes);

  /* creation of TaskPump */
  TaskPumpHandle = osThreadNew(StartTaskPump, NULL, &TaskPump_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

}

/* USER CODE BEGIN Header_StartDefaultTask */
/**
  * @brief  Function implementing the defaultTask thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_StartDefaultTask */
void StartDefaultTask(void *argument)
{
  /* USER CODE BEGIN StartDefaultTask */
	uint32_t tick;
	tick = osKernelGetTickCount();
  /* Infinite loop */
  for(;;)
  {
//	  HAL_GPIO_TogglePin(LD2_GPIO_Port, LD2_Pin);
	  printf("LED2 TASK \n\r");
	  tick += (300 * osKernelGetTickFreq()) / 1000;
	  osDelayUntil(tick);
  }
  /* USER CODE END StartDefaultTask */
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
 	 RTC_TimeTypeDef _RTCTime;
 	 RTC_DateTypeDef _RTCDate;
 	 RTC_AlarmTypeDef _Alarm1;
 	 uint8_t CompareSeconds;

 	 _Alarm1.AlarmTime.Hours = 8 ;
 	 _Alarm1.AlarmTime.Minutes = 0 ;
 	_Alarm1.AlarmTime.Seconds = 0 ;
// 	_RTCDate.Date = 0x1;
// 	_RTCDate.Month = RTC_MONTH_MARCH;
// 	_RTCDate.Year = 0x24;
 	HAL_RTC_Init(&hrtc);
	HAL_RTC_GetDate(&hrtc, &_RTCDate, RTC_FORMAT_BCD);
	HAL_RTC_GetTime(&hrtc, &_RTCTime, RTC_FORMAT_BCD);

	HAL_RTC_SetAlarm(&hrtc, &_Alarm1, RTC_FORMAT_BIN);
	drv8835_init();
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

	  HAL_RTC_GetDate(&hrtc, &_RTCDate, RTC_FORMAT_BIN);
	  HAL_RTC_GetTime(&hrtc, &_RTCTime, RTC_FORMAT_BIN);


	  if (_Alarm1.AlarmTime.Hours ==  _RTCTime.Hours && _Alarm1.AlarmTime.Minutes ==  _RTCTime.Minutes )
	  {
		  HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin,GPIO_PIN_SET);
		  drv8835_set_motorA_speed(100);
		  _Alarm1.AlarmTime.Hours = _Alarm1.AlarmTime.Hours + 4;
		  if(_Alarm1.AlarmTime.Hours == 24)
		  {
			  _Alarm1.AlarmTime.Hours = 8;
		  }
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

	  tick4 += ((60 * osKernelGetTickFreq()) / 1000);
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
		tick3 += (90 * osKernelGetTickFreq()) / 1000;
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
	  		tick4 += ((80 * osKernelGetTickFreq()) / 1000);
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
	char Message

	BmeData_t _BmeData;
	BHData_t _BHData;
	RTC_TimeTypeDef _RTCTime;
 	RTC_DateTypeDef _RTCDate;
	uint32_t tick2;

	osMutexAcquire(MutexI2CHandle, osWaitForever);
	SSD1306_Init(&hi2c1);
	osMutexRelease(MutexI2CHandle);

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
	  osMessageQueueGet(QueueRTCTimeHandle, &_RTCTime, 0,100);


	  sprintf(MessageTemp, "Temperature: %.2f ", _BmeData.Temperature);
	  sprintf(MessageHum, "Humidity: %.2f", _BmeData.Humidity);
	  sprintf(MessageInten, "Lx: %.2f,", _BHData.LightIntensity);
//	  sprintf(MessageData, "Data: %02d.%02d.20%02d  Time: %02d:%02d:%02d:%02d",_RTCDate.Date,_RTCDate.Month,_RTCDate.Year,_RTCTime.Hours,_RTCTime.Minutes,_RTCTime.Seconds);
	  sprintf(MessageTime, " Time: %02d:%02d:%02d",_RTCTime.Hours,_RTCTime.Minutes,_RTCTime.Seconds);
	  GFX_DrawString(0, 0, MessageTime, WHITE, 0);
	  GFX_DrawString(0, 10, MessageTemp, WHITE, 0);
	  GFX_DrawString(0, 20, MessageHum, WHITE, 0);
	  GFX_DrawString(0, 30, MessageInten, WHITE, 0);

	  SSD1306_Display();
	  printf("TASK OLED \n\r");

//		printf("TASK OLED I2C MUTEX is released \n\r");
      tick2 += (100 * osKernelGetTickFreq()) / 1000;
	  osDelayUntil(tick2);
  }
  /* USER CODE END StartTaskSSD1306 */
}

/* USER CODE BEGIN Header_StartTaskPump */
/**
* @brief Function implementing the TaskPump thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTaskPump */
void StartTaskPump(void *argument)
{
  /* USER CODE BEGIN StartTaskPump */
  /* Infinite loop */
  for(;;)
  {
	osThreadFlagsWait(0x00000001U, osFlagsWaitAny, osWaitForever);
    osDelay(1000);
  }
  /* USER CODE END StartTaskPump */
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

void HAL_RTC_AlarmAEventCallback(RTC_HandleTypeDef *hrtc)
{
//
}
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
	if(GPIO_Pin == B1_Pin)
	{
		HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, GPIO_PIN_SET);
		drv8835_set_motorA_speed(100);
	}
	else if(GPIO_Pin == B2_Pin)
	{
		HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, GPIO_PIN_RESET);
		drv8835_set_motorA_speed(0);
	}
}
void _putchar(char character) {
	// send char to console etc.
	osMutexAcquire(MutexPrintfHandle, osWaitForever);
	HAL_UART_Transmit(&huart2, (uint8_t*)&character, 1, 1000);

	osMutexRelease(MutexPrintfHandle);
}

/* USER CODE END Application */


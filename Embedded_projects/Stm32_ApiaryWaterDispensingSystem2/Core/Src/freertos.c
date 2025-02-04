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
#include <string.h>

#include "usart.h"
#include "gpio.h"
#include "i2c.h"
#include "spi.h"
#include "rtc.h"
#include "bme280.h"
#include "tim.h"
#include "SSD1306_OLED.h"
#include "drv8835.h"
#include "INA219.h"
#include "ds3231.h"

#include "bh1750.h"
#include "button.h"
#include "ff.h"
#include "ff_gen_drv.h"
#include "user_diskio_spi.h"
#include "user_diskio.h"
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
		uint8_t Hour;
		uint8_t Minutes;
		uint8_t Seconds;
		uint8_t Day;
		uint8_t Month;
		uint16_t Year;
}Ds3231_t;
typedef struct {
	float Humidity;
	float Temperature;
	int32_t Pressure;
} BmeData_t;

typedef struct{
	uint16_t VoltageBus;
	uint16_t VoltageShunt;
	uint16_t Power;
	int16_t Current;

}INA219Data_t;

typedef struct {
	char MessageTemp[32];
	char MessageHum[32];
    char MessageInten[32];
    char MessageTime[32];
    char MessageData[32];
	char MessageTimePump[32];
	char MessagePvVoltageBus[32];
	char MessagePVVoltageShunt[32];
	char MessagePVCurrent[32];
	char MessagePVPower[32];
	char MessageBatVoltageBus[32];
	char MessageBatVoltageShunt[32];
	char MessageBatCurrent[32];
	char MessageBatPower[32];
	char MessageFreqAlarm[32];

}Data_Structure_t;
typedef struct {
	float LightIntensity;

} BHData_t;


/* USER CODE END Variables */
/* Definitions for TaskRTC */
osThreadId_t TaskRTCHandle;
const osThreadAttr_t TaskRTC_attributes = {
  .name = "TaskRTC",
  .stack_size = 2024 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskBme280 */
osThreadId_t TaskBme280Handle;
const osThreadAttr_t TaskBme280_attributes = {
  .name = "TaskBme280",
  .stack_size = 512 * 4,
  .priority = (osPriority_t) osPriorityNormal1,
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
  .stack_size = 4000 * 4,
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
/* Definitions for TaskCounterPump */
osThreadId_t TaskCounterPumpHandle;
const osThreadAttr_t TaskCounterPump_attributes = {
  .name = "TaskCounterPump",
  .stack_size = 512 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskAlarmCounte */
osThreadId_t TaskAlarmCounteHandle;
const osThreadAttr_t TaskAlarmCounte_attributes = {
  .name = "TaskAlarmCounte",
  .stack_size = 512 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskSdCard */
osThreadId_t TaskSdCardHandle;
const osThreadAttr_t TaskSdCard_attributes = {
  .name = "TaskSdCard",
  .stack_size = 3000 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskINA219 */
osThreadId_t TaskINA219Handle;
const osThreadAttr_t TaskINA219_attributes = {
  .name = "TaskINA219",
  .stack_size = 1024 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskINA219PV */
osThreadId_t TaskINA219PVHandle;
const osThreadAttr_t TaskINA219PV_attributes = {
  .name = "TaskINA219PV",
  .stack_size = 1024 * 4,
  .priority = (osPriority_t) osPriorityAboveNormal,
};
/* Definitions for TaskDS3231 */
osThreadId_t TaskDS3231Handle;
const osThreadAttr_t TaskDS3231_attributes = {
  .name = "TaskDS3231",
  .stack_size = 1024 * 4,
  .priority = (osPriority_t) osPriorityHigh,
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
/* Definitions for QueueCounterAlarm */
osMessageQueueId_t QueueCounterAlarmHandle;
const osMessageQueueAttr_t QueueCounterAlarm_attributes = {
  .name = "QueueCounterAlarm"
};
/* Definitions for QueSDCARD */
osMessageQueueId_t QueSDCARDHandle;
const osMessageQueueAttr_t QueSDCARD_attributes = {
  .name = "QueSDCARD"
};
/* Definitions for QuequeBattery */
osMessageQueueId_t QuequeBatteryHandle;
const osMessageQueueAttr_t QuequeBattery_attributes = {
  .name = "QuequeBattery"
};
/* Definitions for QueDs3231Time */
osMessageQueueId_t QueDs3231TimeHandle;
const osMessageQueueAttr_t QueDs3231Time_attributes = {
  .name = "QueDs3231Time"
};
/* Definitions for QueueDs3231Date */
osMessageQueueId_t QueueDs3231DateHandle;
const osMessageQueueAttr_t QueueDs3231Date_attributes = {
  .name = "QueueDs3231Date"
};
/* Definitions for QueuePV */
osMessageQueueId_t QueuePVHandle;
const osMessageQueueAttr_t QueuePV_attributes = {
  .name = "QueuePV"
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
/* Definitions for TimerSDCard */
osTimerId_t TimerSDCardHandle;
const osTimerAttr_t TimerSDCard_attributes = {
  .name = "TimerSDCard"
};
/* Definitions for TimerINA219 */
osTimerId_t TimerINA219Handle;
const osTimerAttr_t TimerINA219_attributes = {
  .name = "TimerINA219"
};
/* Definitions for TimerINA219Bat */
osTimerId_t TimerINA219BatHandle;
const osTimerAttr_t TimerINA219Bat_attributes = {
  .name = "TimerINA219Bat"
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
/* Definitions for MutexSdCard */
osMutexId_t MutexSdCardHandle;
const osMutexAttr_t MutexSdCard_attributes = {
  .name = "MutexSdCard"
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
/* Definitions for BinarySemCounter */
osSemaphoreId_t BinarySemCounterHandle;
const osSemaphoreAttr_t BinarySemCounter_attributes = {
  .name = "BinarySemCounter"
};
/* Definitions for BinarySemSetAlarm */
osSemaphoreId_t BinarySemSetAlarmHandle;
const osSemaphoreAttr_t BinarySemSetAlarm_attributes = {
  .name = "BinarySemSetAlarm"
};
/* Definitions for BinarySdCard */
osSemaphoreId_t BinarySdCardHandle;
const osSemaphoreAttr_t BinarySdCard_attributes = {
  .name = "BinarySdCard"
};
/* Definitions for BinarySemINA219 */
osSemaphoreId_t BinarySemINA219Handle;
const osSemaphoreAttr_t BinarySemINA219_attributes = {
  .name = "BinarySemINA219"
};
/* Definitions for BinaryDs3231 */
osSemaphoreId_t BinaryDs3231Handle;
const osSemaphoreAttr_t BinaryDs3231_attributes = {
  .name = "BinaryDs3231"
};
/* Definitions for BinarySemIna219Bat */
osSemaphoreId_t BinarySemIna219BatHandle;
const osSemaphoreAttr_t BinarySemIna219Bat_attributes = {
  .name = "BinarySemIna219Bat"
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin);
void _putchar(char character);
/* USER CODE END FunctionPrototypes */

void StartTaskRTC(void *argument);
void StartTaskBme280(void *argument);
void StartTaskBH1750(void *argument);
void StartTaskSSD1306(void *argument);
void StartTaskPumpON(void *argument);
void StartTaskPumpOFF(void *argument);
void StartTaskCounterPump(void *argument);
void StartTaskAlarmCounter(void *argument);
void StartTaskSdCard(void *argument);
void StartTaskINA219(void *argument);
void StartTaskINA219PV(void *argument);
void StartTaskDS3231(void *argument);
void CallbackTimerBmeData(void *argument);
void CallbackTimerBh1750Data(void *argument);
void CallbackTimerRTC(void *argument);
void CallbackTimerSDCard(void *argument);
void CallbackTimerINA219(void *argument);
void CallbackTimerINA219Bat(void *argument);

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

  /* creation of MutexSdCard */
  MutexSdCardHandle = osMutexNew(&MutexSdCard_attributes);

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

  /* creation of BinarySemCounter */
  BinarySemCounterHandle = osSemaphoreNew(1, 1, &BinarySemCounter_attributes);

  /* creation of BinarySemSetAlarm */
  BinarySemSetAlarmHandle = osSemaphoreNew(1, 1, &BinarySemSetAlarm_attributes);

  /* creation of BinarySdCard */
  BinarySdCardHandle = osSemaphoreNew(1, 1, &BinarySdCard_attributes);

  /* creation of BinarySemINA219 */
  BinarySemINA219Handle = osSemaphoreNew(1, 1, &BinarySemINA219_attributes);

  /* creation of BinaryDs3231 */
  BinaryDs3231Handle = osSemaphoreNew(1, 1, &BinaryDs3231_attributes);

  /* creation of BinarySemIna219Bat */
  BinarySemIna219BatHandle = osSemaphoreNew(1, 1, &BinarySemIna219Bat_attributes);

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

  /* creation of TimerSDCard */
  TimerSDCardHandle = osTimerNew(CallbackTimerSDCard, osTimerPeriodic, NULL, &TimerSDCard_attributes);

  /* creation of TimerINA219 */
  TimerINA219Handle = osTimerNew(CallbackTimerINA219, osTimerPeriodic, NULL, &TimerINA219_attributes);

  /* creation of TimerINA219Bat */
  TimerINA219BatHandle = osTimerNew(CallbackTimerINA219Bat, osTimerPeriodic, NULL, &TimerINA219Bat_attributes);

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* Create the queue(s) */
  /* creation of QueueBme */
  QueueBmeHandle = osMessageQueueNew (5, sizeof(BmeData_t), &QueueBme_attributes);

  /* creation of QueueBh1750 */
  QueueBh1750Handle = osMessageQueueNew (5, sizeof(BHData_t), &QueueBh1750_attributes);

  /* creation of QueueRTCData */
  QueueRTCDataHandle = osMessageQueueNew (1, sizeof(RTC_DateTypeDef), &QueueRTCData_attributes);

  /* creation of QueueRTCTime */
  QueueRTCTimeHandle = osMessageQueueNew (1, sizeof(RTC_TimeTypeDef), &QueueRTCTime_attributes);

  /* creation of QueueCounterPump */
  QueueCounterPumpHandle = osMessageQueueNew (1, sizeof(uint8_t), &QueueCounterPump_attributes);

  /* creation of QueueCounterAlarm */
  QueueCounterAlarmHandle = osMessageQueueNew (1, sizeof(uint8_t), &QueueCounterAlarm_attributes);

  /* creation of QueSDCARD */
  QueSDCARDHandle = osMessageQueueNew (1, sizeof(Data_Structure_t), &QueSDCARD_attributes);

  /* creation of QuequeBattery */
  QuequeBatteryHandle = osMessageQueueNew (2, sizeof(INA219Data_t), &QuequeBattery_attributes);

  /* creation of QueDs3231Time */
  QueDs3231TimeHandle = osMessageQueueNew (1, sizeof(RTC_TimeTypeDef), &QueDs3231Time_attributes);

  /* creation of QueueDs3231Date */
  QueueDs3231DateHandle = osMessageQueueNew (1, sizeof(RTC_DateTypeDef), &QueueDs3231Date_attributes);

  /* creation of QueuePV */
  QueuePVHandle = osMessageQueueNew (1, sizeof(INA219Data_t), &QueuePV_attributes);

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
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

  /* creation of TaskCounterPump */
  TaskCounterPumpHandle = osThreadNew(StartTaskCounterPump, NULL, &TaskCounterPump_attributes);

  /* creation of TaskAlarmCounte */
  TaskAlarmCounteHandle = osThreadNew(StartTaskAlarmCounter, NULL, &TaskAlarmCounte_attributes);

  /* creation of TaskSdCard */
  TaskSdCardHandle = osThreadNew(StartTaskSdCard, NULL, &TaskSdCard_attributes);

  /* creation of TaskINA219 */
  TaskINA219Handle = osThreadNew(StartTaskINA219, NULL, &TaskINA219_attributes);

  /* creation of TaskINA219PV */
  TaskINA219PVHandle = osThreadNew(StartTaskINA219PV, NULL, &TaskINA219PV_attributes);

  /* creation of TaskDS3231 */
  TaskDS3231Handle = osThreadNew(StartTaskDS3231, NULL, &TaskDS3231_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

}

/* USER CODE BEGIN Header_StartTaskRTC */
/**
  * @brief  Function implementing the TaskRTC thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_StartTaskRTC */
void StartTaskRTC(void *argument)
{
  /* USER CODE BEGIN StartTaskRTC */
		extern RTC_HandleTypeDef hrtc;

	 	 RTC_TimeTypeDef _RTCTime ={0};

	 	 RTC_DateTypeDef _RTCDate = {0};

	 	 RTC_AlarmTypeDef _AlarmON, _AlarmOFF = {0};


	 	static uint8_t _PumpDispensing = 1;
	 	static uint8_t _AlarmPeriod = 1;
	 	uint8_t SdCard = 1;






	 	 _AlarmON.AlarmTime.Hours = 8 ;
	 	 _AlarmON.AlarmTime.Minutes = 0 ;
	 	_AlarmON.AlarmTime.Seconds = 0 ;


		 _AlarmOFF.AlarmTime.Hours = 8 ;
		 _AlarmOFF.AlarmTime.Minutes = 1 ;
		_AlarmOFF.AlarmTime.Seconds = 0 ;



		osThreadFlagsSet(TaskDS3231Handle, 0x00000100U);
	 	HAL_RTC_Init(&hrtc);

//		HAL_RTC_GetDate(&hrtc, &_RTCDate, RTC_FORMAT_BIN);
//		HAL_RTC_GetTime(&hrtc, &_RTCTime, RTC_FORMAT_BIN);

//		HAL_RTC_SetAlarm(&hrtc, &_AlarmON, RTC_FORMAT_BIN);
//		HAL_RTC_SetAlarm(&hrtc, &_AlarmOFF, RTC_FORMAT_BIN);


	// 	_RTCTime.Hours = 0x0;
	//    _RTCTime.Minutes =0x0;
	//	_RTCTime.Seconds =0x0;

		osMessageQueuePut(QueueCounterAlarmHandle, &_AlarmPeriod, 0, osWaitForever);
		osMessageQueuePut(QueueCounterPumpHandle, &_PumpDispensing, 0, osWaitForever);
	 	osTimerStart(TimerRTCHandle, 300);
	 	uint32_t tick4 = osKernelGetTickCount();
  /* Infinite loop */
  for(;;)
  {
	  //	  osMessageQueuePut(QueueCounterPumpHandle, &_PumpOperatingTime, 0, 10);
	  //	  osMessageQueuePut(QueueAlarmHandle, &_AlarmPeriod, 0, 10);

	      printf("Task RTC start \n\r ");
	      if(osOK== osMessageQueueGet(QueDs3231TimeHandle, &_RTCTime, 0, 50))
	      {
	    	  HAL_RTC_SetTime(&hrtc,&_RTCTime, RTC_FORMAT_BIN);
	    	  if (_RTCTime.Hours +1 <=22)
				  {  	  _AlarmON.AlarmTime.Hours = _RTCTime.Hours + 1  ;
						 _AlarmON.AlarmTime.Minutes = 0;
						_AlarmON.AlarmTime.Seconds = 0 ;

						 _AlarmOFF.AlarmTime.Hours = _RTCTime.Hours + 1 ;
						 _AlarmOFF.AlarmTime.Minutes = 1 ;
						 _AlarmOFF.AlarmTime.Seconds = 0 ;
				  }
	    	  else
				  {
					  _AlarmON.AlarmTime.Hours = 8 	;
					  _AlarmON.AlarmTime.Minutes = 0;
					  _AlarmON.AlarmTime.Seconds = 0 ;
					  _AlarmOFF.AlarmTime.Hours = 8 ;
					 _AlarmOFF.AlarmTime.Minutes = 1 ;
					 _AlarmOFF.AlarmTime.Seconds = 0 ;
				  }
	    	  HAL_RTC_SetAlarm(&hrtc, &_AlarmON, RTC_FORMAT_BIN);
	    	  HAL_RTC_SetAlarm(&hrtc, &_AlarmOFF, RTC_FORMAT_BIN);

	    	  HAL_RTC_GetTime(&hrtc, &_RTCTime, RTC_FORMAT_BIN);

	      }
	      else if(osOK == osMessageQueueGet(QueueDs3231DateHandle, &_RTCDate, 0, 50))
	      {
	    	  HAL_RTC_SetDate(&hrtc,&_RTCDate, RTC_FORMAT_BIN);
	    	  HAL_RTC_GetDate(&hrtc,&_RTCDate, RTC_FORMAT_BIN);
	      }
	      else
	      {
	    	  HAL_RTC_GetDate(&hrtc, &_RTCDate, RTC_FORMAT_BIN);
	    	  HAL_RTC_GetTime(&hrtc, &_RTCTime, RTC_FORMAT_BIN);
	      }






	  	if (osOK == osSemaphoreAcquire(BinarySemCounterHandle, 0))
	  	{
	  		osMessageQueueGet(QueueCounterPumpHandle, &_PumpDispensing, 0, osWaitForever);
//	  		_AlarmOFF.AlarmTime.Minutes = _PumpDispensing;

	  	}
	  	else if (osOK == osSemaphoreAcquire(BinarySemSetAlarmHandle, 0))
	  	{
	  		osMessageQueueGet(QueueCounterAlarmHandle, &_AlarmPeriod, 0, osWaitForever);
//	  			  		_AlarmOFF.AlarmTime.Minutes = _AlarmPeriod;
	  	}


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
	  			  _AlarmON.AlarmTime.Hours = _AlarmON.AlarmTime.Hours + _AlarmPeriod;

	  			  if(_AlarmON.AlarmTime.Hours >= 22 || _AlarmON.AlarmTime.Hours <= 8)
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

	  			  _AlarmOFF.AlarmTime.Hours = _AlarmOFF.AlarmTime.Hours + _AlarmPeriod;

	  			if(_AlarmOFF.AlarmTime.Hours >= 22 || _AlarmOFF.AlarmTime.Hours <= 8)
	  			  	 {
	  			  		  _AlarmOFF.AlarmTime.Hours = 8;
	  			  	 }

	  			  HAL_RTC_SetAlarm(&hrtc, &_AlarmOFF, RTC_FORMAT_BIN);
	  			  osMutexRelease(MutexAlarmHandle);

	  	  	  }
	  	  else if (_RTCTime.Hours == 23 && _RTCTime.Minutes == 59)
	  	  {
	  		osThreadFlagsSet(TaskDS3231Handle, 0x00000100U);
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
	  	  	  			osMessageQueuePut(QueueRTCDataHandle, &_RTCDate, 0, osWaitForever);
	  	  	  		}



	  	  printf("Task RTC exit \n\r ");
	  	  tick4 += ((220 * osKernelGetTickFreq()) / 1000);
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
		osDelay(100);
		BME280_SetConfig(BME280_STANDBY_MS_10, BME280_FILTER_OFF);
		osMutexRelease(MutexI2CHandle);
		osTimerStart(TimerBmeDataHandle, 400);

		tick3 = osKernelGetTickCount();
  /* Infinite loop */
  for(;;)
  {

	  osMutexAcquire(MutexI2CHandle, osWaitForever);
	  printf("TASK BME280 start\n\r ");
	  	  BME280_ReadTemperatureAndPressureAndHuminidity(&_BmeData.Temperature,
	  	  				&_BmeData.Pressure, &_BmeData.Humidity);
	  	printf("TASK BME280 exit\n\r ");
	  	  osMutexRelease(MutexI2CHandle);

	  	  if (osOK == osSemaphoreAcquire(BinarySemBme280Handle, 0)) {
	  	  			osMessageQueuePut(QueueBmeHandle, &_BmeData, 0, osWaitForever);
	  	  		}

	  //	  printf("Temperature: %.2f, Humidity: %.2f z \n\r", _BmeData.Temperature, _BmeData.Humidity);
	  //////    osDelay(100);
	  		tick3 += (335 * osKernelGetTickFreq()) / 1000;
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

		osTimerStart(TimerBh1750DataHandle, 500);
		tick4 = osKernelGetTickCount();
  /* Infinite loop */
  for(;;)
  {

	  osMutexAcquire(MutexI2CHandle, osWaitForever);
	  printf("TASK BH1750 start \n\r ");
	 	  		BH1750_ReadLight(&_BHData.LightIntensity);
	 	  //	  	  printf("Light: %.2f \n\r", _BhData.LightIntensity);
	 	  		printf("TASK BH1750 exit \n\r ");
	 	  		osMutexRelease(MutexI2CHandle);

	 	  		if (osOK == osSemaphoreAcquire(BinarySemBH1750Handle, 0)) {
	 	  			osMessageQueuePut(QueueBh1750Handle, &_BHData, 0, osWaitForever);
	 	  		}
	 	  //	  	 	  if(BH1750_OK == BH1750_ReadLight(&BH1750_lux))
	 	  //	  	 	  	  {
	 	  //	  	 	  		  size = sprintf(buffer, "BH1750 Lux: %.2f\n\r", BH1750_lux);
	 	  //	  	 	  	  	  HAL_UART_Transmit(&huart2, (uint8_t*)buffer, size, 100);
	 	  //	  	 	  	  }

	 	  		tick4 += ((325 * osKernelGetTickFreq()) / 1000);
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
	Data_Structure_t _DataStructure;
	Data_Structure_t *PointerData =&_DataStructure;



	BmeData_t _BmeData;
	BHData_t _BHData;
	INA219Data_t _INA219_Battery ={0};
	INA219Data_t _INA219_PV ={0};

	RTC_TimeTypeDef _RTCTime2 = {0};
	 _RTCTime2.DayLightSaving = RTC_DAYLIGHTSAVING_NONE;
	 	 _RTCTime2.StoreOperation = RTC_STOREOPERATION_RESET;
	RTC_DateTypeDef _RTCData2 = {0};
	uint8_t _AlarmPeriod = 1;

	uint8_t _PumpDispensing = 1;


	uint32_t tick2;




	osMutexAcquire(MutexI2C2Handle, osWaitForever);
	SSD1306_Init(&hi2c1);
	osMutexRelease(MutexI2C2Handle);

	GFX_SetFont(font_8x5);
	SSD1306_Clear(BLACK);
	SSD1306_Display();

	osTimerStart(TimerSDCardHandle, 20000);
	tick2 = osKernelGetTickCount();
  /* Infinite loop */
  for(;;)
  {
	  	  SSD1306_Clear(BLACK);
	  	  osMessageQueueGet(QueueBmeHandle, &_BmeData, 0, 50);
	  	  printf("1\n\r");
	  	  osMessageQueueGet(QueueBh1750Handle, &_BHData, 0, 50);
	  	  printf("2\n\r");
	  //	  osMessageQueueGet(QueueRTCDataHandle, &_RTCDate, 0,osWaitForever);


	  	  osMessageQueueGet(QuequeBatteryHandle, &_INA219_Battery, 0, 50);
	      printf("3\n\r");
	      osMessageQueueGet(QueuePVHandle, &_INA219_PV, 0, 100);
	    	  	  printf("4\n\r");
	  	  if (osOK == osMessageQueueGet(QueueRTCTimeHandle, &_RTCTime2, 0, 50))
	  	  {


	  		  printf("5\n\r");
	  	  }

	  	  if(osOK == osMessageQueueGet(QueueRTCDataHandle, &_RTCData2, 0, 50))
	  	  {


	  		  printf("6\n\r");
	  	  }




	  	  if(osOK== osMessageQueueGet(QueueCounterPumpHandle, &_PumpDispensing, 0, 50))
	  	  {

	  		  osMessageQueuePut(QueueCounterPumpHandle, &_PumpDispensing, 0, osWaitForever);
	  		  osSemaphoreRelease(BinarySemCounterHandle);
	  	  }

	  	  else 	if(osOK== osMessageQueueGet(QueueCounterAlarmHandle, &_AlarmPeriod, 0, 50))
	  	 {

	  		   osMessageQueuePut(QueueCounterAlarmHandle, &_AlarmPeriod, 0, osWaitForever);
	  		   osSemaphoreRelease(BinarySemSetAlarmHandle);

	  	 }


//	  	   osMessageQueueGet(QueueCounterAlarmHandle, &_AlarmPeriod, 0, 50);


//	  	   osMessageQueuePut(QueueCounterPumpHandle, &_PumpOperatingTime, 0, osWaitForever);
	  	  sprintf(PointerData->MessageData, "Data: %02d.%02d.%02d;",_RTCData2.Date,_RTCData2.Month,_RTCData2.Year);
	      sprintf(PointerData->MessageTime, "%02d:%02d:%02d;",_RTCTime2.Hours,_RTCTime2.Minutes,_RTCTime2.Seconds);
	  	  sprintf(PointerData->MessageTemp, "T:%.2f C; ", _BmeData.Temperature);
	  	  sprintf(PointerData->MessageHum, "%.2f %;", _BmeData.Humidity);
	  	  sprintf(PointerData->MessageInten, "%.2f lx;", _BHData.LightIntensity);
	  	  sprintf(PointerData->MessageBatVoltageBus,"B:%u mV;", _INA219_Battery.VoltageBus);
	  	  sprintf(PointerData->MessageBatVoltageShunt,"B s:%u;",_INA219_Battery.VoltageShunt);
	  	  sprintf(PointerData->MessageBatCurrent,"B:%d mA;",_INA219_Battery.Current);
	  	  sprintf(PointerData->MessageBatPower,"B:%d mW;",_INA219_Battery.Power);
	  	  sprintf(PointerData->MessagePvVoltageBus,"P:%umV;",_INA219_PV.VoltageBus);
	      sprintf(PointerData->MessagePVVoltageShunt,"PV Voltage shunt: %u;",_INA219_PV.VoltageShunt);
	  	  sprintf(PointerData->MessagePVCurrent,"P:%d mA;",_INA219_PV.Current);
	  	  sprintf(PointerData->MessagePVPower,"P:%u mW;",_INA219_PV.Power);
	  	  //  sprintf(MessageData, "Data: %02d.%02d.20%02d  Time: %02d:%02d:%02d:%02d",_RTCDate.Date,_RTCDate.Month,_RTCDate.Year,_RTCTime.Hours,_RTCTime.Minutes,_RTCTime.Seconds);


	  	  sprintf(PointerData->MessageTimePump, "Pump:%02dMin;",_PumpDispensing);
	  	  sprintf(PointerData->MessageFreqAlarm, "Alarm:%02dH;", _AlarmPeriod);

	  	if (osOK == osSemaphoreAcquire(BinarySdCardHandle, 0)) {
	  		  	  			osMessageQueuePut(QueSDCARDHandle,PointerData, 0, 50);
	  		  	  		}




	  	  GFX_DrawString(0, 0, PointerData->MessageTime, WHITE, 0);
	  	  GFX_DrawString(70,0, PointerData->MessageBatVoltageBus,WHITE,0);
	  	  GFX_DrawString(0, 10, PointerData->MessageTemp, WHITE, 0);
	  	 GFX_DrawString(70,10, PointerData->MessageBatCurrent,WHITE,0);
	  	  GFX_DrawString(0, 20, PointerData->MessageHum, WHITE, 0);
	  	GFX_DrawString(70,20, PointerData->MessageBatPower,WHITE,0);
	  	  GFX_DrawString(0, 30, PointerData->MessageInten, WHITE, 0);
	  	 GFX_DrawString(70,30, PointerData->MessagePvVoltageBus,WHITE,0);
	  	  GFX_DrawString(0, 40, PointerData->MessageTimePump, WHITE, 0);
	  	GFX_DrawString(70,40, PointerData->MessagePVCurrent,WHITE,0);
	  	  GFX_DrawString(0, 50, PointerData->MessageFreqAlarm, WHITE, 0);
	  	GFX_DrawString(70,50, PointerData->MessagePVPower,WHITE,0);

	  	  SSD1306_Display();

	  	  printf("TASK OLED \n\r");

	  //		printf("TASK OLED I2C MUTEX is released \n\r");
	        tick2 += (600 * osKernelGetTickFreq()) / 1000;
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

	  osThreadFlagsWait(0x00000001U, osFlagsWaitAll, osWaitForever);

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
	  osThreadFlagsWait(0x00000010U, osFlagsWaitAll, osWaitForever);


	  	  drv8835_set_motorA_speed(0);

  }
  /* USER CODE END StartTaskPumpOFF */
}

/* USER CODE BEGIN Header_StartTaskCounterPump */
/**
* @brief Function implementing the TaskCounterPump thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTaskCounterPump */
void StartTaskCounterPump(void *argument)
{
  /* USER CODE BEGIN StartTaskCounterPump */
	static uint8_t _PumpDipensing = 1;
	uint32_t tick = osKernelGetTickCount();
  /* Infinite loop */
  for(;;)
  {
	  if(HAL_GPIO_ReadPin(B1_GPIO_Port, B1_Pin)== GPIO_PIN_RESET)
	 	  {
	 	  	  _PumpDipensing= _PumpDipensing + 1;
	 	  		if(_PumpDipensing >=60)
	 	  		{
	 	  			_PumpDipensing = 1;
	 	  		}
	 	  		osMessageQueuePut(QueueCounterPumpHandle, &_PumpDipensing , 0, 50);
	 	  }
	 	  else if(HAL_GPIO_ReadPin(B2_GPIO_Port, B2_Pin)== GPIO_PIN_RESET)
	 	  {
	 		  _PumpDipensing= _PumpDipensing -1;
	 		 	  		if(_PumpDipensing <=0)
	 		 	  		{
	 		 	  			_PumpDipensing = 59;
	 		 	  		}
	 		   osMessageQueuePut(QueueCounterPumpHandle, &_PumpDipensing , 0, 50);
	 	  }

	 	  	  	tick += (220 * osKernelGetTickFreq()) / 1000;
	 	  	  	osDelayUntil(tick);
  }
  /* USER CODE END StartTaskCounterPump */
}

/* USER CODE BEGIN Header_StartTaskAlarmCounter */
/**
* @brief Function implementing the TaskAlarmCounte thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTaskAlarmCounter */
void StartTaskAlarmCounter(void *argument)
{
  /* USER CODE BEGIN StartTaskAlarmCounter */
	static uint8_t _AlarmPeriod = 1;
	uint32_t tick = osKernelGetTickCount();
  /* Infinite loop */
  for(;;)
  {
	  	  	  if(HAL_GPIO_ReadPin(B3_GPIO_Port, B3_Pin)== GPIO_PIN_RESET)
	 	 	  {
	 	 	  	  _AlarmPeriod= _AlarmPeriod + 1;
	 	 	  		if(_AlarmPeriod >=16)
	 	 	  		{
	 	 	  			_AlarmPeriod = 1;
	 	 	  		}
	 	 	  		osMessageQueuePut(QueueCounterAlarmHandle, &_AlarmPeriod , 0, 50);
	 	 	  }
	 	 	  else if(HAL_GPIO_ReadPin(B4_GPIO_Port, B4_Pin)== GPIO_PIN_RESET)
	 	 	  {
	 	 		  _AlarmPeriod= _AlarmPeriod - 1;
	 	 		 	  		if(_AlarmPeriod <=0)
	 	 		 	  		{
	 	 		 	  			_AlarmPeriod = 16;
	 	 		 	  		}
	 	 		   osMessageQueuePut(QueueCounterAlarmHandle, &_AlarmPeriod , 0, 50);
	 	 	  }

	 	 	  	  	tick += (200 * osKernelGetTickFreq()) / 1000;
	 	 	  	  	osDelayUntil(tick);
  }
  /* USER CODE END StartTaskAlarmCounter */
}

/* USER CODE BEGIN Header_StartTaskSdCard */
/**
* @brief Function implementing the TaskSdCard thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTaskSdCard */
void StartTaskSdCard(void *argument)
{
  /* USER CODE BEGIN StartTaskSdCard */

	FRESULT FatFsResult;
	FATFS SdFatFs;
	FIL SdCardFile;

	uint8_t bytes;
	char data[128];

	Data_Structure_t _Data_StructureGet = {0};
	Data_Structure_t *PointerDataZ = &_Data_StructureGet;

	uint32_t tick = osKernelGetTickCount();
  /* Infinite loop */
  for(;;)
  {



	  	  	 if (osOK == osMessageQueueGet(QueSDCARDHandle, PointerDataZ, 0, osWaitForever))
	  	  	 {


				  FatFsResult = f_mount(&SdFatFs, "", 1);
				  if(FatFsResult != FR_OK)
				  {
					  bytes = sprintf(data, "FatFS mount error.\n\r");
					  HAL_UART_Transmit(&huart2, (uint8_t*)data, bytes, 1000);
				  }

				  else
				  {
					  bytes = sprintf(data, "FatFS mounted.\n\r");
					  HAL_UART_Transmit(&huart2, (uint8_t*)data, bytes, 1000);

					  //
					  // Open file on SD for writing
					  //

					  FatFsResult = f_open(&SdCardFile, "badania4.csv", FA_WRITE|FA_OPEN_APPEND);

					  //
					  // File open error check
					  //
					  if(FatFsResult != FR_OK)
					  {
						  bytes = sprintf(data, "No badaniam.csv file. Can't create.\n\r");
						  HAL_UART_Transmit(&huart2, (uint8_t*)data, bytes, 1000);
					  }


					  else
					  {

						  bytes = sprintf(data, "File opened.\n\r");
						  HAL_UART_Transmit(&huart2, (uint8_t*)data, bytes, 1000);

						  //
						  //	Print something to this file
						  //
						  f_printf(&SdCardFile,PointerDataZ->MessageData);
						  f_printf(&SdCardFile,PointerDataZ->MessageTime);
						  f_printf(&SdCardFile,PointerDataZ->MessageTemp);
						  f_printf(&SdCardFile,PointerDataZ->MessageHum);
						  f_printf(&SdCardFile,PointerDataZ->MessageInten);
						  f_printf(&SdCardFile,PointerDataZ->MessageBatVoltageBus);
						  f_printf(&SdCardFile,PointerDataZ->MessageBatVoltageShunt);
						  f_printf(&SdCardFile,PointerDataZ->MessageBatCurrent);
						  f_printf(&SdCardFile,PointerDataZ->MessageBatPower);
						  f_printf(&SdCardFile,PointerDataZ->MessagePvVoltageBus);
						  f_printf(&SdCardFile,PointerDataZ->MessagePVVoltageShunt);
						  f_printf(&SdCardFile,PointerDataZ->MessagePVCurrent);
						  f_printf(&SdCardFile,PointerDataZ->MessagePVPower);

						  f_printf(&SdCardFile,PointerDataZ->MessageTimePump);
						  f_printf(&SdCardFile,PointerDataZ->MessageFreqAlarm);
						  f_printf(&SdCardFile,"\n");




			  //  		  for(uint8_t i = 0; i < 10; i++)
			  //  		  {
			  //  			  f_printf(&SdCardFile, "Line number %d;", i);
			  //  		  }

						  //
						  // Close file
						  //
						  FatFsResult = f_close(&SdCardFile);

						  bytes = sprintf(data, "File closed!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!.\n\r");
						  HAL_UART_Transmit(&huart2, (uint8_t*)data, bytes, 1000);


						 //
								  // Open file on SD for reading
								  //
	//					  FatFsResult = f_open(&SdCardFile, "badaniaFreertos.csv", FA_READ);
	//					  if(FatFsResult != FR_OK)
	//				  {
	//						  bytes = sprintf(data, "No badaniaFreertos.csv file. Can't create.\n\r");
	//						HAL_UART_Transmit(&huart2, (uint8_t*)data, bytes, 1000);
	//				  }
	//					else
	//						{
	//						UINT len;
	//
	//							do
	//							{
	//								len=0;
	//								f_read(&SdCardFile, data,10,&len);
	//								HAL_UART_Transmit(&huart2, (uint8_t*)data, len, 1000);
	//							} while (len >0);
	//
	//						  FatFsResult = f_close(&SdCardFile);
	//						  bytes = sprintf(data, "File closed.\n\r");
	//						  HAL_UART_Transmit(&huart2, (uint8_t*)data, bytes, 1000);
	//						}




					  }
				  	  }


			  }



			tick += (10000 * osKernelGetTickFreq()) / 1000;
				  	 	 	  	  	osDelayUntil(tick);
  }
  /* USER CODE END StartTaskSdCard */
}

/* USER CODE BEGIN Header_StartTaskINA219 */
/**
* @brief Function implementing the TaskINA219 thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTaskINA219 */
void StartTaskINA219(void *argument)
{
  /* USER CODE BEGIN StartTaskINA219 */

	INA219_t ina219_2;
	ina219_calibration ina219_calibration;
	ina219_calibration.ina219_calibrationValue = 4096;
	ina219_calibration.ina219_currentDivider_mA = 10; // Current LSB = 100uA per bit (1000/100 = 10)
	ina219_calibration.ina219_powerMultiplier_mW = 2; // Power LSB = 1mW per bit (2/1)
//	ina219_calibration.ina219_calibrationValue = 8192;
//		ina219_calibration.ina219_currentDivider_mA = 20; // Current LSB = 100uA per bit (1000/100 = 10)
//		ina219_calibration.ina219_powerMultiplier_mW = 1.0f; // Power LSB = 1mW per bit (2/1)
	INA219Data_t _ina219;
	INA219Data_t *INA_219_pointer2 = &_ina219;





	 osMutexAcquire(MutexI2CHandle, osWaitForever);
	 INA219_Init(&ina219_2, &hi2c1, INA219_ADDRESS_BAT,&ina219_calibration);
	 INA219_setCalibration_32V_2A(&ina219_2,&ina219_calibration);

	 osMutexRelease(MutexI2CHandle);
	osTimerStart(TimerINA219BatHandle, 450);
	uint32_t tick = osKernelGetTickCount();
  /* Infinite loop */
  for(;;)
  {


	  	  osMutexAcquire(MutexI2CHandle, osWaitForever);
	  	  printf("INA219 Mutex Acquire\n\r");
		  INA_219_pointer2->VoltageBus = INA219_ReadBusVoltage(&ina219_2);
		  INA_219_pointer2->VoltageShunt = INA219_ReadShuntVolage(&ina219_2);
		  INA_219_pointer2->Current =  INA219_ReadCurrent(&ina219_2);
		  INA_219_pointer2->Power = INA219_ReadPower(&ina219_2, &ina219_calibration);
		 //

//
		  osMutexRelease(MutexI2CHandle);
		  printf("INA219 Mutex Released\n\r");
//
		  if (osOK == osSemaphoreAcquire(BinarySemIna219BatHandle, 0)) {
		  	 	  			osMessageQueuePut(QuequeBatteryHandle, INA_219_pointer2, 0, osWaitForever);
		  	 	  		}
		  printf("INA219 exit \n\r");
//


	  tick+=(365*osKernelGetTickFreq())/1000;
	  osDelayUntil(tick);
  }
  /* USER CODE END StartTaskINA219 */
}

/* USER CODE BEGIN Header_StartTaskINA219PV */
/**
* @brief Function implementing the TaskINA219PV thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTaskINA219PV */
void StartTaskINA219PV(void *argument)
{
  /* USER CODE BEGIN StartTaskINA219PV */

	INA219_t ina219;
	ina219_calibration ina219_calibration2;
	ina219_calibration2.ina219_calibrationValue = 4096;
	ina219_calibration2.ina219_currentDivider_mA = 10; // Current LSB = 100uA per bit (1000/100 = 10)
	ina219_calibration2.ina219_powerMultiplier_mW = 2; // Power LSB = 1mW per bit (2/1)
//	ina219_calibration.ina219_calibrationValue = 8192;
//		ina219_calibration.ina219_currentDivider_mA = 20; // Current LSB = 100uA per bit (1000/100 = 10)
//		ina219_calibration.ina219_powerMultiplier_mW = 1.0f; // Power LSB = 1mW per bit (2/1)
	INA219Data_t _ina219_2;
	INA219Data_t *INA_219_pointer_2 = &_ina219_2;





	 osMutexAcquire(MutexI2CHandle, osWaitForever);
	 INA219_Init(&ina219, &hi2c1, INA219_ADDRESS_PV,&ina219_calibration2);
	 INA219_setCalibration_32V_2A(&ina219,&ina219_calibration2);

	 osMutexRelease(MutexI2CHandle);
	osTimerStart(TimerINA219Handle, 425);
	uint32_t tick = osKernelGetTickCount();
  /* Infinite loop */
  for(;;)
  {

  	  osMutexAcquire(MutexI2CHandle, osWaitForever);
  	  printf("INA219 Mutex Acquire\n\r");
  	INA_219_pointer_2->VoltageBus = INA219_ReadBusVoltage(&ina219);
  	INA_219_pointer_2->VoltageShunt = INA219_ReadShuntVolage(&ina219);
  	INA_219_pointer_2->Current =  INA219_ReadCurrent(&ina219);
  	INA_219_pointer_2->Power = INA219_ReadPower(&ina219, &ina219_calibration2);
	 //

//
	  osMutexRelease(MutexI2CHandle);
	  printf("INA219 Mutex Released\n\r");
//
	  if (osOK == osSemaphoreAcquire(BinarySemINA219Handle, 0)) {
	  	 	  			osMessageQueuePut(QueuePVHandle, INA_219_pointer_2, 0, osWaitForever);
	  	 	  		}
	  printf("INA219 exit \n\r");
//

	  tick+=(325*osKernelGetTickFreq())/1000;
	  osDelayUntil(tick);
  }
  /* USER CODE END StartTaskINA219PV */
}

/* USER CODE BEGIN Header_StartTaskDS3231 */
/**
* @brief Function implementing the TaskDS3231 thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTaskDS3231 */
void StartTaskDS3231(void *argument)
{
  /* USER CODE BEGIN StartTaskDS3231 */

			Ds3231_t _Ds3231;

			RTC_TimeTypeDef _RTCTime1 = {0};
			RTC_DateTypeDef _RTCDate1 = {0};



			DS3231_Init(&hi2c1);
	//	  DS3231_SetRateSelect(DS3231_1HZ);



  /* Infinite loop */
  for(;;)
  {
	  	  	  osThreadFlagsWait(0x00000100U, osFlagsWaitAll, osWaitForever);

	 	  	  osMutexAcquire(MutexI2CHandle, osWaitForever);
	 	  	 _RTCDate1.Year = DS3231_GetYear() -2000;
	 		 _RTCDate1.Month = DS3231_GetMonth();
	 		 _RTCDate1.Date = DS3231_GetDate();

	 	  	  _RTCTime1.Hours = DS3231_GetHour();
	 	  	  _RTCTime1.Minutes = DS3231_GetMinute();
	 	  	  _RTCTime1.Seconds =  DS3231_GetSecond();



	 		  osMutexRelease(MutexI2CHandle);


	 		  osMessageQueuePut(QueDs3231TimeHandle, &_RTCTime1, 0, osWaitForever);
	 		  osMessageQueuePut(QueueDs3231DateHandle, &_RTCDate1, 0, osWaitForever);

	 		  printf(" Date: %d: %d: %d\n\r", _RTCDate1.Year, _RTCDate1.Month, _RTCDate1.Date );
	 		  printf(" time: %d: %d: %d\n\r", _RTCTime1.Hours, _RTCTime1.Minutes, _RTCTime1.Seconds );
	 //		  osThreadFlagsClear(0x00000100U);
	 		  osThreadFlagsClear(0x00000100U);
  }
  /* USER CODE END StartTaskDS3231 */
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

/* CallbackTimerSDCard function */
void CallbackTimerSDCard(void *argument)
{
  /* USER CODE BEGIN CallbackTimerSDCard */
	osSemaphoreRelease(BinarySdCardHandle);
  /* USER CODE END CallbackTimerSDCard */
}

/* CallbackTimerINA219 function */
void CallbackTimerINA219(void *argument)
{
  /* USER CODE BEGIN CallbackTimerINA219 */
	osSemaphoreRelease(BinarySemINA219Handle);
  /* USER CODE END CallbackTimerINA219 */
}

/* CallbackTimerINA219Bat function */
void CallbackTimerINA219Bat(void *argument)
{
  /* USER CODE BEGIN CallbackTimerINA219Bat */
	osSemaphoreRelease(BinarySemIna219BatHandle);
  /* USER CODE END CallbackTimerINA219Bat */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

//void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
//{
//	static uint8_t _PumpDipensing = 1;
//
//
//
//	if(GPIO_Pin == B1_Pin)
//	{
//
//		_PumpDipensing= _PumpDipensing + 1;
//		if(_PumpDipensing >=60)
//		{
//			_PumpDipensing = 1;
//		}
//		osMessageQueuePut(QueueCounterPumpHandle, &_PumpDipensing , 0, 0);
//
//
//
////		osThreadFlagsSet(TaskAlarmCountUHandle, 0x00010000U);
//
//	}
//
//}
//void Parse(void)
//{
//	uint8_t i,j;
//	float EnvParameters[5];
//	char Message[200];
//
//	for ( i = 0; i < 5; i++)
//	{
//		char *ParsePointer = strtok(NULL,",");
//	}
//}

void _putchar(char character)
{
	// send char to console etc.
	osMutexAcquire(MutexPrintfHandle, osWaitForever);
	HAL_UART_Transmit(&huart2, (uint8_t*)&character, 1, 1000);

	osMutexRelease(MutexPrintfHandle);
}

/* USER CODE END Application */


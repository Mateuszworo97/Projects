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

#include "stm32f4xx_hal_exti.h"
#include "stm32f4xx_hal_uart.h"

#include <stdio.h>
#include <printf.h>

#include "usart.h"
#include "gpio.h"
#include "i2c.h"
#include "bme280.h"
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
  .stack_size = 256 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for MutexPrintf */
osMutexId_t MutexPrintfHandle;
const osMutexAttr_t MutexPrintf_attributes = {
  .name = "MutexPrintf"
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */
void _putchar(char character);
/* USER CODE END FunctionPrototypes */

void StartDefaultTask(void *argument);
void StartTaskTaskRTC(void *argument);

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

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of defaultTask */
  defaultTaskHandle = osThreadNew(StartDefaultTask, NULL, &defaultTask_attributes);

  /* creation of TaskRTC */
  TaskRTCHandle = osThreadNew(StartTaskTaskRTC, NULL, &TaskRTC_attributes);

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
	  HAL_GPIO_TogglePin(LD2_GPIO_Port, LD2_Pin);
	  printf("LED2 TASK \n\r");
	  tick += (300 * osKernelGetTickFreq()) / 1000;
	  osDelayUntil(tick);
  }
  /* USER CODE END StartDefaultTask */
}

/* USER CODE BEGIN Header_StartTaskTaskRTC */
/**
* @brief Function implementing the TaskRTC thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTaskTaskRTC */
void StartTaskTaskRTC(void *argument)
{
  /* USER CODE BEGIN StartTaskTaskRTC */

	char MessageTemp[32];

	SSD1306_Init(&hi2c1);

	GFX_SetFont(font_8x5);

	SSD1306_Clear(BLACK);

	SSD1306_Display();

	uint32_t tick2 = osKernelGetTickCount();
  /* Infinite loop */
  for(;;)
  {
	  SSD1306_Clear(BLACK);
	  sprintf(MessageTemp, "Temperature: 28 ");
	  GFX_DrawString(0, 0, MessageTemp, WHITE, 0);

	  SSD1306_Display();
	  printf("TASK OLED \n\r");

	tick2 += (100 * osKernelGetTickFreq()) / 1000;
	osDelayUntil(tick2);
  }
  /* USER CODE END StartTaskTaskRTC */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */
void _putchar(char character) {
	// send char to console etc.
	osMutexAcquire(MutexPrintfHandle, osWaitForever);
	HAL_UART_Transmit(&huart2, (uint8_t*)&character, 1, 1000);

	osMutexRelease(MutexPrintfHandle);
}

/* USER CODE END Application */


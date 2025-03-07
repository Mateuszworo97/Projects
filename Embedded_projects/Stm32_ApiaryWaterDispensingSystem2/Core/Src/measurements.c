/*
 * measurments.c
 *
 *  Created on: Feb 24, 2025
 *      Author: Y700
 */


#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include "main.h"
#include "cmsis_os2.h"  // System operacyjny
#include "FreeRTOS.h"

#include "button.h"
#include "measurements.h"


#include "bme280.h"
#include "bh1750.h"
#include "INA219.h"
#include "GFX_BW.h"
#include "SSD1306_OLED.h"




extern osMessageQueueId_t QueueCounterPumpHandle;
extern osMessageQueueId_t QueueBmeHandle;
extern osMessageQueueId_t QueueBh1750Handle;
extern osMessageQueueId_t QuequeBatteryHandle;
extern osMessageQueueId_t QueuePVHandle;
extern osMessageQueueId_t QueueRTCTimeHandle;
extern osMessageQueueId_t QueueRTCDataHandle;
extern osSemaphoreId_t BinarySemCounterHandle;
extern osSemaphoreId_t BinarySdCardHandle;
extern osMessageQueueId_t QueSDCARDHandle;

// Współrzędne dla wyświetlacza (do rysowania na ekranie)
const int positions[][2] = {
       {0, 0}, {70, 0}, {0, 10}, {70, 10}, {0, 20}, {70, 20},
       {0, 30}, {70, 30}, {0, 40}, {70, 40}, {0, 50}, {70, 50}
   };






void UpdateDisplayMessages(Data_Structure_t *PointerData, SensorData_t *wskSensorData) {

//	  SensorQueue_t sensorQueues[] = {
//		        { QueueBmeHandle, "BME280", sizeof(BmeData_t), NULL },
//		        { QueueBh1750Handle, "BH1750", sizeof(BHData_t), NULL },
//		        { QuequeBatteryHandle, "Battery", sizeof(INA219Data_t), NULL },
//		        { QueuePVHandle, "PV", sizeof(INA219Data_t), NULL },
//		        { QueueRTCTimeHandle, "RTC Time", sizeof(RTC_TimeTypeDef), NULL },
//		        { QueueRTCDataHandle, "RTC Data", sizeof(RTC_DateTypeDef), NULL }
//		    };



    // Czyszczenie wyświetlacza
    SSD1306_Clear(BLACK);

    // Pobieranie danych z kolejki
    osMessageQueueGet(QueueBmeHandle, &wskSensorData->BmeData, 0, 50);
    printf("1\n\r");
    osMessageQueueGet(QueueBh1750Handle, &wskSensorData->BHData, 0, 50);
    printf("2\n\r");
    osMessageQueueGet(QuequeBatteryHandle, &wskSensorData->INA219_Battery, 0, 50);
    printf("3\n\r");
    osMessageQueueGet(QueuePVHandle, &wskSensorData->INA219_PV, 0, 100);
    printf("4\n\r");

    // Pobieranie czasu RTC i daty
    if (osOK == osMessageQueueGet(QueueRTCTimeHandle, &wskSensorData->RTCTime, 0, 50)) {
        printf("5\n\r");
    }
    if (osOK == osMessageQueueGet(QueueRTCDataHandle, &wskSensorData->RTCData, 0, 50)) {
        printf("6\n\r");
    }

    // Pobieranie danych pompy
    if (osOK == osMessageQueueGet(QueueCounterPumpHandle, &wskSensorData->config, 0, 50)) {
        osMessageQueuePut(QueueCounterPumpHandle, &wskSensorData->config, 0, osWaitForever);
        osSemaphoreRelease(BinarySemCounterHandle);
    }

    // Formatowanie wiadomości
    sprintf(PointerData->MessageData, "Data: %02d.%02d.%02d;", wskSensorData->RTCData.Date, wskSensorData->RTCData.Month, wskSensorData->RTCData.Year);
    sprintf(PointerData->MessageTime, "%02d:%02d:%02d;", wskSensorData->RTCTime.Hours, wskSensorData->RTCTime.Minutes, wskSensorData->RTCTime.Seconds);
    sprintf(PointerData->MessageTemp, "T:%.2f C;",wskSensorData->BmeData.Temperature);
    sprintf(PointerData->MessageHum, "%.2f ", wskSensorData->BmeData.Humidity);
    sprintf(PointerData->MessageInten, "%.2f lx;", wskSensorData->BHData.LightIntensity);
    sprintf(PointerData->MessageBatVoltageBus, "B:%u mV;", wskSensorData->INA219_Battery.VoltageBus);
    sprintf(PointerData->MessageBatVoltageShunt, "B s:%u mV;", wskSensorData->INA219_Battery.VoltageShunt);
    sprintf(PointerData->MessageBatCurrent, "B:%d mA;", wskSensorData->INA219_Battery.Current);
    sprintf(PointerData->MessageBatPower, "B:%d mW;", wskSensorData->INA219_Battery.Power);
    sprintf(PointerData->MessagePvVoltageBus, "P:%u mV;", wskSensorData->INA219_PV.VoltageBus);
    sprintf(PointerData->MessagePVVoltageShunt, "PV Voltage shunt: %u mV;", wskSensorData->INA219_PV.VoltageShunt);
    sprintf(PointerData->MessagePVCurrent, "P:%d mA;", wskSensorData->INA219_PV.Current);
    sprintf(PointerData->MessagePVPower, "P:%u mW;", wskSensorData->INA219_PV.Power);
    if (wskSensorData->config.CurrentConfig == CONFIG_PUMP_TIME )
    	sprintf(PointerData->MessageTimePump, "Pump:%02dMin;", wskSensorData->config.TempValue);
    else
    	sprintf(PointerData->MessageTimePump, "Alarm:%02dMin;", wskSensorData->config.TempValue);


    // Przekazywanie danych do kolejki karty SD
    if (osOK == osSemaphoreAcquire(BinarySdCardHandle, 0)) {
        osMessageQueuePut(QueSDCARDHandle, PointerData, 0, 50);
    }

    // Wyświetlanie wiadomości na ekranie
    GFX_DrawString(0, 0, PointerData->MessageTime, WHITE, 0);
    GFX_DrawString(70, 0, PointerData->MessageBatVoltageBus, WHITE, 0);
    GFX_DrawString(0, 10, PointerData->MessageTemp, WHITE, 0);
    GFX_DrawString(70, 10, PointerData->MessageBatCurrent, WHITE, 0);
    GFX_DrawString(0, 20, PointerData->MessageHum, WHITE, 0);
    GFX_DrawString(70, 20, PointerData->MessageBatPower, WHITE, 0);
    GFX_DrawString(0, 30, PointerData->MessageInten, WHITE, 0);
    GFX_DrawString(70, 30, PointerData->MessagePvVoltageBus, WHITE, 0);
    GFX_DrawString(0, 40, PointerData->MessageTimePump, WHITE, 0);
    GFX_DrawString(70, 40, PointerData->MessagePVCurrent, WHITE, 0);
    GFX_DrawString(0, 50, PointerData->MessageFreqAlarm, WHITE, 0);
    GFX_DrawString(70, 50, PointerData->MessagePVPower, WHITE, 0);


}

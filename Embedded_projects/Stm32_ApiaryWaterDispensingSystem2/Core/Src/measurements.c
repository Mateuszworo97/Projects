/*
 * measurments.c
 *
 *  Created on: Feb 24, 2025
 *      Author: Y700
 */


#include <stdio.h>
#include <string.h>
#include "main.h"
#include "cmsis_os2.h"  // System operacyjny
#include "measurements.h"
#include "button.h"
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

static SensorQueue_t sensorQueues[] = {
    { &QueueBmeHandle, "BME280" },
    { &QueueBh1750Handle, "BH1750" },
    { &QuequeBatteryHandle, "Battery" },
    { &QueuePVHandle, "PV" },
    { &QueueRTCTimeHandle, "RTC Time" },
    { &QueueRTCDataHandle, "RTC Data" }
};



void ReadSensorData(SensorData_t *wskSensorData,CONFIG_MANAGER *wskConfig )
{
	for (size_t i = 0; i < sizeof(sensorQueues)/sizeof(sensorQueues[0]); i++)
	{
		if (osOK == osMessageQueueGet(&sensorQueues[i].queue,wskSensorData, 0,osWaitForever))
		{
			//sledzenie
			printf ("%s OK \n\r", sensorQueues[i].name);

		}
		else
		{
			printf("%s FAIL \n\r", sensorQueues[i].name);
		}
	}

	//Pobieranie aktualnych danych konfiguracyjnych dla pompy i alarmu
	if (osOK == osMessageQueueGet(QueueCounterPumpHandle, wskConfig,0 , 50 ))
	{
		osMessageQueuePut(QueueCounterPumpHandle, wskConfig, 0, osWaitForever);
		osSemaphoreRelease(BinarySemCounterHandle);
	}

}


void UpdateDisplayMessages(Data_Structure_t *PointerData,SensorData_t *wskSensorData,CONFIG_MANAGER *wskConfig) {
    MessageEntry_t messages[] = {
        {PointerData->MessageData, "Data: %02d.%02d.%02d;",&wskSensorData->RTCData},
        {PointerData->MessageTime, "%02d:%02d:%02d;", &wskSensorData->RTCTime},
        {PointerData->MessageTemp, "T:%.2f C;", &wskSensorData->BmeData.Temperature},
        {PointerData->MessageHum, "%.2f %;", &wskSensorData->BmeData.Humidity},
        {PointerData->MessageInten, "%.2f lx;", &wskSensorData->BHData.LightIntensity},
        {PointerData->MessageBatVoltageBus, "B:%u mV;", &wskSensorData->INA219_Battery.VoltageBus},
        {PointerData->MessageBatVoltageShunt, "B s:%u;", &wskSensorData->INA219_Battery.VoltageShunt},
        {PointerData->MessageBatCurrent, "B:%d mA;",&wskSensorData->INA219_Battery.Current},
        {PointerData->MessageBatPower, "B:%d mW;", &wskSensorData->INA219_Battery.Power},
        {PointerData->MessagePvVoltageBus, "P:%u mV;", &wskSensorData->INA219_PV.VoltageBus},
        {PointerData->MessagePVVoltageShunt, "PV Voltage shunt: %u;", &wskSensorData->INA219_PV.VoltageShunt},
        {PointerData->MessagePVCurrent, "P:%d mA;", &wskSensorData->INA219_PV.Current},
        {PointerData->MessagePVPower, "P:%u mW;", &wskSensorData->INA219_PV.Power},
        {PointerData->MessageTimePump, "Pump:%02dMin;", &wskConfig->PumpTime},
        {PointerData->MessageFreqAlarm, "Alarm:%02dH;", &wskConfig->AlarmFreq}
    };

    // Formatowanie komunikatów
    for (int i = 0; i < sizeof(messages) / sizeof(messages[0]); i++) {
        sprintf(messages[i].buffer, messages[i].format, *(int *)(messages[i].value));
    }

    // Wysłanie danych na kartę SD
    if (osOK == osSemaphoreAcquire(BinarySdCardHandle, 0)) {
        osMessageQueuePut(QueSDCARDHandle, PointerData, 0, 50);
    }

    // Współrzędne dla wyświetlacza
    const int positions[][2] = {
        {0, 0}, {70, 0}, {0, 10}, {70, 10}, {0, 20}, {70, 20},
        {0, 30}, {70, 30}, {0, 40}, {70, 40}, {0, 50}, {70, 50}
    };

    // Wyświetlanie komunikatów na ekranie
    for (int i = 0; i < 12; i++) {
        GFX_DrawString(positions[i][0], positions[i][1], messages[i].buffer, WHITE, 0);
    }

//    SSD1306_Display();
//    printf("TASK OLED \n\r");
}

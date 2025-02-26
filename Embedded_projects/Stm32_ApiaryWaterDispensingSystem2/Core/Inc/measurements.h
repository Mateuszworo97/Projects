/*
 * measurements.h
 *
 *  Created on: Feb 24, 2025
 *      Author: Y700
 */

#ifndef INC_MEASUREMENTS_H_
#define INC_MEASUREMENTS_H_


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

typedef struct {
	float LightIntensity;

} BHData_t;

typedef struct{
	uint16_t VoltageBus;
	uint16_t VoltageShunt;
	uint16_t Power;
	int16_t Current;

}INA219Data_t;

typedef union {
    BmeData_t BmeData;
    BHData_t BHData;
    INA219Data_t INA219_Battery;
    INA219Data_t INA219_PV;
    RTC_TimeTypeDef RTCTime;
    RTC_DateTypeDef RTCData;

} SensorData_t;

typedef struct {
    osMessageQueueId_t *queue;
    const char *name;
} SensorQueue_t;


typedef struct {
    char *buffer;
    const char *format;
    void *value;
} MessageEntry_t;

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


void ReadSensorData(SensorData_t *wskSensorData,CONFIG_MANAGER *wskConfig );
void UpdateDisplayMessages(Data_Structure_t *PointerData,SensorData_t *wskSensorData,CONFIG_MANAGER *wskConfig);

#endif /* INC_MEASUREMENTS_H_ */

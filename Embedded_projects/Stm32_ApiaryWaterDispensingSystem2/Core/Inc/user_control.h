/*
 * user_control.h
 *
 *  Created on: Jan 28, 2025
 *      Author: Y700
 */

#ifndef INC_USER_CONTROL_H_
#define INC_USER_CONTROL_H_


#include <stdio.h>
#include <stdint.h>

#define FLAGS_SIZE 3

#define FLAG1_IDX   0
#define FLAG1_BIT   3
#define FLAG1_MASK  (1 << FLAG1_BIT)

#define FLAG2_IDX   0
#define FLAG2_BIT   6
#define FLAG2_MASK  (1 << FLAG2_BIT)

//#define FLAG3_IDX   1
//#define FLAG3_BIT   2
//#define FLAG3_MASK  (1 << FLAG3_BIT)
//
//#define FLAG4_IDX   1
//#define FLAG4_BIT   7
//#define FLAG4_MASK  (1 << FLAG4_BIT)
//
//#define FLAG5_IDX   2
//#define FLAG5_BIT   0
//#define FLAG5_MASK  (1 << FLAG5_BIT)
//
//#define FLAG6_IDX   2
//#define FLAG6_BIT   5
//#define FLAG6_MASK  (1 << FLAG6_BIT)

typedef void (*enable_funptr)(void);
typedef void (*trigger_funptr)(void);

struct flag_data
{
    size_t idx;
    uint32_t mask;
    enable_funptr enable;
    trigger_funptr trigger;
};

static void flag1_enable(void);
static void flag1_trigger(void);
static void flag2_enable(void);
static void flag2_trigger(void);
//static void flag3_enable(void);
//static void flag3_trigger(void);
//static void flag4_enable(void);
//static void flag4_trigger(void);
//static void flag5_enable(void);
//static void flag5_trigger(void);
//static void flag6_enable(void);
//static void flag6_trigger(void);

static const struct flag_data flag_mapper[] = {
    {FLAG1_IDX, FLAG1_MASK, flag1_enable, flag1_trigger},
    {FLAG2_IDX, FLAG2_MASK, flag2_enable, flag2_trigger},
//    {FLAG3_IDX, FLAG3_MASK, flag3_enable, flag3_trigger},
//    {FLAG4_IDX, FLAG4_MASK, flag4_enable, flag4_trigger},
//    {FLAG5_IDX, FLAG5_MASK, flag5_enable, flag5_trigger},
//    {FLAG6_IDX, FLAG6_MASK, flag6_enable, flag6_trigger},
};

#define FLAG_MAPPER_SIZE (sizeof(flag_mapper)/sizeof(flag_mapper[0]))

void process_flags(uint8_t *flags);
/*
enum Pump_Button
{
	BUTTON_UP,
	BUTTON_DOWN,
	BUTTON_ACTIVATED,
	BUTTON_OPTION,
};
typedef void (*command_fun_t) (void);

static const command_fun_t Pump_command_fun_table[BUTTON_OPTION] =
{
	PUMP_START,
	PUMP_STOP,
	NULL,
};
*/
#endif /* INC_USER_CONTROL_H_ */

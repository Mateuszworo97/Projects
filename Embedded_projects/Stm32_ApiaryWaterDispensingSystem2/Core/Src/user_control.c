/*
 * user_control.c
 *
 *  Created on: Jan 28, 2025
 *      Author: Y700
 */


#include "user_control.h"
#include <stdio.h>
#include <stdint.h>

void process_flags(uint8_t *flags)
{
    int32_t i = 0;

    for (i = 0; i < FLAG_MAPPER_SIZE; i++)
    {
        size_t idx = flag_mapper[i].idx;
        uint32_t mask = flag_mapper[i].mask;
        if (flags[idx] & mask)
        {
            flag_mapper[i].trigger();
        }
    }
}

//mapping


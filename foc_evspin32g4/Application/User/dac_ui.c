
/**
  ******************************************************************************
  * @file    dac_ui.c
  * @author  Motor Control SDK Team, ST Microelectronics
  * @brief   This file provides firmware functions that implement the following features
  *          of the dac component of the Motor Control SDK:
  *           + dac or virtual dac initialization
  *           + dac or virtual dac execution
  *
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "dac_ui.h"
#include "register_interface.h"
#include "mc_stm_types.h"

#define DACOFF 32768

/** @addtogroup MCSDK
  * @{
  */

/** @addtogroup MCUI
  * @{
  */

/**
 * @defgroup DAC_UserInterface DAC User Interface
 *
 * @brief DAC User Interface
 *
 * @todo Complete Documentation.
 * @{
 */

DAC_Handle_t DAC_Handle;

/**
  * @brief  Hardware and software initialization of the DAC object.
  * @param  pHandle pointer on related component instance.
  */
__weak void DAC_Init(DAC_Handle_t *pHandle)
{
  /* Enable DAC Channel1 */
  RI_GetPtrReg ((MC_REG_I_A + 0x1) , (void *) &pHandle->ptrDataCh[DAC_CH1]); /*By default send Ia motor 1 */
  LL_DAC_Enable(DAC1, LL_DAC_CHANNEL_1);
  /* Enable DAC Channel2 */
  RI_GetPtrReg ((MC_REG_I_B + 0x1) , (void *) &pHandle->ptrDataCh[DAC_CH2]); /*By default send Ib motor 1 */
  LL_DAC_Enable(DAC1, LL_DAC_CHANNEL_2);

}

/**
  * @brief  This method is used to update the DAC outputs. The selected
  *         variables will be provided in the related output channels.
  * @param  pHandle pointer on related component instance.
  */

__weak void DAC_Exec(DAC_Handle_t *pHandle)
{

  LL_DAC_ConvertData12LeftAligned(DAC1, LL_DAC_CHANNEL_1,
                                  DACOFF + *((int16_t*) pHandle-> ptrDataCh[DAC_CH1]));
  LL_DAC_TrigSWConversion(DAC1, LL_DAC_CHANNEL_1);

  LL_DAC_ConvertData12LeftAligned(DAC1, LL_DAC_CHANNEL_2,
                                  DACOFF + ((int16_t)* pHandle->ptrDataCh[DAC_CH2]));
  LL_DAC_TrigSWConversion(DAC1, LL_DAC_CHANNEL_2);
}

/**
  * @brief  Set up the DAC outputs. The selected
  *         variables will be provided in the related output channels after next
  *         DACExec.
  * @param  user interface handle.
  * @param  bChannel the DAC channel to be programmed. It must be one of the
  *         exported channels Ex. DAC_CH1.
  * @param  regID the variables to be provided in out through the selected
  *         channel. It must be one of the exported UI register Ex.
  *         MC_PROTOCOL_REG_I_A.
  * @retval none.
  */
__weak void DAC_SetChannelConfig(DAC_Handle_t *pHandle, DAC_Channel_t bChannel, uint16_t regID)
{
  pHandle->dataCh[bChannel] = regID;
  RI_GetPtrReg (regID, (void *) &pHandle->ptrDataCh[bChannel]);
}

uint16_t DAC_GetChannelConfig(DAC_Handle_t *pHandle, DAC_Channel_t bChannel)
{
  return (pHandle->dataCh[bChannel]);
}

/**
  * @}
  */

/**
  * @}
  */

/******************* (C) COPYRIGHT 2019 STMicroelectronics *****END OF FILE****/

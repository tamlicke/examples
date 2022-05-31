/*
 * File: sensorCoreAlgorithm.c
 *
 * Code generated for Simulink model 'sensorCoreAlgorithm'.
 *
 * Model version                  : 4.0
 * Simulink Coder version         : 9.7 (R2022a) 13-Nov-2021
 * C/C++ source code generated on : Mon May 16 19:36:18 2022
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives:
 *    1. Execution efficiency
 *    2. Traceability
 * Validation result: Not run
 */

#include "sensorCoreAlgorithm.h"
#include "rtwtypes.h"
#include "MeasurementMsgBusType.h"
#include <stddef.h>

/* Macros for accessing real-time model data structure */
#ifndef rtmGetsensorCoreAlgorithm_InstP_ref
#define rtmGetsensorCoreAlgorithm_InstP_ref(rtm) ((rtm)->sensorCoreAlgorithm_InstP_ref)
#endif

#ifndef rtmSetsensorCoreAlgorithm_InstP_ref
#define rtmSetsensorCoreAlgorithm_InstP_ref(rtm, val) ((rtm)->sensorCoreAlgorithm_InstP_ref = (val))
#endif

/* Output and update for referenced model: 'sensorCoreAlgorithm' */
void sensorCoreAlgorithm(sensorCoreAlgorithm_RT_MODEL * const
  sensorCoreAlgorithmrtM, const real_T
  *rtu_tirePressureSensorMeasurementInputPort, sensorCoreAlgorithm_DW_f *localDW)
{
  sensorCoreAlgorithm_InstP *sensorCoreAlgorithm_InstP_arg =
    sensorCoreAlgorithmrtM->sensorCoreAlgorithm_InstP_ref;
  MeasurementMsgBusType rtb_measurementMessageBus;
  int32_T status;

  /* BusCreator: '<Root>/measurementMessageBusCreator' incorporates:
   *  Constant: '<Root>/localDeviceIDModelArgumentConstant'
   */
  rtb_measurementMessageBus.source =
    sensorCoreAlgorithm_InstP_arg->LOCAL_DEVICE_ID;
  rtb_measurementMessageBus.tire_pressure_sensor_measurement =
    *rtu_tirePressureSensorMeasurementInputPort;

  /* Send: '<Root>/measurementMessageSend' incorporates:
   *  BusCreator: '<Root>/measurementMessageBusCreator'
   */
  if (localDW->sensorMeasurmentMessageOutputPort_SendData.SendData != NULL) {
    localDW->sensorMeasurmentMessageOutputPort_SendData.SendData
      (localDW->sensorMeasurmentMessageOutputPort_SendData.host,
       &rtb_measurementMessageBus, sizeof(MeasurementMsgBusType), &status);
  }

  /* End of Send: '<Root>/measurementMessageSend' */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

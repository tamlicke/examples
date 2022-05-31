/*
 * File: SendData_MeasurementMsgBusType.h
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

#ifndef RTW_HEADER_SendData_MeasurementMsgBusType_h_
#define RTW_HEADER_SendData_MeasurementMsgBusType_h_
#include "MeasurementMsgBusType.h"
#include "rtwtypes.h"
#ifndef typedef_SendData_MeasurementMsgBusType
#define typedef_SendData_MeasurementMsgBusType

typedef struct {
  void *host;
  void (*SendData)(void *, const MeasurementMsgBusType *, int32_T, int32_T *);
} SendData_MeasurementMsgBusType;

#endif                              /* typedef_SendData_MeasurementMsgBusType */
#endif                        /* RTW_HEADER_SendData_MeasurementMsgBusType_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

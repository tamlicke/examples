/*
 * File: sensorCoreAlgorithm.h
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

#ifndef RTW_HEADER_sensorCoreAlgorithm_h_
#define RTW_HEADER_sensorCoreAlgorithm_h_
#ifndef sensorCoreAlgorithm_COMMON_INCLUDES_
#define sensorCoreAlgorithm_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                /* sensorCoreAlgorithm_COMMON_INCLUDES_ */

#include <stddef.h>
#include "SendData_MeasurementMsgBusType.h"
#include "DeviceIDBusType.h"
#include "MeasurementMsgBusType.h"

/* Model Code Variants */

/* Forward declaration for rtModel */
typedef struct sensorCoreAlgorithm_tag_RTM sensorCoreAlgorithm_RT_MODEL;

/* Block signals and states (default storage) for model 'sensorCoreAlgorithm' */
typedef struct {
  SendData_MeasurementMsgBusType sensorMeasurmentMessageOutputPort_SendData;/* synthesized block */
} sensorCoreAlgorithm_DW_f;

/* instance parameters, for model 'sensorCoreAlgorithm' */
typedef struct {
  DeviceIDBusType LOCAL_DEVICE_ID;     /* Variable: LOCAL_DEVICE_ID
                                        * Referenced by:
                                        */
} sensorCoreAlgorithm_InstP;

/* Real-time Model Data Structure */
struct sensorCoreAlgorithm_tag_RTM {
  sensorCoreAlgorithm_InstP *sensorCoreAlgorithm_InstP_ref;
};

typedef struct {
  sensorCoreAlgorithm_DW_f rtdw;
  sensorCoreAlgorithm_RT_MODEL rtm;
} sensorCoreAlgorithm_MdlrefDW;

extern void sensorCoreAlgorithm(sensorCoreAlgorithm_RT_MODEL * const
  sensorCoreAlgorithmrtM, const real_T
  *rtu_tirePressureSensorMeasurementInputPort, sensorCoreAlgorithm_DW_f *localDW);

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<Root>/renameToBusElementNameSignalConversion' : Eliminate redundant signal conversion block
 */

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'sensorCoreAlgorithm'
 */

/*-
 * Requirements for '<Root>': sensorCoreAlgorithm
 */
#endif                                 /* RTW_HEADER_sensorCoreAlgorithm_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

/*
 * File: sensorCodeGenerationWrapper.h
 *
 * Code generated for Simulink model 'sensorCodeGenerationWrapper'.
 *
 * Model version                  : 4.0
 * Simulink Coder version         : 9.7 (R2022a) 13-Nov-2021
 * C/C++ source code generated on : Mon May 16 19:36:40 2022
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives:
 *    1. Execution efficiency
 *    2. Traceability
 * Validation result: Not run
 */

#ifndef RTW_HEADER_sensorCodeGenerationWrapper_h_
#define RTW_HEADER_sensorCodeGenerationWrapper_h_
#ifndef sensorCodeGenerationWrapper_COMMON_INCLUDES_
#define sensorCodeGenerationWrapper_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "sensor_hand_code_header.h"
#include "stddef.h"
#endif                        /* sensorCodeGenerationWrapper_COMMON_INCLUDES_ */

#include <stddef.h>
#include "MeasurementMsgBusType.h"
#include "sensorCoreAlgorithm.h"
#include "DeviceIDBusType.h"
#include "rt_defines.h"

/* Model Code Variants */
#ifndef DEFINED_TYPEDEF_FOR_QueuePolicy_T_
#define DEFINED_TYPEDEF_FOR_QueuePolicy_T_

typedef enum {
  MSG_QUEUE_UNUSED = -1,               /* Default value */
  MSG_FIFO_QUEUE,
  MSG_LIFO_QUEUE,
  MSG_PRIORITY_QUEUE
} QueuePolicy_T;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Msg_MeasurementMsgBusType_
#define DEFINED_TYPEDEF_FOR_Msg_MeasurementMsgBusType_

typedef struct {
  MeasurementMsgBusType *fData;
} Msg_MeasurementMsgBusType;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Buffer_MeasurementMsgBusType_
#define DEFINED_TYPEDEF_FOR_Buffer_MeasurementMsgBusType_

typedef struct {
  boolean_T fOccupied;
  Msg_MeasurementMsgBusType fMsg;
} Buffer_MeasurementMsgBusType;

#endif

#ifndef DEFINED_TYPEDEF_FOR_MemPool_MeasurementMsgBusType_
#define DEFINED_TYPEDEF_FOR_MemPool_MeasurementMsgBusType_

typedef struct {
  MeasurementMsgBusType *fMemArray;
  int32_T fNumUsed;
  MeasurementMsgBusType **fFreeList;
  int32_T fNumFree;
  int32_T fSize;
} MemPool_MeasurementMsgBusType;

#endif

#ifndef SS_UINT64
#define SS_UINT64                      24
#endif

#ifndef SS_INT64
#define SS_INT64                       25
#endif

/* Block signals and states (default storage) for system '<Root>' */
typedef struct {
  sensorCoreAlgorithm_MdlrefDW sensorCoreAlgorithmModelReference_InstanceData;
                                /* '<Root>/sensorCoreAlgorithmModelReference' */
  MeasurementMsgBusType slMsgMgr_memArray_MeasurementMsgBusType[2];/* synthesized block */
  MemPool_MeasurementMsgBusType slMsgMgr_MemPool_MeasurementMsgBusType;/* synthesized block */
  MeasurementMsgBusType Receive;       /* '<Root>/Receive' */
  Buffer_MeasurementMsgBusType Queue_InsertedFor_Receive_at_inport_0_Queue;/* synthesized block */
  MeasurementMsgBusType* slMsgMgr_freeList_MeasurementMsgBusType[2];/* synthesized block */
} DW;

/* instance parameters, for system '<Root>' */
typedef struct {
  sensorCoreAlgorithm_InstP
    sensorCodeGenerationWrapperrtsensorCoreAlgorithmModelReference;
                                /* '<Root>/sensorCoreAlgorithmModelReference' */
} InstP;

/* Parameters (default storage) */
struct P_ {
  uint32_T SENSOR_PARAMETERS_NVM_ADDRESS_AS_UINT32;
                            /* Variable: SENSOR_PARAMETERS_NVM_ADDRESS_AS_UINT32
                             * Referenced by: '<S1>/readNVMMATLABFunction'
                             */
  MeasurementMsgBusType Receive_InitialValue;
                                     /* Computed Parameter: Receive_InitialValue
                                      * Referenced by: '<Root>/Receive'
                                      */
};

/* Parameters (default storage) */
typedef struct P_ P;

/* Block parameters (default storage) */
extern P rtP;

/* Block signals and states (default storage) */
extern DW rtDW;

/* instance parameters */
extern InstP rtInstP;

/* Model entry point functions */
extern void sensorCodeGenerationWrapper_initialize(void);
extern void sensorCodeGenerationWrapper_step(void);
extern void sensorCodeGenerationWrapper_terminate(void);

/* Exported entry point function */
extern void Receive_SendData(void *host, const MeasurementMsgBusType *data,
  int32_T length, int32_T *status_ptr);

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
 * '<Root>' : 'sensorCodeGenerationWrapper'
 * '<S1>'   : 'sensorCodeGenerationWrapper/readNVMInitializeFunction'
 * '<S2>'   : 'sensorCodeGenerationWrapper/sensorTransmitMATLABFunction'
 * '<S3>'   : 'sensorCodeGenerationWrapper/ssensorReadPressureMATLABFunction'
 * '<S4>'   : 'sensorCodeGenerationWrapper/readNVMInitializeFunction/readNVMMATLABFunction'
 */

/*-
 * Requirements for '<Root>': sensorCodeGenerationWrapper
 */
#endif                           /* RTW_HEADER_sensorCodeGenerationWrapper_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

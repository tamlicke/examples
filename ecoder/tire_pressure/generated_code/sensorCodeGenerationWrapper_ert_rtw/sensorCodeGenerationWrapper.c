/*
 * File: sensorCodeGenerationWrapper.c
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

#include "sensorCodeGenerationWrapper.h"
#include "MeasurementMsgBusType.h"
#include "rtwtypes.h"
#include "DeviceIDBusType.h"
#include <stddef.h>
#include "sensorCoreAlgorithm.h"

/* Block signals and states (default storage) */
DW rtDW;

/* Exported functions */
extern boolean_T sensorCodeGenerationWrapper_pop(Buffer_MeasurementMsgBusType *q,
  Msg_MeasurementMsgBusType *elementOut);
extern void sensorCodeGenerationWrapper_freeMemPool
  (MemPool_MeasurementMsgBusType *memPool, MeasurementMsgBusType *dataPtr);
extern void sensorCodeGenerationWrapper_destroyMsg(Msg_MeasurementMsgBusType
  *msg);
extern int32_T Receive_RecvData(MeasurementMsgBusType *data);
extern MeasurementMsgBusType *sensorCodeGenerationWrapper_allocMemPool
  (MemPool_MeasurementMsgBusType *memPool, int32_T width);
extern Msg_MeasurementMsgBusType sensorCodeGenerationWrapper_createMsg(const
  MeasurementMsgBusType *data);
extern boolean_T sensorCodeGenerationWrapper_push(Buffer_MeasurementMsgBusType
  *q, Msg_MeasurementMsgBusType *element);
extern void sensorCodeGenerationWrapper_initMemPool
  (MemPool_MeasurementMsgBusType *memPool, MeasurementMsgBusType *memArray,
   MeasurementMsgBusType **freeList, int32_T size);

/* Forward declaration for local functions */
static int32_T Receive_SendData_g(const MeasurementMsgBusType *data);
boolean_T sensorCodeGenerationWrapper_pop(Buffer_MeasurementMsgBusType *q,
  Msg_MeasurementMsgBusType *elementOut)
{
  boolean_T isPop;

  /* Queue generated from: '<Root>/Receive' */
  if (!q->fOccupied) {
    isPop = false;
  } else {
    *elementOut = q->fMsg;
    q->fOccupied = false;
    isPop = true;
  }

  /* End of Queue generated from: '<Root>/Receive' */
  return isPop;
}

void sensorCodeGenerationWrapper_freeMemPool(MemPool_MeasurementMsgBusType
  *memPool, MeasurementMsgBusType *dataPtr)
{
  /* DiscreteEventSubgraph generated from: '<Root>/Receive' */
  memPool->fFreeList[memPool->fNumFree] = dataPtr;
  memPool->fNumFree++;
}

void sensorCodeGenerationWrapper_destroyMsg(Msg_MeasurementMsgBusType *msg)
{
  /* DiscreteEventSubgraph generated from: '<Root>/Receive' */
  sensorCodeGenerationWrapper_freeMemPool
    (&rtDW.slMsgMgr_MemPool_MeasurementMsgBusType, msg->fData);
}

int32_T Receive_RecvData(MeasurementMsgBusType *data)
{
  Msg_MeasurementMsgBusType msg;
  int32_T status = 1;

  /* Queue generated from: '<Root>/Receive' incorporates:
   *  DiscreteEventSubgraph generated from: '<Root>/Receive'
   */
  if (sensorCodeGenerationWrapper_pop
      (&rtDW.Queue_InsertedFor_Receive_at_inport_0_Queue, &msg)) {
    status = 0;
    *data = *msg.fData;
    sensorCodeGenerationWrapper_destroyMsg(&msg);
  }

  /* End of Queue generated from: '<Root>/Receive' */
  return status;
}

MeasurementMsgBusType *sensorCodeGenerationWrapper_allocMemPool
  (MemPool_MeasurementMsgBusType *memPool, int32_T width)
{
  MeasurementMsgBusType *dataPtr;

  /* DiscreteEventSubgraph generated from: '<Root>/Receive' */
  if (memPool->fNumFree > 0) {
    memPool->fNumFree--;
    dataPtr = memPool->fFreeList[memPool->fNumFree];
  } else if (memPool->fNumUsed < memPool->fSize) {
    dataPtr = &memPool->fMemArray[memPool->fNumUsed];
    memPool->fNumUsed += width;
  } else {
    dataPtr = NULL;
  }

  /* End of DiscreteEventSubgraph generated from: '<Root>/Receive' */
  return dataPtr;
}

Msg_MeasurementMsgBusType sensorCodeGenerationWrapper_createMsg(const
  MeasurementMsgBusType *data)
{
  Msg_MeasurementMsgBusType msg;

  /* DiscreteEventSubgraph generated from: '<Root>/Receive' */
  msg.fData = sensorCodeGenerationWrapper_allocMemPool
    (&rtDW.slMsgMgr_MemPool_MeasurementMsgBusType, 1);
  if (msg.fData != NULL) {
    *msg.fData = *data;
  }

  /* End of DiscreteEventSubgraph generated from: '<Root>/Receive' */
  return msg;
}

boolean_T sensorCodeGenerationWrapper_push(Buffer_MeasurementMsgBusType *q,
  Msg_MeasurementMsgBusType *element)
{
  boolean_T isPush;

  /* Queue generated from: '<Root>/Receive' */
  if (q->fOccupied) {
    sensorCodeGenerationWrapper_destroyMsg(&q->fMsg);
  }

  q->fMsg = *element;
  q->fOccupied = true;
  isPush = true;

  /* End of Queue generated from: '<Root>/Receive' */
  return isPush;
}

static int32_T Receive_SendData_g(const MeasurementMsgBusType *data)
{
  Msg_MeasurementMsgBusType msg;
  int32_T status = 1;

  /* DiscreteEventSubgraph generated from: '<Root>/Receive' */
  msg = sensorCodeGenerationWrapper_createMsg(data);

  /* Queue generated from: '<Root>/Receive' incorporates:
   *  DiscreteEventSubgraph generated from: '<Root>/Receive'
   */
  if (sensorCodeGenerationWrapper_push
      (&rtDW.Queue_InsertedFor_Receive_at_inport_0_Queue, &msg)) {
    status = 0;
  } else {
    sensorCodeGenerationWrapper_destroyMsg(&msg);
  }

  /* End of Queue generated from: '<Root>/Receive' */
  return status;
}

void sensorCodeGenerationWrapper_initMemPool(MemPool_MeasurementMsgBusType
  *memPool, MeasurementMsgBusType *memArray, MeasurementMsgBusType **freeList,
  int32_T size)
{
  /* Start for slMsgMgr: '<Root>/slMsgMgr' */
  memPool->fMemArray = memArray;
  memPool->fNumUsed = 0;
  memPool->fFreeList = freeList;
  memPool->fNumFree = 0;
  memPool->fSize = size;
}

/* Model step function */
void sensorCodeGenerationWrapper_step(void)
{
  size_t elementSize;
  real_T rtb_pressure;

  /* MATLAB Function: '<Root>/ssensorReadPressureMATLABFunction' */
  rtb_pressure = sensor_read_pressure();

  /* ModelReference generated from: '<Root>/sensorCoreAlgorithmModelReference' */
  sensorCoreAlgorithm(&(rtDW.sensorCoreAlgorithmModelReference_InstanceData.rtm),
                      &rtb_pressure,
                      &(rtDW.sensorCoreAlgorithmModelReference_InstanceData.rtdw));

  /* Receive: '<Root>/Receive' */
  (void)Receive_RecvData(&rtDW.Receive);

  /* MATLAB Function: '<Root>/sensorTransmitMATLABFunction' incorporates:
   *  Receive: '<Root>/Receive'
   */
  elementSize = sizeof(rtDW.Receive);
  sensor_transmit_data(&rtDW.Receive, elementSize, (size_t)1.0);
}

/* Model step function */
void Receive_SendData(void *host, const MeasurementMsgBusType *data, int32_T
                      length, int32_T *status_ptr) /* Explicit Task: ExplicitTask0 */
{
  UNUSED_PARAMETER(host);
  UNUSED_PARAMETER(length);

  /* DiscreteEventSubgraph generated from: '<Root>/Receive' */
  *status_ptr = Receive_SendData_g(data);
}

/* Model initialize function */
void sensorCodeGenerationWrapper_initialize(void)
{
  /* Registration code */

  /* states (dwork) */
  rtDW.sensorCoreAlgorithmModelReference_InstanceData.rtdw.sensorMeasurmentMessageOutputPort_SendData.SendData
    = Receive_SendData;
  rtDW.sensorCoreAlgorithmModelReference_InstanceData.rtdw.sensorMeasurmentMessageOutputPort_SendData.host
    = (NULL);

  /* Assign pointer for instance parameters, Block: '<Root>/sensorCoreAlgorithmModelReference' */
  rtDW.sensorCoreAlgorithmModelReference_InstanceData.rtm.sensorCoreAlgorithm_InstP_ref
    = &rtInstP.sensorCodeGenerationWrapperrtsensorCoreAlgorithmModelReference;

  {
    DeviceIDBusType s;
    int32_T i;

    /* Start for slMsgMgr: '<Root>/slMsgMgr' */
    sensorCodeGenerationWrapper_initMemPool
      (&rtDW.slMsgMgr_MemPool_MeasurementMsgBusType,
       &rtDW.slMsgMgr_memArray_MeasurementMsgBusType[0],
       &rtDW.slMsgMgr_freeList_MeasurementMsgBusType[0], 2);

    /* Start for Receive: '<Root>/Receive' */
    rtDW.Receive = rtP.Receive_InitialValue;

    /* Outputs for Atomic SubSystem: '<Root>/readNVMInitializeFunction' */
    /* MATLAB Function: '<S1>/readNVMMATLABFunction' */
    for (i = 0; i < 10; i++) {
      s.device_id[i] = 0U;
    }

    size_t elementSize;
    elementSize = sizeof(s);

    /* ParameterWriter: '<S1>/localDeviceIDParameterWriter' incorporates:
     *  MATLAB Function: '<S1>/readNVMMATLABFunction'
     */
    sensor_read_nvm((void *)rtP.SENSOR_PARAMETERS_NVM_ADDRESS_AS_UINT32,
                    &rtInstP.sensorCodeGenerationWrapperrtsensorCoreAlgorithmModelReference.LOCAL_DEVICE_ID,
                    elementSize, (size_t)1.0);

    /* End of Outputs for SubSystem: '<Root>/readNVMInitializeFunction' */
  }
}

/* Model terminate function */
void sensorCodeGenerationWrapper_terminate(void)
{
  /* (no terminate code required) */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

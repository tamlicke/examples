/*
 * File: serial_test_model.c
 *
 * Code generated for Simulink model 'serial_test_model'.
 *
 * Model version                  : 1.5
 * Simulink Coder version         : 8.12 (R2017a) 16-Feb-2017
 * C/C++ source code generated on : Tue May 30 09:11:36 2017
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: ARM Compatible->ARM Cortex
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "serial_test_model.h"
#include "serial_test_model_private.h"
#define serial_test_model_block        (false)

/* Block states (auto storage) */
DW_serial_test_model_T serial_test_model_DW;

/* Real-time model */
RT_MODEL_serial_test_model_T serial_test_model_M_;
RT_MODEL_serial_test_model_T *const serial_test_model_M = &serial_test_model_M_;

/* Model step function */
void serial_test_model_step(void)
{
  /* Start for MATLABSystem: '<Root>/Serial1' incorporates:
   *  Constant: '<Root>/Constant'
   *  MATLABSystem: '<Root>/Serial1'
   */
  MW_writeSerial(serial_test_model_DW.obj.fh_index,
                 &serial_test_model_P.Constant_Value, 1U);
}

/* Model initialize function */
void serial_test_model_initialize(void)
{
  /* Registration code */

  /* initialize error status */
  rtmSetErrorStatus(serial_test_model_M, (NULL));

  /* states (dwork) */
  (void) memset((void *)&serial_test_model_DW, 0,
                sizeof(DW_serial_test_model_T));

  {
    uint8_T devName[12];
    int32_T fh_index_tmp;
    static const uint8_T tmp[12] = { 47U, 100U, 101U, 118U, 47U, 116U, 116U,
      121U, 80U, 83U, 48U, 0U };

    /* Start for MATLABSystem: '<Root>/Serial1' */
    serial_test_model_DW.obj.isInitialized = 0;
    serial_test_model_DW.obj.isInitialized = 1;
    for (fh_index_tmp = 0; fh_index_tmp < 12; fh_index_tmp++) {
      devName[fh_index_tmp] = tmp[fh_index_tmp];
    }

    MW_openSerialPort(devName, 115200U, serial_test_model_block, &fh_index_tmp);
    serial_test_model_DW.obj.fh_index = fh_index_tmp;

    /* End of Start for MATLABSystem: '<Root>/Serial1' */
  }
}

/* Model terminate function */
void serial_test_model_terminate(void)
{
  uint8_T devName[12];
  static const uint8_T tmp[12] = { 47U, 100U, 101U, 118U, 47U, 116U, 116U, 121U,
    80U, 83U, 48U, 0U };

  int32_T i;

  /* Start for MATLABSystem: '<Root>/Serial1' incorporates:
   *  Terminate for MATLABSystem: '<Root>/Serial1'
   */
  if (serial_test_model_DW.obj.isInitialized == 1) {
    serial_test_model_DW.obj.isInitialized = 2;
    for (i = 0; i < 12; i++) {
      devName[i] = tmp[i];
    }

    MW_closeSerialPort(devName, serial_test_model_DW.obj.fh_index);
  }

  /* End of Start for MATLABSystem: '<Root>/Serial1' */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

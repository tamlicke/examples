/*
 * File: serial_test_model.h
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

#ifndef RTW_HEADER_serial_test_model_h_
#define RTW_HEADER_serial_test_model_h_
#include <stddef.h>
#include <string.h>
#ifndef serial_test_model_COMMON_INCLUDES_
# define serial_test_model_COMMON_INCLUDES_
#include <stdio.h>
#include "rtwtypes.h"
#endif                                 /* serial_test_model_COMMON_INCLUDES_ */

#include "serial_test_model_types.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
# define rtmGetErrorStatus(rtm)        ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
# define rtmSetErrorStatus(rtm, val)   ((rtm)->errorStatus = (val))
#endif

/* Block states (auto storage) for system '<Root>' */
typedef struct {
  serial_sys_obj_SerialCOM_seri_T obj; /* '<Root>/Serial1' */
  void *Serial1_PWORK;                 /* '<Root>/Serial1' */
} DW_serial_test_model_T;

/* Parameters (auto storage) */
struct P_serial_test_model_T_ {
  uint8_T Constant_Value;              /* Computed Parameter: Constant_Value
                                        * Referenced by: '<Root>/Constant'
                                        */
};

/* Real-time Model Data Structure */
struct tag_RTM_serial_test_model_T {
  const char_T *errorStatus;
};

/* Block parameters (auto storage) */
extern P_serial_test_model_T serial_test_model_P;

/* Block states (auto storage) */
extern DW_serial_test_model_T serial_test_model_DW;

/* Model entry point functions */
extern void serial_test_model_initialize(void);
extern void serial_test_model_step(void);
extern void serial_test_model_terminate(void);

/* Real-time Model object */
extern RT_MODEL_serial_test_model_T *const serial_test_model_M;

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
 * '<Root>' : 'serial_test_model'
 */
#endif                                 /* RTW_HEADER_serial_test_model_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

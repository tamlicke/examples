/*
 * File: serial_test_model_types.h
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

#ifndef RTW_HEADER_serial_test_model_types_h_
#define RTW_HEADER_serial_test_model_types_h_
#include "rtwtypes.h"
#ifndef typedef_serial_sys_obj_SerialCOM_seri_T
#define typedef_serial_sys_obj_SerialCOM_seri_T

typedef struct {
  int32_T isInitialized;
  int32_T fh_index;
} serial_sys_obj_SerialCOM_seri_T;

#endif                                 /*typedef_serial_sys_obj_SerialCOM_seri_T*/

#ifndef typedef_struct_T_serial_test_model_T
#define typedef_struct_T_serial_test_model_T

typedef struct {
  real_T f1[2];
} struct_T_serial_test_model_T;

#endif                                 /*typedef_struct_T_serial_test_model_T*/

/* Parameters (auto storage) */
typedef struct P_serial_test_model_T_ P_serial_test_model_T;

/* Forward declaration for rtModel */
typedef struct tag_RTM_serial_test_model_T RT_MODEL_serial_test_model_T;

#endif                                 /* RTW_HEADER_serial_test_model_types_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

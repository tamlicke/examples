/*
 * File: builtin_typeid_types.h
 *
 * Code generated for Simulink model 'sensorCodeGenerationWrapper'.
 *
 * Model version                  : 4.0
 * Simulink Coder version         : 9.7 (R2022a) 13-Nov-2021
 * C/C++ source code generated on : Mon May 16 19:36:40 2022
 */

#ifndef BUILTIN_TYPEID_TYPES_H
#define BUILTIN_TYPEID_TYPES_H
#include "rtwtypes.h"
#ifndef BUILTIN_TYPEID_TYPES
#define BUILTIN_TYPEID_TYPES

/* Enumeration of built-in data types */
typedef enum {
  SS_DOUBLE = 0,                       /* real_T    */
  SS_SINGLE = 1,                       /* real32_T  */
  SS_INT8 = 2,                         /* int8_T    */
  SS_UINT8 = 3,                        /* uint8_T   */
  SS_INT16 = 4,                        /* int16_T   */
  SS_UINT16 = 5,                       /* uint16_T  */
  SS_INT32 = 6,                        /* int32_T   */
  SS_UINT32 = 7,                       /* uint32_T  */
  SS_BOOLEAN = 8                       /* boolean_T */
} BuiltInDTypeId;

#define SS_NUM_BUILT_IN_DTYPE          ((int_T)SS_BOOLEAN+1)

/* Enumeration for MAT-file logging code */
typedef int_T DTypeId;

/* Enumeration of pre-defined data types */
typedef enum {
  SS_FCN_CALL = 9,
  SS_INTEGER = 10,
  SS_POINTER = 11,
  SS_INTERNAL_DTYPE2 = 12,
  SS_TIMER_UINT32_PAIR = 13,
  SS_CONNECTION_TYPE = 14
} PreDefinedDTypeId;

#endif                                 /* BUILTIN_TYPEID_TYPES */
#endif                                 /* BUILTIN_TYPEID_TYPES_H */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

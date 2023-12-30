#ifndef __tOBMRQifCxXhWEe6sQ3YXH_h__
#define __tOBMRQifCxXhWEe6sQ3YXH_h__

/* Include files */
#include "simstruc.h"
#include "rtwtypes.h"
#include "multiword_types.h"
#include "slexec_vm_zc_functions.h"

/* Type Definitions */
#ifndef typedef_serial_sys_obj_SerialCOM
#define typedef_serial_sys_obj_SerialCOM

typedef struct {
  int32_T isInitialized;
  boolean_T TunablePropsChanged;
} serial_sys_obj_SerialCOM;

#endif                                 /*typedef_serial_sys_obj_SerialCOM*/

#ifndef typedef_struct_T
#define typedef_struct_T

typedef struct {
  real_T f1[2];
} struct_T;

#endif                                 /*typedef_struct_T*/

#ifndef typedef_InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH
#define typedef_InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH

typedef struct {
  SimStruct *S;
  serial_sys_obj_SerialCOM sysobj;
  boolean_T sysobj_not_empty;
  void *emlrtRootTLSGlobal;
  uint8_T *u0;
  covrtInstance *covInst_CONTAINER_BLOCK_INDEX;
} InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH;

#endif                                 /*typedef_InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH*/

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */

/* Function Definitions */
extern void method_dispatcher_tOBMRQifCxXhWEe6sQ3YXH(SimStruct *S, int_T method,
  void* data);

#endif

/*
 * File: run_on_QNX.h
 *
 * Code generated for Simulink model 'run_on_QNX'.
 *
 * Model version                  : 1.16
 * Simulink Coder version         : 8.12 (R2017a) 16-Feb-2017
 * C/C++ source code generated on : Wed May 17 10:41:28 2017
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Intel->x86-64 (Linux 64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_run_on_QNX_h_
#define RTW_HEADER_run_on_QNX_h_
#include <string.h>
#include <stddef.h>
#ifndef run_on_QNX_COMMON_INCLUDES_
# define run_on_QNX_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "hello_world.h"
#endif                                 /* run_on_QNX_COMMON_INCLUDES_ */

#include "run_on_QNX_types.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
# define rtmGetErrorStatus(rtm)        ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
# define rtmSetErrorStatus(rtm, val)   ((rtm)->errorStatus = (val))
#endif

#ifndef rtmGetStopRequested
# define rtmGetStopRequested(rtm)      ((rtm)->Timing.stopRequestedFlag)
#endif

#ifndef rtmSetStopRequested
# define rtmSetStopRequested(rtm, val) ((rtm)->Timing.stopRequestedFlag = (val))
#endif

#ifndef rtmGetStopRequestedPtr
# define rtmGetStopRequestedPtr(rtm)   (&((rtm)->Timing.stopRequestedFlag))
#endif

/* External outputs (root outports fed by signals with auto storage) */
typedef struct {
  real_T Out1;                         /* '<Root>/Out1' */
} ExtY_run_on_QNX_T;

/* Parameters (auto storage) */
struct P_run_on_QNX_T_ {
  real_T CompareToConstant_const;      /* Mask Parameter: CompareToConstant_const
                                        * Referenced by: '<S1>/Constant'
                                        */
};

/* Real-time Model Data Structure */
struct tag_RTM_run_on_QNX_T {
  const char_T *errorStatus;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    uint32_T clockTick0;
    boolean_T stopRequestedFlag;
  } Timing;
};

/* Block parameters (auto storage) */
extern P_run_on_QNX_T run_on_QNX_P;

/* External outputs (root outports fed by signals with auto storage) */
extern ExtY_run_on_QNX_T run_on_QNX_Y;

/* Model entry point functions */
extern void run_on_QNX_initialize(void);
extern void run_on_QNX_step(void);
extern void run_on_QNX_terminate(void);

/* Real-time Model object */
extern RT_MODEL_run_on_QNX_T *const run_on_QNX_M;

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<Root>/Display' : Unused code path elimination
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
 * '<Root>' : 'run_on_QNX'
 * '<S1>'   : 'run_on_QNX/Compare To Constant'
 */
#endif                                 /* RTW_HEADER_run_on_QNX_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

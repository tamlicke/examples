/*
 * File: run_on_QNX.c
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

#include "run_on_QNX.h"
#include "run_on_QNX_private.h"

/* External outputs (root outports fed by signals with auto storage) */
ExtY_run_on_QNX_T run_on_QNX_Y;

/* Real-time model */
RT_MODEL_run_on_QNX_T run_on_QNX_M_;
RT_MODEL_run_on_QNX_T *const run_on_QNX_M = &run_on_QNX_M_;

/* Model step function */
void run_on_QNX_step(void)
{
  /* local block i/o variables */
  real_T rtb_DigitalClock;

  /* DigitalClock: '<Root>/Digital Clock' */
  rtb_DigitalClock = ((run_on_QNX_M->Timing.clockTick0) * 1.0);

  /* Outport: '<Root>/Out1' incorporates:
   *  S-Function (helloworld_sfun): '<Root>/helloworld_sfun'
   */
  run_on_QNX_Y.Out1 = printValue(rtb_DigitalClock);

  /* Stop: '<Root>/Stop Simulation' incorporates:
   *  Constant: '<S1>/Constant'
   *  RelationalOperator: '<S1>/Compare'
   */
  if (rtb_DigitalClock >= run_on_QNX_P.CompareToConstant_const) {
    rtmSetStopRequested(run_on_QNX_M, 1);
  }

  /* End of Stop: '<Root>/Stop Simulation' */

  /* Update absolute time for base rate */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The resolution of this integer timer is 1.0, which is the step size
   * of the task. Size of "clockTick0" ensures timer will not overflow during the
   * application lifespan selected.
   */
  run_on_QNX_M->Timing.clockTick0++;
}

/* Model initialize function */
void run_on_QNX_initialize(void)
{
  /* Registration code */

  /* initialize real-time model */
  (void) memset((void *)run_on_QNX_M, 0,
                sizeof(RT_MODEL_run_on_QNX_T));

  /* external outputs */
  run_on_QNX_Y.Out1 = 0.0;

  /* Start for S-Function (helloworld_sfun): '<Root>/helloworld_sfun' incorporates:
   *  S-Function (helloworld_sfun): '<Root>/helloworld_sfun'
   */
  printValueInit();
}

/* Model terminate function */
void run_on_QNX_terminate(void)
{
  /* Terminate for S-Function (helloworld_sfun): '<Root>/helloworld_sfun' incorporates:
   *  S-Function (helloworld_sfun): '<Root>/helloworld_sfun'
   */
  printValueTerm();
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

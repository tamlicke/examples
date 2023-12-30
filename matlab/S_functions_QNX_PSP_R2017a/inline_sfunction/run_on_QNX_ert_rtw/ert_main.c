/*
 * File: ert_main.c
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

#include <stdio.h>
#include <stdlib.h>
#include "run_on_QNX.h"
#include "run_on_QNX_private.h"
#include "rtwtypes.h"
#include "limits.h"
#include "qnx_initialize.h"
#define UNUSED(x)                      x = x

/* Function prototype declaration*/
void exitFcn(int sig);
void *terminateTask(void *arg);
void *baseRateTask(void *arg);
void *subrateTask(void *arg);
volatile boolean_T runModel = true;
sem_t stopSem;
sem_t baserateTaskSem;
pthread_t schedulerThread;
pthread_t baseRateThread;
unsigned long threadJoinStatus[8];
int terminatingmodel = 0;
void *baseRateTask(void *arg)
{
  runModel = (rtmGetErrorStatus(run_on_QNX_M) == (NULL)) && !rtmGetStopRequested
    (run_on_QNX_M);
  while (runModel) {
    sem_wait(&baserateTaskSem);
    run_on_QNX_step();

    /* Get model outputs here */
    runModel = (rtmGetErrorStatus(run_on_QNX_M) == (NULL)) &&
      !rtmGetStopRequested(run_on_QNX_M);
  }

  runModel = 0;
  terminateTask(arg);
  pthread_exit((void *)0);
  return NULL;
}

void exitFcn(int sig)
{
  UNUSED(sig);
  rtmSetErrorStatus(run_on_QNX_M, "stopping the model");
}

void *terminateTask(void *arg)
{
  UNUSED(arg);
  terminatingmodel = 1;

  {
    runModel = 0;
  }

  /* Disable rt_OneStep() here */

  /* Terminate model */
  run_on_QNX_terminate();
  sem_post(&stopSem);
  return NULL;
}

int main(int argc, char **argv)
{
  rtmSetErrorStatus(run_on_QNX_M, 0);

  /* Initialize model */
  run_on_QNX_initialize();

  /* Call RTOS Initialization function */
  QNX_RTOSInit(1.0, 0);

  /* Wait for stop semaphore */
  sem_wait(&stopSem);
  return 0;
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

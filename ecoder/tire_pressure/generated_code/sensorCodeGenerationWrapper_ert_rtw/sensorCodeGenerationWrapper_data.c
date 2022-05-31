/*
 * File: sensorCodeGenerationWrapper_data.c
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

/* Block parameters (default storage) */
P rtP = {
  /* Variable: SENSOR_PARAMETERS_NVM_ADDRESS_AS_UINT32
   * Referenced by: '<S1>/readNVMMATLABFunction'
   */
  1234U,

  /* Computed Parameter: Receive_InitialValue
   * Referenced by: '<Root>/Receive'
   */
  {
    {
      {
        0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U }
      /* device_id */
    },                                 /* source */
    0.0                                /* tire_pressure_sensor_measurement */
  }
};

/* instance parameters */
InstP rtInstP = {
  {
    /*
     * sensorCodeGenerationWrapper/sensorCoreAlgorithmModelReference
     *   sensorCoreAlgorithm:LOCAL_DEVICE_ID
     */
    {
      { 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U }
    }
  }
};

/*
 * File trailer for generated code.
 *
 * [EOF]
 */

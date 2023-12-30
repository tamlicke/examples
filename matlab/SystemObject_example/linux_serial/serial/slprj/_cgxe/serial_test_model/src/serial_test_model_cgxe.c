/* Include files */

#include "serial_test_model_cgxe.h"
#include "m_tOBMRQifCxXhWEe6sQ3YXH.h"

unsigned int cgxe_serial_test_model_method_dispatcher(SimStruct* S, int_T method,
  void* data)
{
  if (ssGetChecksum0(S) == 1015118586 &&
      ssGetChecksum1(S) == 4276898514 &&
      ssGetChecksum2(S) == 1425164394 &&
      ssGetChecksum3(S) == 424054185) {
    method_dispatcher_tOBMRQifCxXhWEe6sQ3YXH(S, method, data);
    return 1;
  }

  return 0;
}

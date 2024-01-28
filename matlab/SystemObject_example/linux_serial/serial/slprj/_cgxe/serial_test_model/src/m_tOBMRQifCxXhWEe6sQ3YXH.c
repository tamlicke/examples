/* Include files */

#include "modelInterface.h"
#include "m_tOBMRQifCxXhWEe6sQ3YXH.h"

/* Type Definitions */

/* Named Constants */
#define block                          (false)
#define Header                         (false)

/* Variable Declarations */

/* Variable Definitions */
static const mxArray *eml_mx;
static const mxArray *b_eml_mx;
static emlrtRSInfo emlrtRSI = { 3,     /* lineNo */
  "SerialCOM",                         /* fcnName */
  "C:\\pe_proj\\EC_QNX_Medtronic\\5_31_2017_SysObj\\linux_serial\\serial\\+serial_sys_obj\\SerialCOM.m"/* pathName */
};

static emlrtRSInfo b_emlrtRSI = { 1,   /* lineNo */
  "System",                            /* fcnName */
  "C:\\Program Files\\MATLAB\\R2017a\\toolbox\\shared\\system\\coder\\+matlab\\+system\\+coder\\System.p"/* pathName */
};

static emlrtRSInfo c_emlrtRSI = { 1,   /* lineNo */
  "SystemProp",                        /* fcnName */
  "C:\\Program Files\\MATLAB\\R2017a\\toolbox\\shared\\system\\coder\\+matlab\\+system\\+coder\\SystemProp.p"/* pathName */
};

static emlrtRSInfo d_emlrtRSI = { 1,   /* lineNo */
  "SystemCore",                        /* fcnName */
  "C:\\Program Files\\MATLAB\\R2017a\\toolbox\\shared\\system\\coder\\+matlab\\+system\\+coder\\SystemCore.p"/* pathName */
};

static emlrtRSInfo e_emlrtRSI = { 12,  /* lineNo */
  "toLogicalCheck",                    /* fcnName */
  "C:\\Program Files\\MATLAB\\R2017a\\toolbox\\eml\\eml\\+coder\\+internal\\toLogicalCheck.m"/* pathName */
};

static emlrtRSInfo f_emlrtRSI = { 43,  /* lineNo */
  "ExternalDependency",                /* fcnName */
  "C:\\Program Files\\MATLAB\\R2017a\\toolbox\\shared\\coder\\coder\\+coder\\ExternalDependency.m"/* pathName */
};

static emlrtRSInfo g_emlrtRSI = { 1,   /* lineNo */
  "CustomIcon",                        /* fcnName */
  "C:\\Program Files\\MATLAB\\R2017a\\toolbox\\matlab\\system\\+matlab\\+system\\+mixin\\CustomIcon.p"/* pathName */
};

static emlrtRSInfo h_emlrtRSI = { 1,   /* lineNo */
  "Propagates",                        /* fcnName */
  "C:\\Program Files\\MATLAB\\R2017a\\toolbox\\shared\\system\\coder\\+matlab\\+system\\+mixin\\+coder\\Propagates.p"/* pathName */
};

static emlrtRSInfo i_emlrtRSI = { 11,  /* lineNo */
  "",                                  /* fcnName */
  ""                                   /* pathName */
};

static emlrtRSInfo j_emlrtRSI = { 25,  /* lineNo */
  "",                                  /* fcnName */
  ""                                   /* pathName */
};

static emlrtRSInfo k_emlrtRSI = { 254, /* lineNo */
  "SerialCOM",                         /* fcnName */
  "C:\\pe_proj\\EC_QNX_Medtronic\\5_31_2017_SysObj\\linux_serial\\serial\\+serial_sys_obj\\SerialCOM.m"/* pathName */
};

static emlrtRSInfo l_emlrtRSI = { 80,  /* lineNo */
  "SerialCOM",                         /* fcnName */
  "C:\\pe_proj\\EC_QNX_Medtronic\\5_31_2017_SysObj\\linux_serial\\serial\\+serial_sys_obj\\SerialCOM.m"/* pathName */
};

static emlrtRSInfo m_emlrtRSI = { 178, /* lineNo */
  "SerialCOM",                         /* fcnName */
  "C:\\pe_proj\\EC_QNX_Medtronic\\5_31_2017_SysObj\\linux_serial\\serial\\+serial_sys_obj\\SerialCOM.m"/* pathName */
};

static emlrtRSInfo n_emlrtRSI = { 179, /* lineNo */
  "SerialCOM",                         /* fcnName */
  "C:\\pe_proj\\EC_QNX_Medtronic\\5_31_2017_SysObj\\linux_serial\\serial\\+serial_sys_obj\\SerialCOM.m"/* pathName */
};

static emlrtRSInfo o_emlrtRSI = { 27,  /* lineNo */
  "",                                  /* fcnName */
  ""                                   /* pathName */
};

static emlrtRSInfo p_emlrtRSI = { 34,  /* lineNo */
  "",                                  /* fcnName */
  ""                                   /* pathName */
};

static emlrtRSInfo q_emlrtRSI = { 263, /* lineNo */
  "SerialCOM",                         /* fcnName */
  "C:\\pe_proj\\EC_QNX_Medtronic\\5_31_2017_SysObj\\linux_serial\\serial\\+serial_sys_obj\\SerialCOM.m"/* pathName */
};

static emlrtRSInfo r_emlrtRSI = { 88,  /* lineNo */
  "SerialCOM",                         /* fcnName */
  "C:\\pe_proj\\EC_QNX_Medtronic\\5_31_2017_SysObj\\linux_serial\\serial\\+serial_sys_obj\\SerialCOM.m"/* pathName */
};

static emlrtRSInfo s_emlrtRSI = { 225, /* lineNo */
  "SerialCOM",                         /* fcnName */
  "C:\\pe_proj\\EC_QNX_Medtronic\\5_31_2017_SysObj\\linux_serial\\serial\\+serial_sys_obj\\SerialCOM.m"/* pathName */
};

static emlrtRSInfo t_emlrtRSI = { 29,  /* lineNo */
  "",                                  /* fcnName */
  ""                                   /* pathName */
};

static emlrtRSInfo u_emlrtRSI = { 30,  /* lineNo */
  "",                                  /* fcnName */
  ""                                   /* pathName */
};

static emlrtMCInfo emlrtMCI = { 17,    /* lineNo */
  9,                                   /* colNo */
  "error",                             /* fName */
  "C:\\Program Files\\MATLAB\\R2017a\\toolbox\\eml\\eml\\+coder\\+internal\\error.m"/* pName */
};

static emlrtMCInfo b_emlrtMCI = { 1,   /* lineNo */
  1,                                   /* colNo */
  "SystemCore",                        /* fName */
  "C:\\Program Files\\MATLAB\\R2017a\\toolbox\\shared\\system\\coder\\+matlab\\+system\\+coder\\SystemCore.p"/* pName */
};

/* Function Declarations */
static void cgxe_mdl_start(InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH *moduleInstance);
static void cgxe_mdl_initialize(InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH
  *moduleInstance);
static void cgxe_mdl_outputs(InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH
  *moduleInstance);
static void cgxe_mdl_update(InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH
  *moduleInstance);
static void cgxe_mdl_terminate(InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH
  *moduleInstance);
static const mxArray *cgxe_mdl_get_sim_state
  (InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH *moduleInstance);
static serial_sys_obj_SerialCOM emlrt_marshallIn(const emlrtStack *sp, const
  mxArray *b_sysobj, const char_T *identifier);
static serial_sys_obj_SerialCOM b_emlrt_marshallIn(const emlrtStack *sp, const
  mxArray *u, const emlrtMsgIdentifier *parentId);
static int32_T c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId);
static boolean_T d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
  const emlrtMsgIdentifier *parentId);
static boolean_T e_emlrt_marshallIn(const emlrtStack *sp, const mxArray
  *b_sysobj_not_empty, const char_T *identifier);
static void cgxe_mdl_set_sim_state(InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH
  *moduleInstance, const mxArray *st);
static const mxArray *message(const emlrtStack *sp, const mxArray *b,
  emlrtMCInfo *location);
static void error(const emlrtStack *sp, const mxArray *b, emlrtMCInfo *location);
static const mxArray *b_message(const emlrtStack *sp, const mxArray *b, const
  mxArray *c, emlrtMCInfo *location);
static int32_T f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId);
static boolean_T g_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId);
static void init_simulink_io_address(InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH
  *moduleInstance);

/* Function Definitions */
static void cgxe_mdl_start(InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH *moduleInstance)
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  emlrtStack b_st;
  emlrtStack c_st;
  const mxArray *m0;
  static const int32_T iv0[2] = { 0, 0 };

  static const int32_T iv1[2] = { 0, 0 };

  int32_T cond_starts_0_0[1] = { 11532 };

  int32_T cond_ends_0_0[1] = { 11544 };

  int32_T postfix_exprs_0_0[2] = { 0, -1 };

  int32_T cond_starts_0_1[1] = { 6087 };

  int32_T cond_ends_0_1[1] = { 6101 };

  int32_T postfix_exprs_0_1[2] = { 0, -1 };

  int32_T cond_starts_0_2[1] = { 6882 };

  int32_T cond_ends_0_2[1] = { 6892 };

  int32_T postfix_exprs_0_2[2] = { 0, -1 };

  int32_T caseStarts_0_0[11] = { -1, 10474, 10570, 10666, 10761, 10857, 10952,
    11048, 11142, 11237, 11334 };

  int32_T caseExprEnds_0_0[11] = { 8, 10487, 10583, 10678, 10774, 10869, 10965,
    11059, 11154, 11251, 11352 };

  serial_sys_obj_SerialCOM *obj;
  const mxArray *y;
  static const int32_T iv2[2] = { 1, 51 };

  emlrtStack d_st;
  static char_T u[51] = { 'M', 'A', 'T', 'L', 'A', 'B', ':', 's', 'y', 's', 't',
    'e', 'm', ':', 'm', 'e', 't', 'h', 'o', 'd', 'C', 'a', 'l', 'l', 'e', 'd',
    'W', 'h', 'e', 'n', 'L', 'o', 'c', 'k', 'e', 'd', 'R', 'e', 'l', 'e', 'a',
    's', 'e', 'd', 'C', 'o', 'd', 'e', 'g', 'e', 'n' };

  emlrtStack e_st;
  const mxArray *b_y;
  emlrtStack f_st;
  static const int32_T iv3[2] = { 1, 5 };

  static char_T b_u[5] = { 's', 'e', 't', 'u', 'p' };

  emlrtStack g_st;
  static const int32_T iv4[2] = { 1, 44 };

  static char_T c_u[44] = { 'M', 'A', 'T', 'L', 'A', 'B', ':', 's', 'y', 's',
    't', 'e', 'm', ':', 'i', 'n', 'v', 'a', 'l', 'i', 'd', 'T', 'u', 'n', 'a',
    'b', 'l', 'e', 'M', 'o', 'd', 'A', 'c', 'c', 'e', 's', 's', 'C', 'o', 'd',
    'e', 'g', 'e', 'n' };

  init_simulink_io_address(moduleInstance);
  st.tls = moduleInstance->emlrtRootTLSGlobal;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  cgxertSetGcb(moduleInstance->S, -1, -1);
  m0 = emlrtCreateNumericArray(2, iv0, mxDOUBLE_CLASS, mxREAL);
  emlrtAssignP(&b_eml_mx, m0);
  m0 = emlrtCreateCharArray(2, iv1);
  emlrtAssignP(&eml_mx, m0);

  /* Allocate instance data */
  covrtAllocateInstanceData(moduleInstance->covInst_CONTAINER_BLOCK_INDEX);

  /* Initialize Coverage Information */
  covrtScriptInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX,
                  "C:\\pe_proj\\EC_QNX_Medtronic\\5_31_2017_SysObj\\linux_serial\\serial\\+serial_sys_obj\\SerialCOM.m",
                  0U, 13U, 35U, 12U, 0U, 0U, 1U, 0U, 0U, 3U, 3U);

  /* Initialize Function Information */
  covrtFcnInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 0U,
               "SerialCOM_SerialCOM", 42, -1, 51);
  covrtFcnInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 8U,
               "SerialCOM_isSupportedContext", 9097, -1, 9197);
  covrtFcnInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 9U,
               "SerialCOM_nullTermStr", 9215, -1, 9395);
  covrtFcnInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 10U,
               "SerialCOM_updateBuildInfo", 9455, -1, 10216);
  covrtFcnInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 11U,
               "SerialCOM_getDescriptiveName", 10234, -1, 10316);
  covrtFcnInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 12U,
               "SerialCOM_get_elem_size", 10376, -1, 11691);
  covrtFcnInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 7U,
               "SerialCOM_stepImpl", 5772, -1, 7625);
  covrtFcnInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 1U,
               "SerialCOM_get.inputEnable", 1912, -1, 2098);
  covrtFcnInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 2U,
               "SerialCOM_get.outputEnable", 2116, -1, 2303);
  covrtFcnInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 3U,
               "SerialCOM_get.ntDeviceName", 2321, -1, 2433);
  covrtFcnInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 4U,
               "SerialCOM_get.BaudRate", 2451, -1, 2591);
  covrtFcnInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 5U,
               "SerialCOM_get.ReadOrWrite", 2609, -1, 2736);
  covrtFcnInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 6U,
               "SerialCOM_get.ntTerminatorChar", 2754, -1, 2970);

  /* Initialize Basic Block Information */
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 0U, 42,
                      -1, 51);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 19U,
                      9150, -1, 9184);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 20U,
                      9261, -1, 9382);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 21U,
                      9562, -1, 10187);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 22U,
                      10283, -1, 10303);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 34U,
                      11615, -1, 11678);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 33U,
                      11561, -1, 11584);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 32U,
                      11373, -1, 11498);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 31U,
                      11272, -1, 11316);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 30U,
                      11175, -1, 11219);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 29U,
                      11080, -1, 11124);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 28U,
                      10986, -1, 11030);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 27U,
                      10890, -1, 10934);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 26U,
                      10795, -1, 10839);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 25U,
                      10699, -1, 10743);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 24U,
                      10604, -1, 10648);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 23U,
                      10508, -1, 10552);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 18U,
                      7528, -1, 7552);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 17U,
                      7337, -1, 7463);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 16U,
                      7037, -1, 7218);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 15U,
                      6917, -1, 6986);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 14U,
                      6712, -1, 6856);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 13U,
                      6587, -1, 6611);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 12U,
                      6501, -1, 6522);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 11U,
                      6268, -1, 6455);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 10U,
                      6126, -1, 6217);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 9U,
                      5908, -1, 6061);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 2U,
                      2058, -1, 2069);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 1U,
                      2013, -1, 2023);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 4U,
                      2263, -1, 2274);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 3U,
                      2218, -1, 2228);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 5U,
                      2370, -1, 2420);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 6U,
                      2496, -1, 2548);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 7U,
                      2657, -1, 2693);
  covrtBasicBlockInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 8U,
                      2836, -1, 2957);

  /* Initialize If Information */
  covrtIfInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 10U, 9512, 9545,
              -1, 10204);
  covrtIfInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 11U, 11528,
              11544, -1, 11601);
  covrtIfInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 2U, 5829, 5851,
              7276, 7613);
  covrtIfInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 3U, 5868, 5887,
              -1, 6656);
  covrtIfInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 4U, 6083, 6101,
              6239, 6480);
  covrtIfInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 5U, 6544, 6562,
              -1, 6636);
  covrtIfInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 6U, 6673, 6691,
              -1, 7263);
  covrtIfInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 7U, 6878, 6892,
              7008, 7243);
  covrtIfInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 8U, 7297, 7316,
              -1, 7597);
  covrtIfInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 9U, 7485, 7503,
              -1, 7577);
  covrtIfInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 0U, 1960, 1996,
              2037, 2086);
  covrtIfInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 1U, 2165, 2201,
              2242, 2291);

  /* Initialize MCDC Information */
  covrtMcdcInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 2U, 11531,
                11544, 1, 0, cond_starts_0_0, cond_ends_0_0, 2,
                postfix_exprs_0_0);
  covrtMcdcInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 0U, 6086,
                6101, 1, 1, cond_starts_0_1, cond_ends_0_1, 2, postfix_exprs_0_1);
  covrtMcdcInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 1U, 6881,
                6892, 1, 2, cond_starts_0_2, cond_ends_0_2, 2, postfix_exprs_0_2);

  /* Initialize For Information */
  /* Initialize While Information */
  /* Initialize Switch Information */
  covrtSwitchInit(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U, 0U, 10438,
                  10457, 11515, 11U, caseStarts_0_0, caseExprEnds_0_0);

  /* Start callback for coverage engine */
  covrtScriptStart(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0U);
  if (!moduleInstance->sysobj_not_empty) {
    b_st.site = &i_emlrtRSI;
    obj = &moduleInstance->sysobj;
    covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 0);
    covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 0);
    c_st.site = &emlrtRSI;
    d_st.site = &b_emlrtRSI;
    e_st.site = &c_emlrtRSI;
    d_st.site = &b_emlrtRSI;
    obj->isInitialized = 0;
    obj->TunablePropsChanged = false;
    e_st.site = &d_emlrtRSI;
    e_st.site = &d_emlrtRSI;
    e_st.site = &d_emlrtRSI;
    c_st.site = &emlrtRSI;
    d_st.site = &f_emlrtRSI;
    c_st.site = &emlrtRSI;
    d_st.site = &g_emlrtRSI;
    c_st.site = &emlrtRSI;
    d_st.site = &h_emlrtRSI;
    moduleInstance->sysobj_not_empty = true;
  }

  b_st.site = &j_emlrtRSI;
  obj = &moduleInstance->sysobj;
  if (moduleInstance->sysobj.isInitialized != 0) {
    y = NULL;
    m0 = emlrtCreateCharArray(2, iv2);
    emlrtInitCharArrayR2013a(&b_st, 51, m0, &u[0]);
    emlrtAssign(&y, m0);
    b_y = NULL;
    m0 = emlrtCreateCharArray(2, iv3);
    emlrtInitCharArrayR2013a(&b_st, 5, m0, &b_u[0]);
    emlrtAssign(&b_y, m0);
    error(&b_st, b_message(&b_st, y, b_y, &b_emlrtMCI), &b_emlrtMCI);
  }

  obj->isInitialized = 1;
  c_st.site = &d_emlrtRSI;
  d_st.site = &d_emlrtRSI;
  e_st.site = &d_emlrtRSI;
  f_st.site = &k_emlrtRSI;
  covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 1);
  g_st.site = &l_emlrtRSI;
  covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 5);
  covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 7);
  covrtLogIf(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 0, 0, true);
  covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 1);
  c_st.site = &d_emlrtRSI;
  d_st.site = &d_emlrtRSI;
  e_st.site = &k_emlrtRSI;
  covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 1);
  f_st.site = &l_emlrtRSI;
  covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 5);
  covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 7);
  covrtLogIf(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 0, 0, true);
  covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 1);
  c_st.site = &d_emlrtRSI;
  d_st.site = &k_emlrtRSI;
  covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 1);
  e_st.site = &l_emlrtRSI;
  covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 5);
  covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 7);
  covrtLogIf(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 0, 0, true);
  covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 1);
  c_st.site = &d_emlrtRSI;
  d_st.site = &m_emlrtRSI;
  covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 3);
  covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 5);
  d_st.site = &n_emlrtRSI;
  covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 4);
  covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 6);
  c_st.site = &d_emlrtRSI;
  if (obj->TunablePropsChanged) {
    y = NULL;
    m0 = emlrtCreateCharArray(2, iv4);
    emlrtInitCharArrayR2013a(&c_st, 44, m0, &c_u[0]);
    emlrtAssign(&y, m0);
    error(&c_st, message(&c_st, y, &b_emlrtMCI), &b_emlrtMCI);
  }

  obj->TunablePropsChanged = false;
  cgxertRestoreGcb(moduleInstance->S, -1, -1);
}

static void cgxe_mdl_initialize(InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH
  *moduleInstance)
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  emlrtStack b_st;
  serial_sys_obj_SerialCOM *obj;
  const mxArray *y;
  emlrtStack c_st;
  boolean_T tunablePropChangedBeforeResetImpl;
  const mxArray *m1;
  static const int32_T iv5[2] = { 1, 45 };

  emlrtStack d_st;
  static char_T u[45] = { 'M', 'A', 'T', 'L', 'A', 'B', ':', 's', 'y', 's', 't',
    'e', 'm', ':', 'm', 'e', 't', 'h', 'o', 'd', 'C', 'a', 'l', 'l', 'e', 'd',
    'W', 'h', 'e', 'n', 'R', 'e', 'l', 'e', 'a', 's', 'e', 'd', 'C', 'o', 'd',
    'e', 'g', 'e', 'n' };

  emlrtStack e_st;
  static const int32_T iv6[2] = { 1, 44 };

  const mxArray *b_y;
  static char_T b_u[44] = { 'M', 'A', 'T', 'L', 'A', 'B', ':', 's', 'y', 's',
    't', 'e', 'm', ':', 'i', 'n', 'v', 'a', 'l', 'i', 'd', 'T', 'u', 'n', 'a',
    'b', 'l', 'e', 'M', 'o', 'd', 'A', 'c', 'c', 'e', 's', 's', 'C', 'o', 'd',
    'e', 'g', 'e', 'n' };

  static const int32_T iv7[2] = { 1, 5 };

  static char_T c_u[5] = { 'r', 'e', 's', 'e', 't' };

  st.tls = moduleInstance->emlrtRootTLSGlobal;
  b_st.prev = &st;
  b_st.tls = st.tls;
  cgxertSetGcb(moduleInstance->S, -1, -1);
  if (!moduleInstance->sysobj_not_empty) {
    b_st.site = &i_emlrtRSI;
    obj = &moduleInstance->sysobj;
    covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 0);
    covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 0);
    c_st.site = &emlrtRSI;
    d_st.site = &b_emlrtRSI;
    e_st.site = &c_emlrtRSI;
    d_st.site = &b_emlrtRSI;
    obj->isInitialized = 0;
    obj->TunablePropsChanged = false;
    e_st.site = &d_emlrtRSI;
    e_st.site = &d_emlrtRSI;
    e_st.site = &d_emlrtRSI;
    c_st.site = &emlrtRSI;
    d_st.site = &f_emlrtRSI;
    c_st.site = &emlrtRSI;
    d_st.site = &g_emlrtRSI;
    c_st.site = &emlrtRSI;
    d_st.site = &h_emlrtRSI;
    moduleInstance->sysobj_not_empty = true;
  }

  b_st.site = &o_emlrtRSI;
  obj = &moduleInstance->sysobj;
  if (moduleInstance->sysobj.isInitialized == 2) {
    y = NULL;
    m1 = emlrtCreateCharArray(2, iv5);
    emlrtInitCharArrayR2013a(&b_st, 45, m1, &u[0]);
    emlrtAssign(&y, m1);
    b_y = NULL;
    m1 = emlrtCreateCharArray(2, iv7);
    emlrtInitCharArrayR2013a(&b_st, 5, m1, &c_u[0]);
    emlrtAssign(&b_y, m1);
    error(&b_st, b_message(&b_st, y, b_y, &b_emlrtMCI), &b_emlrtMCI);
  }

  tunablePropChangedBeforeResetImpl = obj->TunablePropsChanged;
  if ((int32_T)tunablePropChangedBeforeResetImpl != (int32_T)
      obj->TunablePropsChanged) {
    y = NULL;
    m1 = emlrtCreateCharArray(2, iv6);
    emlrtInitCharArrayR2013a(&b_st, 44, m1, &b_u[0]);
    emlrtAssign(&y, m1);
    error(&b_st, message(&b_st, y, &b_emlrtMCI), &b_emlrtMCI);
  }

  cgxertRestoreGcb(moduleInstance->S, -1, -1);
}

static void cgxe_mdl_outputs(InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH
  *moduleInstance)
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack d_st;
  emlrtStack e_st;
  serial_sys_obj_SerialCOM *obj;
  const mxArray *y;
  const mxArray *m2;
  static const int32_T iv8[2] = { 1, 45 };

  static char_T u[45] = { 'M', 'A', 'T', 'L', 'A', 'B', ':', 's', 'y', 's', 't',
    'e', 'm', ':', 'm', 'e', 't', 'h', 'o', 'd', 'C', 'a', 'l', 'l', 'e', 'd',
    'W', 'h', 'e', 'n', 'R', 'e', 'l', 'e', 'a', 's', 'e', 'd', 'C', 'o', 'd',
    'e', 'g', 'e', 'n' };

  const mxArray *b_y;
  static const int32_T iv9[2] = { 1, 4 };

  static const int32_T iv10[2] = { 1, 51 };

  static char_T b_u[4] = { 's', 't', 'e', 'p' };

  static char_T c_u[51] = { 'M', 'A', 'T', 'L', 'A', 'B', ':', 's', 'y', 's',
    't', 'e', 'm', ':', 'm', 'e', 't', 'h', 'o', 'd', 'C', 'a', 'l', 'l', 'e',
    'd', 'W', 'h', 'e', 'n', 'L', 'o', 'c', 'k', 'e', 'd', 'R', 'e', 'l', 'e',
    'a', 's', 'e', 'd', 'C', 'o', 'd', 'e', 'g', 'e', 'n' };

  emlrtStack f_st;
  emlrtStack g_st;
  emlrtStack h_st;
  static const int32_T iv11[2] = { 1, 5 };

  static char_T d_u[5] = { 's', 'e', 't', 'u', 'p' };

  emlrtStack i_st;
  static const int32_T iv12[2] = { 1, 44 };

  static char_T e_u[44] = { 'M', 'A', 'T', 'L', 'A', 'B', ':', 's', 'y', 's',
    't', 'e', 'm', ':', 'i', 'n', 'v', 'a', 'l', 'i', 'd', 'T', 'u', 'n', 'a',
    'b', 'l', 'e', 'M', 'o', 'd', 'A', 'c', 'c', 'e', 's', 's', 'C', 'o', 'd',
    'e', 'g', 'e', 'n' };

  static const int32_T iv13[2] = { 1, 44 };

  st.tls = moduleInstance->emlrtRootTLSGlobal;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  d_st.prev = &c_st;
  d_st.tls = c_st.tls;
  e_st.prev = &d_st;
  e_st.tls = d_st.tls;
  cgxertSetGcb(moduleInstance->S, -1, -1);
  if (!moduleInstance->sysobj_not_empty) {
    b_st.site = &i_emlrtRSI;
    obj = &moduleInstance->sysobj;
    covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 0);
    covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 0);
    c_st.site = &emlrtRSI;
    d_st.site = &b_emlrtRSI;
    e_st.site = &c_emlrtRSI;
    d_st.site = &b_emlrtRSI;
    obj->isInitialized = 0;
    obj->TunablePropsChanged = false;
    e_st.site = &d_emlrtRSI;
    e_st.site = &d_emlrtRSI;
    e_st.site = &d_emlrtRSI;
    c_st.site = &emlrtRSI;
    d_st.site = &f_emlrtRSI;
    c_st.site = &emlrtRSI;
    d_st.site = &g_emlrtRSI;
    c_st.site = &emlrtRSI;
    d_st.site = &h_emlrtRSI;
    moduleInstance->sysobj_not_empty = true;
  }

  b_st.site = &p_emlrtRSI;
  obj = &moduleInstance->sysobj;
  if (moduleInstance->sysobj.isInitialized == 2) {
    y = NULL;
    m2 = emlrtCreateCharArray(2, iv8);
    emlrtInitCharArrayR2013a(&b_st, 45, m2, &u[0]);
    emlrtAssign(&y, m2);
    b_y = NULL;
    m2 = emlrtCreateCharArray(2, iv9);
    emlrtInitCharArrayR2013a(&b_st, 4, m2, &b_u[0]);
    emlrtAssign(&b_y, m2);
    error(&b_st, b_message(&b_st, y, b_y, &b_emlrtMCI), &b_emlrtMCI);
  }

  if (obj->isInitialized != 1) {
    c_st.site = &d_emlrtRSI;
    d_st.site = &d_emlrtRSI;
    if (obj->isInitialized != 0) {
      y = NULL;
      m2 = emlrtCreateCharArray(2, iv10);
      emlrtInitCharArrayR2013a(&d_st, 51, m2, &c_u[0]);
      emlrtAssign(&y, m2);
      b_y = NULL;
      m2 = emlrtCreateCharArray(2, iv11);
      emlrtInitCharArrayR2013a(&d_st, 5, m2, &d_u[0]);
      emlrtAssign(&b_y, m2);
      error(&d_st, b_message(&d_st, y, b_y, &b_emlrtMCI), &b_emlrtMCI);
    }

    obj->isInitialized = 1;
    e_st.site = &d_emlrtRSI;
    f_st.site = &d_emlrtRSI;
    g_st.site = &d_emlrtRSI;
    h_st.site = &k_emlrtRSI;
    covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 1);
    i_st.site = &l_emlrtRSI;
    covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 5);
    covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 7);
    covrtLogIf(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 0, 0, true);
    covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 1);
    e_st.site = &d_emlrtRSI;
    f_st.site = &d_emlrtRSI;
    g_st.site = &k_emlrtRSI;
    covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 1);
    h_st.site = &l_emlrtRSI;
    covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 5);
    covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 7);
    covrtLogIf(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 0, 0, true);
    covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 1);
    e_st.site = &d_emlrtRSI;
    f_st.site = &k_emlrtRSI;
    covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 1);
    g_st.site = &l_emlrtRSI;
    covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 5);
    covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 7);
    covrtLogIf(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 0, 0, true);
    covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 1);
    e_st.site = &d_emlrtRSI;
    f_st.site = &m_emlrtRSI;
    covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 3);
    covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 5);
    f_st.site = &n_emlrtRSI;
    covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 4);
    covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 6);
    e_st.site = &d_emlrtRSI;
    if (obj->TunablePropsChanged) {
      y = NULL;
      m2 = emlrtCreateCharArray(2, iv13);
      emlrtInitCharArrayR2013a(&e_st, 44, m2, &e_u[0]);
      emlrtAssign(&y, m2);
      error(&e_st, message(&e_st, y, &b_emlrtMCI), &b_emlrtMCI);
    }

    obj->TunablePropsChanged = false;
  }

  c_st.site = &d_emlrtRSI;
  if (obj->TunablePropsChanged) {
    obj->TunablePropsChanged = false;
  }

  c_st.site = &d_emlrtRSI;
  d_st.site = &k_emlrtRSI;
  covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 1);
  e_st.site = &l_emlrtRSI;
  covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 5);
  covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 7);
  covrtLogIf(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 0, 0, true);
  covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 1);
  c_st.site = &d_emlrtRSI;
  d_st.site = &d_emlrtRSI;
  e_st.site = &q_emlrtRSI;
  covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 2);
  f_st.site = &r_emlrtRSI;
  covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 5);
  covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 7);
  covrtLogIf(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 0, 1, false);
  covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 4);
  c_st.site = &d_emlrtRSI;
  covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 7);
  covrtLogIf(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 0, 2, false);
  d_st.site = &s_emlrtRSI;
  covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 2);
  e_st.site = &r_emlrtRSI;
  covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 5);
  covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 7);
  covrtLogIf(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 0, 1, false);
  covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 4);
  covrtLogIf(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 0, 8, false);
  c_st.site = &d_emlrtRSI;
  if (obj->TunablePropsChanged) {
    y = NULL;
    m2 = emlrtCreateCharArray(2, iv12);
    emlrtInitCharArrayR2013a(&c_st, 44, m2, &e_u[0]);
    emlrtAssign(&y, m2);
    error(&c_st, message(&c_st, y, &b_emlrtMCI), &b_emlrtMCI);
  }

  cgxertRestoreGcb(moduleInstance->S, -1, -1);
}

static void cgxe_mdl_update(InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH
  *moduleInstance)
{
  cgxertSetGcb(moduleInstance->S, -1, -1);
  cgxertRestoreGcb(moduleInstance->S, -1, -1);
}

static void cgxe_mdl_terminate(InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH
  *moduleInstance)
{
  emlrtStack st = { NULL,              /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  emlrtStack b_st;
  serial_sys_obj_SerialCOM *obj;
  const mxArray *y;
  emlrtStack c_st;
  boolean_T flag;
  const mxArray *m3;
  static const int32_T iv14[2] = { 1, 45 };

  emlrtStack d_st;
  static char_T u[45] = { 'M', 'A', 'T', 'L', 'A', 'B', ':', 's', 'y', 's', 't',
    'e', 'm', ':', 'm', 'e', 't', 'h', 'o', 'd', 'C', 'a', 'l', 'l', 'e', 'd',
    'W', 'h', 'e', 'n', 'R', 'e', 'l', 'e', 'a', 's', 'e', 'd', 'C', 'o', 'd',
    'e', 'g', 'e', 'n' };

  emlrtStack e_st;
  const mxArray *b_y;
  static const int32_T iv15[2] = { 1, 8 };

  static char_T b_u[8] = { 'i', 's', 'L', 'o', 'c', 'k', 'e', 'd' };

  static const int32_T iv16[2] = { 1, 45 };

  static const int32_T iv17[2] = { 1, 7 };

  static char_T c_u[7] = { 'r', 'e', 'l', 'e', 'a', 's', 'e' };

  st.tls = moduleInstance->emlrtRootTLSGlobal;
  b_st.prev = &st;
  b_st.tls = st.tls;
  emlrtDestroyArray(&b_eml_mx);
  emlrtDestroyArray(&eml_mx);
  cgxertSetGcb(moduleInstance->S, -1, -1);
  if (!moduleInstance->sysobj_not_empty) {
    b_st.site = &i_emlrtRSI;
    obj = &moduleInstance->sysobj;
    covrtLogFcn(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 0);
    covrtLogBasicBlock(moduleInstance->covInst_CONTAINER_BLOCK_INDEX, 0, 0);
    c_st.site = &emlrtRSI;
    d_st.site = &b_emlrtRSI;
    e_st.site = &c_emlrtRSI;
    d_st.site = &b_emlrtRSI;
    obj->isInitialized = 0;
    obj->TunablePropsChanged = false;
    e_st.site = &d_emlrtRSI;
    e_st.site = &d_emlrtRSI;
    e_st.site = &d_emlrtRSI;
    c_st.site = &emlrtRSI;
    d_st.site = &f_emlrtRSI;
    c_st.site = &emlrtRSI;
    d_st.site = &g_emlrtRSI;
    c_st.site = &emlrtRSI;
    d_st.site = &h_emlrtRSI;
    moduleInstance->sysobj_not_empty = true;
  }

  b_st.site = &t_emlrtRSI;
  obj = &moduleInstance->sysobj;
  if (moduleInstance->sysobj.isInitialized == 2) {
    y = NULL;
    m3 = emlrtCreateCharArray(2, iv14);
    emlrtInitCharArrayR2013a(&b_st, 45, m3, &u[0]);
    emlrtAssign(&y, m3);
    b_y = NULL;
    m3 = emlrtCreateCharArray(2, iv15);
    emlrtInitCharArrayR2013a(&b_st, 8, m3, &b_u[0]);
    emlrtAssign(&b_y, m3);
    error(&b_st, b_message(&b_st, y, b_y, &b_emlrtMCI), &b_emlrtMCI);
  }

  flag = (obj->isInitialized == 1);
  if (flag) {
    b_st.site = &u_emlrtRSI;
    obj = &moduleInstance->sysobj;
    if (moduleInstance->sysobj.isInitialized == 2) {
      y = NULL;
      m3 = emlrtCreateCharArray(2, iv16);
      emlrtInitCharArrayR2013a(&b_st, 45, m3, &u[0]);
      emlrtAssign(&y, m3);
      b_y = NULL;
      m3 = emlrtCreateCharArray(2, iv17);
      emlrtInitCharArrayR2013a(&b_st, 7, m3, &c_u[0]);
      emlrtAssign(&b_y, m3);
      error(&b_st, b_message(&b_st, y, b_y, &b_emlrtMCI), &b_emlrtMCI);
    }

    if (obj->isInitialized == 1) {
      obj->isInitialized = 2;
    }
  }

  /* Free instance data */
  covrtFreeInstanceData(moduleInstance->covInst_CONTAINER_BLOCK_INDEX);
  cgxertRestoreGcb(moduleInstance->S, -1, -1);
}

static const mxArray *cgxe_mdl_get_sim_state
  (InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH *moduleInstance)
{
  const mxArray *st;
  const mxArray *y;
  const mxArray *b_y;
  const mxArray *c_y;
  const mxArray *m4;
  st = NULL;
  y = NULL;
  emlrtAssign(&y, emlrtCreateCellMatrix(2, 1));
  b_y = NULL;
  emlrtAssign(&b_y, emlrtCreateStructMatrix(1, 1, 0, NULL));
  c_y = NULL;
  m4 = emlrtCreateNumericMatrix(1, 1, mxINT32_CLASS, mxREAL);
  *(int32_T *)mxGetData(m4) = moduleInstance->sysobj.isInitialized;
  emlrtAssign(&c_y, m4);
  emlrtAddField(b_y, c_y, "isInitialized", 0);
  c_y = NULL;
  m4 = emlrtCreateLogicalScalar(moduleInstance->sysobj.TunablePropsChanged);
  emlrtAssign(&c_y, m4);
  emlrtAddField(b_y, c_y, "TunablePropsChanged", 0);
  emlrtSetCell(y, 0, b_y);
  b_y = NULL;
  m4 = emlrtCreateLogicalScalar(moduleInstance->sysobj_not_empty);
  emlrtAssign(&b_y, m4);
  emlrtSetCell(y, 1, b_y);
  emlrtAssign(&st, y);
  return st;
}

static serial_sys_obj_SerialCOM emlrt_marshallIn(const emlrtStack *sp, const
  mxArray *b_sysobj, const char_T *identifier)
{
  serial_sys_obj_SerialCOM y;
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = b_emlrt_marshallIn(sp, emlrtAlias(b_sysobj), &thisId);
  emlrtDestroyArray(&b_sysobj);
  return y;
}

static serial_sys_obj_SerialCOM b_emlrt_marshallIn(const emlrtStack *sp, const
  mxArray *u, const emlrtMsgIdentifier *parentId)
{
  serial_sys_obj_SerialCOM y;
  emlrtMsgIdentifier thisId;
  static const char * fieldNames[2] = { "isInitialized", "TunablePropsChanged" };

  static const int32_T dims = 0;
  thisId.fParent = parentId;
  thisId.bParentIsCell = false;
  emlrtCheckStructR2012b(sp, parentId, u, 2, fieldNames, 0U, &dims);
  thisId.fIdentifier = "isInitialized";
  y.isInitialized = c_emlrt_marshallIn(sp, emlrtAlias(emlrtGetFieldR2013a(sp, u,
    0, "isInitialized")), &thisId);
  thisId.fIdentifier = "TunablePropsChanged";
  y.TunablePropsChanged = d_emlrt_marshallIn(sp, emlrtAlias(emlrtGetFieldR2013a
    (sp, u, 0, "TunablePropsChanged")), &thisId);
  emlrtDestroyArray(&u);
  return y;
}

static int32_T c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId)
{
  int32_T y;
  y = f_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static boolean_T d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
  const emlrtMsgIdentifier *parentId)
{
  boolean_T y;
  y = g_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static boolean_T e_emlrt_marshallIn(const emlrtStack *sp, const mxArray
  *b_sysobj_not_empty, const char_T *identifier)
{
  boolean_T y;
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = d_emlrt_marshallIn(sp, emlrtAlias(b_sysobj_not_empty), &thisId);
  emlrtDestroyArray(&b_sysobj_not_empty);
  return y;
}

static void cgxe_mdl_set_sim_state(InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH
  *moduleInstance, const mxArray *st)
{
  emlrtStack b_st = { NULL,            /* site */
    NULL,                              /* tls */
    NULL                               /* prev */
  };

  const mxArray *u;
  b_st.tls = moduleInstance->emlrtRootTLSGlobal;
  u = emlrtAlias(st);
  moduleInstance->sysobj = emlrt_marshallIn(&b_st, emlrtAlias(emlrtGetCell(&b_st,
    "sysobj", u, 0)), "sysobj");
  moduleInstance->sysobj_not_empty = e_emlrt_marshallIn(&b_st, emlrtAlias
    (emlrtGetCell(&b_st, "sysobj_not_empty", u, 1)), "sysobj_not_empty");
  emlrtDestroyArray(&u);
  emlrtDestroyArray(&st);
}

static const mxArray *message(const emlrtStack *sp, const mxArray *b,
  emlrtMCInfo *location)
{
  const mxArray *pArray;
  const mxArray *m5;
  pArray = b;
  return emlrtCallMATLABR2012b(sp, 1, &m5, 1, &pArray, "message", true, location);
}

static void error(const emlrtStack *sp, const mxArray *b, emlrtMCInfo *location)
{
  const mxArray *pArray;
  pArray = b;
  emlrtCallMATLABR2012b(sp, 0, NULL, 1, &pArray, "error", true, location);
}

static const mxArray *b_message(const emlrtStack *sp, const mxArray *b, const
  mxArray *c, emlrtMCInfo *location)
{
  const mxArray *pArrays[2];
  const mxArray *m6;
  pArrays[0] = b;
  pArrays[1] = c;
  return emlrtCallMATLABR2012b(sp, 1, &m6, 2, pArrays, "message", true, location);
}

static int32_T f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId)
{
  int32_T ret;
  static const int32_T dims = 0;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "int32", false, 0U, &dims);
  ret = *(int32_T *)mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static boolean_T g_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
  const emlrtMsgIdentifier *msgId)
{
  boolean_T ret;
  static const int32_T dims = 0;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "logical", false, 0U, &dims);
  ret = *mxGetLogicals(src);
  emlrtDestroyArray(&src);
  return ret;
}

static void init_simulink_io_address(InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH
  *moduleInstance)
{
  moduleInstance->emlrtRootTLSGlobal = (void *)cgxertGetEMLRTCtx
    (moduleInstance->S);
  moduleInstance->u0 = (uint8_T *)cgxertGetInputPortSignal(moduleInstance->S, 0);
  moduleInstance->covInst_CONTAINER_BLOCK_INDEX = (covrtInstance *)
    cgxertGetCovrtInstance(moduleInstance->S, -1);
}

/* CGXE Glue Code */
static void mdlOutputs_tOBMRQifCxXhWEe6sQ3YXH(SimStruct *S, int_T tid)
{
  InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH *moduleInstance =
    (InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH *)cgxertGetRuntimeInstance(S);
  cgxe_mdl_outputs(moduleInstance);
}

static void mdlInitialize_tOBMRQifCxXhWEe6sQ3YXH(SimStruct *S)
{
  InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH *moduleInstance =
    (InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH *)cgxertGetRuntimeInstance(S);
  cgxe_mdl_initialize(moduleInstance);
}

static void mdlUpdate_tOBMRQifCxXhWEe6sQ3YXH(SimStruct *S, int_T tid)
{
  InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH *moduleInstance =
    (InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH *)cgxertGetRuntimeInstance(S);
  cgxe_mdl_update(moduleInstance);
}

static mxArray* getSimState_tOBMRQifCxXhWEe6sQ3YXH(SimStruct *S)
{
  mxArray* mxSS;
  InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH *moduleInstance =
    (InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH *)cgxertGetRuntimeInstance(S);
  mxSS = (mxArray *) cgxe_mdl_get_sim_state(moduleInstance);
  return mxSS;
}

static void setSimState_tOBMRQifCxXhWEe6sQ3YXH(SimStruct *S, const mxArray *ss)
{
  InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH *moduleInstance =
    (InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH *)cgxertGetRuntimeInstance(S);
  cgxe_mdl_set_sim_state(moduleInstance, emlrtAlias(ss));
}

static void mdlTerminate_tOBMRQifCxXhWEe6sQ3YXH(SimStruct *S)
{
  InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH *moduleInstance =
    (InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH *)cgxertGetRuntimeInstance(S);
  cgxe_mdl_terminate(moduleInstance);
  free((void *)moduleInstance);
}

static void mdlStart_tOBMRQifCxXhWEe6sQ3YXH(SimStruct *S)
{
  InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH *moduleInstance =
    (InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH *)calloc(1, sizeof
    (InstanceStruct_tOBMRQifCxXhWEe6sQ3YXH));
  moduleInstance->S = S;
  cgxertSetRuntimeInstance(S, (void *)moduleInstance);
  ssSetmdlOutputs(S, mdlOutputs_tOBMRQifCxXhWEe6sQ3YXH);
  ssSetmdlInitializeConditions(S, mdlInitialize_tOBMRQifCxXhWEe6sQ3YXH);
  ssSetmdlUpdate(S, mdlUpdate_tOBMRQifCxXhWEe6sQ3YXH);
  ssSetmdlTerminate(S, mdlTerminate_tOBMRQifCxXhWEe6sQ3YXH);
  cgxe_mdl_start(moduleInstance);

  {
    uint_T options = ssGetOptions(S);
    options |= SS_OPTION_RUNTIME_EXCEPTION_FREE_CODE;
    ssSetOptions(S, options);
  }
}

static void mdlProcessParameters_tOBMRQifCxXhWEe6sQ3YXH(SimStruct *S)
{
}

void method_dispatcher_tOBMRQifCxXhWEe6sQ3YXH(SimStruct *S, int_T method, void
  *data)
{
  switch (method) {
   case SS_CALL_MDL_START:
    mdlStart_tOBMRQifCxXhWEe6sQ3YXH(S);
    break;

   case SS_CALL_MDL_PROCESS_PARAMETERS:
    mdlProcessParameters_tOBMRQifCxXhWEe6sQ3YXH(S);
    break;

   case SS_CALL_MDL_GET_SIM_STATE:
    *((mxArray**) data) = getSimState_tOBMRQifCxXhWEe6sQ3YXH(S);
    break;

   case SS_CALL_MDL_SET_SIM_STATE:
    setSimState_tOBMRQifCxXhWEe6sQ3YXH(S, (const mxArray *) data);
    break;

   default:
    /* Unhandled method */
    /*
       sf_mex_error_message("Stateflow Internal Error:\n"
       "Error calling method dispatcher for module: tOBMRQifCxXhWEe6sQ3YXH.\n"
       "Can't handle method %d.\n", method);
     */
    break;
  }
}

mxArray *cgxe_tOBMRQifCxXhWEe6sQ3YXH_BuildInfoUpdate(void)
{
  mxArray * mxBIArgs;
  mxArray * elem_1;
  mxArray * elem_2;
  mxArray * elem_3;
  mxArray * elem_4;
  mxArray * elem_5;
  mxArray * elem_6;
  mxArray * elem_7;
  mxArray * elem_8;
  mxArray * elem_9;
  mxArray * elem_10;
  mxArray * elem_11;
  mxArray * elem_12;
  mxArray * elem_13;
  mxArray * elem_14;
  mxArray * elem_15;
  mxArray * elem_16;
  mxArray * elem_17;
  mxBIArgs = mxCreateCellMatrix(1,3);
  elem_1 = mxCreateCellMatrix(1,6);
  elem_2 = mxCreateCellMatrix(0,0);
  mxSetCell(elem_1,0,elem_2);
  elem_3 = mxCreateCellMatrix(1,4);
  elem_4 = mxCreateString("addIncludeFiles");
  mxSetCell(elem_3,0,elem_4);
  elem_5 = mxCreateCellMatrix(1,1);
  elem_6 = mxCreateString("<stdio.h>");
  mxSetCell(elem_5,0,elem_6);
  mxSetCell(elem_3,1,elem_5);
  elem_7 = mxCreateCellMatrix(1,1);
  elem_8 = mxCreateString("");
  mxSetCell(elem_7,0,elem_8);
  mxSetCell(elem_3,2,elem_7);
  elem_9 = mxCreateCellMatrix(1,1);
  elem_10 = mxCreateString("");
  mxSetCell(elem_9,0,elem_10);
  mxSetCell(elem_3,3,elem_9);
  mxSetCell(elem_1,1,elem_3);
  elem_11 = mxCreateCellMatrix(0,0);
  mxSetCell(elem_1,2,elem_11);
  elem_12 = mxCreateCellMatrix(0,0);
  mxSetCell(elem_1,3,elem_12);
  elem_13 = mxCreateCellMatrix(0,0);
  mxSetCell(elem_1,4,elem_13);
  elem_14 = mxCreateCellMatrix(0,0);
  mxSetCell(elem_1,5,elem_14);
  mxSetCell(mxBIArgs,0,elem_1);
  elem_15 = mxCreateCellMatrix(1,1);
  elem_16 = mxCreateString("serial_sys_obj.SerialCOM");
  mxSetCell(elem_15,0,elem_16);
  mxSetCell(mxBIArgs,1,elem_15);
  elem_17 = mxCreateCellMatrix(1,0);
  mxSetCell(mxBIArgs,2,elem_17);
  return mxBIArgs;
}

mxArray *cgxe_tOBMRQifCxXhWEe6sQ3YXH_fallback_info(void)
{
  const char* fallbackInfoFields[] = { "fallbackType", "incompatiableSymbol" };

  mxArray* fallbackInfoStruct = mxCreateStructMatrix(1, 1, 2, fallbackInfoFields);
  mxArray* fallbackType = mxCreateString("thirdPartyLibs");
  mxArray* incompatibleSymbol = mxCreateString("serial_sys_obj.SerialCOM");
  mxSetFieldByNumber(fallbackInfoStruct, 0, 0, fallbackType);
  mxSetFieldByNumber(fallbackInfoStruct, 0, 1, incompatibleSymbol);
  return fallbackInfoStruct;
}

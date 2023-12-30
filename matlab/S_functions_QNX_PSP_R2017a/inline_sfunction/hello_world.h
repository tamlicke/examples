#include <stdio.h>

void printValueInit(void);
double printValue(double value);
void printValueTerm(void);


#ifdef MATLAB_MEX_FILE
    #include "simstruc.h"
#endif

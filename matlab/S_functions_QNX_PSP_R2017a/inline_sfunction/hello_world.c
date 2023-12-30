/* This is hand-written code that the S-function AND the generated code code calls.
 * No need to include sim-struct or MATLAB/Simulink MEX code in here.
 * Since this code is executed in Simulation AND on the target, you may need 
 * to add include gaurds to handle simulation and code-generation behavior
 * if the code becomes target-specific (ie: host desktop OS versus on-target code
 *
 * Use the MATLAB_MEX_FILE macro to determine thisd
 */

#include "hello_world.h"


void printValueInit()
{
    printf("Hello world. Insert initialization code here (ie: malloc(), new, etc) \n");
    fflush(stdout);
}


double printValue(double value)
{
    printf("Hello world. Current Signal value = %f \n",value);
    fflush(stdout);
    
    #ifndef MATLAB_MEX_FILE        
        return(value+2); //in all other circumstances (ie: generated code)
    #else
        return(value-1); //if this code is called from a MEX file
    #endif
            
}



void printValueTerm()
{
    printf("Goodbye World. Insert termination code here (ie: free(), delete, etc..)\n");
    fflush(stdout);
     
}

/* This is an example source file. In here you could include code that is very specific
 * to the target which will be deployed to your system. This could be to fetch sensor data or read a value
 * from a publisher/subscriber network
 */

void call_this_at_the_very_first_time_step()
{
    printf("Call at the first time step \n");
}


void external_function(double *Input)
{
//     *Output = *Input * 2;
    *Input *= 2;
}
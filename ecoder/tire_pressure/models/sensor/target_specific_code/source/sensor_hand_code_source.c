/* Copyright 2021 MathWorks, Inc. */

/*
* The functions below are stubbed to allow compilation. However, the premise of the example is that these functions
* are target-specific and would not be compiled for desktop simulation.
*/

#include "sensor_hand_code_header.h"

void sensor_read_nvm( void * nvm_source_address, void * ram_destination_addresss, size_t single_element_size, size_t element_quantity_to_copy ) {
    return;
}


extern double sensor_read_pressure( void ){ 
    double result = 0.0;
    return( result );
   
}

void sensor_transmit_data( void * message_source_address, size_t single_element_size, size_t element_quantity_to_send ){
    
    return;
    
}
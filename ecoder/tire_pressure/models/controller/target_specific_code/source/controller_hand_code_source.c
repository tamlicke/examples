/* Copyright 2021 MathWorks, Inc. */

/*
* The functions below are stubbed to allow compilation. However, the premise of the example is that these functions
* are target-specific and would not be compiled for desktop simulation.
*/

#include "controller_hand_code_header.h"

void controller_nvm_read( void * nvm_source_address, void * ram_destination_addresss, size_t element_size, size_t element_quantity ) {
    
    return;
}

void controller_nvm_write( void * ram_source_address, void * nvm_destination_addresss, size_t element_size, size_t element_quantity ){
    
    return;
}

void controller_set_warning_lamp_enabled( boolean_T enabledStatus ){
    
    return;
    
}

size_t get_reception_queue_message_byte_quantity( void ){

    size_t queue_message_byte_quantity = 0;
    return( queue_message_byte_quantity );
}


void controller_get_message_bytes( void * message_destination_buffer, size_t buffer_size ) {
    return;
}
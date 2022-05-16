
/* Copyright 2021 MathWorks, Inc. */

#if defined CONTROLLER_HAND_CODE_HEADER_H
/* This file has already been included. */
#else

/* "Short-circuit" subsequent inclusions: */
#  define CONTROLLER_HAND_CODE_HEADER_H

#  include <stddef.h>

/*
* This file is intended for target-only compilation. Therefore, it can assume that "rtwtypes.h",
* a generated file, will exist at compile-time. This file is needed to provide the "boolean_T"
* type used below.
*/
#  include "rtwtypes.h"

extern void controller_nvm_read( void * nvm_source_address, void * ram_destination_addresss, size_t element_size, size_t element_quantity );
extern void controller_nvm_write( void * ram_source_address, void * nvm_destination_addresss, size_t element_size, size_t element_quantity );
extern void controller_set_warning_lamp_enabled( boolean_T enabledStatus );

extern size_t get_reception_queue_message_byte_quantity( void );

extern void controller_get_message_bytes( void * message_destination_buffer, size_t buffer_size );

#endif /* CONTROLLER_HAND_CODE_HEADER_H */
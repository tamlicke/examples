/* Copyright 2021 MathWorks, Inc. */

#if defined SENSOR_HAND_CODE_HEADER_H
/* This file has already been included. */
#else

/* "Short-circuit" subsequent inclusions: */
#  define SENSOR_HAND_CODE_HEADER_H

#  include <stddef.h>

extern void sensor_read_nvm( void * nvm_source_address, void * ram_destination_addresss, size_t single_element_size, size_t element_quantity_to_copy );

extern double sensor_read_pressure( void );

extern void sensor_transmit_data( void * message_source_address, size_t single_element_size, size_t element_quantity_to_send );

#endif /* SENSOR_HAND_CODE_HEADER_H */
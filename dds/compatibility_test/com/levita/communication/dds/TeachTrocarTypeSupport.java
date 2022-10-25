
/*
WARNING: THIS FILE IS AUTO-GENERATED. DO NOT MODIFY.

This file was generated from .idl using "rtiddsgen".
The rtiddsgen tool is part of the RTI Connext distribution.
For more information, type 'rtiddsgen -help' at a command shell
or consult the RTI Connext manual.
*/

package com.levita.communication.dds;

import com.rti.dds.cdr.CdrEncapsulation;
import com.rti.dds.cdr.CdrInputStream;
import com.rti.dds.cdr.CdrOutputStream;
import com.rti.dds.cdr.CdrPrimitiveType;
import com.rti.dds.cdr.CdrBuffer;
import com.rti.dds.cdr.CdrHeader;
import com.rti.dds.publication.DataWriter;
import com.rti.dds.publication.DataWriterListener;
import com.rti.dds.subscription.DataReader;
import com.rti.dds.subscription.DataReaderListener;
import com.rti.dds.topic.DefaultEndpointData;
import com.rti.dds.topic.TypeSupportImpl;
import com.rti.dds.topic.TypeSupportType;
import com.rti.dds.infrastructure.*;
import com.rti.dds.infrastructure.RETCODE_ERROR;
import com.rti.dds.topic.PrintFormatProperty;
import com.rti.dds.typecode.TypeCode;
import com.rti.dds.typecode.ExtensibilityKind;
import com.rti.dds.cdr.IllegalCdrStateException;

import com.rti.dds.topic.TypeSupportParticipantInfo;
import com.rti.dds.topic.TypeSupportEndpointInfo;
import com.rti.dds.domain.DomainParticipant;

/**
* A collection of useful methods for dealing with objects of type
* TeachTrocar
*/

public class TeachTrocarTypeSupport extends TypeSupportImpl {
    // -----------------------------------------------------------------------
    // Private Fields
    // -----------------------------------------------------------------------

    private static final String TYPE_NAME = "com::levita::communication::dds::TeachTrocar";

    private static final char[] PLUGIN_VERSION = {2, 0, 0, 0};     
    private static final TeachTrocarTypeSupport _singleton
    = new TeachTrocarTypeSupport();

    // -----------------------------------------------------------------------
    // Public Methods
    // -----------------------------------------------------------------------

    // --- External methods: -------------------------------------------------
    /* The methods in this section are for use by users of RTI Connext
    */

    public static String get_type_name() {
        return _singleton.get_type_nameI();
    }

    public static void register_type(DomainParticipant participant,
    String type_name) {
        _singleton.register_typeI(participant, type_name);
    }

    public static void unregister_type(DomainParticipant participant,
    String type_name) {
        _singleton.unregister_typeI(participant, type_name);
    }

    /* The methods in this section are for use by RTI Connext
    * itself and by the code generated by rtiddsgen for other types.
    * They should be used directly or modified only by advanced users and are
    * subject to change in future versions of RTI Connext.
    */
    public static TeachTrocarTypeSupport get_instance() {
        return _singleton;
    }

    public static TeachTrocarTypeSupport getInstance() {
        return get_instance();
    }

    public static TypeCode getTypeCode(){
        return TeachTrocarTypeCode.VALUE;
    }

    @Override
    public Object create_data() {
        return TeachTrocar.create();
    }

    @Override
    public void destroy_data(Object data) {
        return;
    }
    public Object create_key() {
        return new TeachTrocar();
    }

    public void destroy_key(Object key) {
        return;
    }

    @Override
    public Class<?> get_type() {
        return TeachTrocar.class;
    }

    /**
    * This is a concrete implementation of this method inherited from the base class.
    * This method will perform a deep copy of <code>source</code> into
    * <code>destination</code>.
    * 
    * @param src The Object which contains the data to be copied.
    * @return Returns <code>destination</code>.
    * @exception NullPointerException If <code>destination</code> or 
    * <code>source</code> is null.
    * @exception ClassCastException If either <code>destination</code> or
    * <code>this</code> is not a <code>TeachTrocar</code>
    * type.
    */
    @Override 
    public Object copy_data(Object destination, Object source) {

        TeachTrocar typedDst = (TeachTrocar) destination;
        TeachTrocar typedSrc = (TeachTrocar) source;

        return typedDst.copy_from(typedSrc);

    }

    @Override 
    public long get_serialized_sample_max_size(Object endpoint_data,boolean include_encapsulation,short final_encapsulation_id,long currentAlignment) {
        CdrPrimitiveType _cdrPrimitiveType = CdrPrimitiveType.getInstance(final_encapsulation_id);
        short encapsulation_id = CdrEncapsulation.getEncapsulationFromFinal(
            final_encapsulation_id,
            ExtensibilityKind.EXTENSIBLE_EXTENSIBILITY);
        boolean xcdr1 = (encapsulation_id <= CdrEncapsulation.CDR_ENCAPSULATION_ID_PL_CDR_LE);
        long origAlignment = currentAlignment;
        long encapsulation_size = currentAlignment;

        if(include_encapsulation) {
            if (!CdrEncapsulation.isValidEncapsulationKind(encapsulation_id)) {
                throw new RETCODE_ERROR("Unsupported encapsulation");
            }

            encapsulation_size += _cdrPrimitiveType.getShortMaxSizeSerialized(encapsulation_size);
            encapsulation_size += _cdrPrimitiveType.getShortMaxSizeSerialized(encapsulation_size);
            encapsulation_size -= currentAlignment;
            currentAlignment = 0;
            origAlignment = 0;
        } 

        if (!xcdr1) {
            //DHeader
            currentAlignment += _cdrPrimitiveType.getIntMaxSizeSerialized(currentAlignment);
        }

        currentAlignment += _cdrPrimitiveType.getBooleanMaxSizeSerialized(currentAlignment) ;
        if (include_encapsulation) {
            currentAlignment += encapsulation_size;
        }
        return  currentAlignment - origAlignment;
    }

    @Override 
    public long get_serialized_sample_min_size(Object endpoint_data,boolean include_encapsulation,short final_encapsulation_id,long currentAlignment) {
        CdrPrimitiveType _cdrPrimitiveType = CdrPrimitiveType.getInstance(final_encapsulation_id);
        short encapsulation_id = CdrEncapsulation.getEncapsulationFromFinal(
            final_encapsulation_id,
            ExtensibilityKind.EXTENSIBLE_EXTENSIBILITY);
        boolean xcdr1 = (encapsulation_id <= CdrEncapsulation.CDR_ENCAPSULATION_ID_PL_CDR_LE);
        long origAlignment = currentAlignment;
        long encapsulation_size = currentAlignment;

        if(include_encapsulation) {
            if (!CdrEncapsulation.isValidEncapsulationKind(encapsulation_id)) {
                throw new RETCODE_ERROR("Unsupported encapsulation");
            }

            encapsulation_size += _cdrPrimitiveType.getShortMaxSizeSerialized(encapsulation_size);
            encapsulation_size += _cdrPrimitiveType.getShortMaxSizeSerialized(encapsulation_size);
            encapsulation_size -= currentAlignment;
            currentAlignment = 0;
            origAlignment = 0;
        } 

        if (!xcdr1) {
            //DHeader
            currentAlignment += _cdrPrimitiveType.getIntMaxSizeSerialized(currentAlignment);
        }

        currentAlignment +=_cdrPrimitiveType.getBooleanMaxSizeSerialized(currentAlignment) ;

        if (include_encapsulation) {
            currentAlignment += encapsulation_size;
        }
        return  currentAlignment - origAlignment;
    }

    @Override
    public long get_serialized_sample_size(
        Object endpoint_data, boolean include_encapsulation, 
        short final_encapsulation_id, long currentAlignment,
        Object sample) 
    {

        CdrPrimitiveType _cdrPrimitiveType = CdrPrimitiveType.getInstance(final_encapsulation_id);
        short encapsulation_id = CdrEncapsulation.getEncapsulationFromFinal(
            final_encapsulation_id,
            ExtensibilityKind.EXTENSIBLE_EXTENSIBILITY);
        boolean xcdr1 = (encapsulation_id <= CdrEncapsulation.CDR_ENCAPSULATION_ID_PL_CDR_LE);
        TeachTrocar typedSrc = (TeachTrocar) sample;
        DefaultEndpointData epd = ((DefaultEndpointData) endpoint_data) ;
        long origAlignment = currentAlignment;
        long encapsulation_size = currentAlignment;

        if(include_encapsulation) {
            if (!CdrEncapsulation.isValidEncapsulationKind(encapsulation_id)) {
                throw new RETCODE_ERROR("Unsupported encapsulation");
            }

            encapsulation_size += _cdrPrimitiveType.getShortMaxSizeSerialized(encapsulation_size);
            encapsulation_size += _cdrPrimitiveType.getShortMaxSizeSerialized(encapsulation_size);
            encapsulation_size -= currentAlignment;
            currentAlignment = 0;
            origAlignment = 0;
            if(xcdr1){          
                epd.setBaseAlignment(currentAlignment);
            }
        } 

        if (!xcdr1) {
            //DHeader
            currentAlignment += _cdrPrimitiveType.getIntMaxSizeSerialized(currentAlignment);
        }

        currentAlignment  +=  _cdrPrimitiveType.getBooleanMaxSizeSerialized(epd.getAlignment(currentAlignment));

        if (include_encapsulation) {
            currentAlignment += encapsulation_size;
        }
        return currentAlignment - origAlignment;
    }

    @Override 
    public long get_serialized_key_max_size(
        Object endpoint_data,
        boolean include_encapsulation, 
        short final_encapsulation_id,
        long currentAlignment) 
    {
        CdrPrimitiveType _cdrPrimitiveType = CdrPrimitiveType.getInstance(final_encapsulation_id);
        short encapsulation_id = CdrEncapsulation.getEncapsulationFromFinal(
            final_encapsulation_id,
            ExtensibilityKind.EXTENSIBLE_EXTENSIBILITY);
        boolean xcdr1 = (encapsulation_id <= CdrEncapsulation.CDR_ENCAPSULATION_ID_PL_CDR_LE);
        long origAlignment = currentAlignment;
        long encapsulation_size = currentAlignment;

        if(include_encapsulation) {
            if (!CdrEncapsulation.isValidEncapsulationKind(encapsulation_id)) {
                throw new RETCODE_ERROR("Unsupported encapsulation");
            }

            encapsulation_size += _cdrPrimitiveType.getShortMaxSizeSerialized(encapsulation_size);
            encapsulation_size += _cdrPrimitiveType.getShortMaxSizeSerialized(encapsulation_size);
            encapsulation_size -= currentAlignment;
            currentAlignment = 0;
            origAlignment = 0;
        } 

        currentAlignment += get_serialized_sample_max_size(
            endpoint_data,false,final_encapsulation_id,currentAlignment);
        if (include_encapsulation) {
            currentAlignment += encapsulation_size;
        }

        return currentAlignment - origAlignment;
    }

    @Override 
    public long get_serialized_key_for_keyhash_max_size(
        Object endpoint_data,
        boolean include_encapsulation, 
        short final_encapsulation_id,
        long currentAlignment) 
    {

        CdrPrimitiveType _cdrPrimitiveType = CdrPrimitiveType.getInstance(final_encapsulation_id);
        short encapsulation_id = CdrEncapsulation.getEncapsulationFromFinal(
            final_encapsulation_id,
            ExtensibilityKind.EXTENSIBLE_EXTENSIBILITY);
        boolean xcdr1 = (encapsulation_id <= CdrEncapsulation.CDR_ENCAPSULATION_ID_PL_CDR_LE);
        if (xcdr1){
            return get_serialized_key_max_size( endpoint_data, include_encapsulation, final_encapsulation_id, currentAlignment) ;
        }
        long origAlignment = currentAlignment;
        long encapsulation_size = currentAlignment;

        if(include_encapsulation) {
            if (!CdrEncapsulation.isValidEncapsulationKind(encapsulation_id)) {
                throw new RETCODE_ERROR("Unsupported encapsulation");
            }

            encapsulation_size += _cdrPrimitiveType.getShortMaxSizeSerialized(encapsulation_size);
            encapsulation_size += _cdrPrimitiveType.getShortMaxSizeSerialized(encapsulation_size);
            encapsulation_size -= currentAlignment;
            currentAlignment = 0;
            origAlignment = 0;
        } 

        currentAlignment += _cdrPrimitiveType.getBooleanMaxSizeSerialized(currentAlignment) ;
        if (include_encapsulation) {
            currentAlignment += encapsulation_size;
        }

        return currentAlignment - origAlignment;

    }

    public void serialize(Object endpoint_data,Object src, CdrOutputStream dst,boolean serialize_encapsulation,
    short final_encapsulation_id, boolean serialize_sample, Object endpoint_plugin_qos) {
        int position = 0;
        int dheaderPosition = -1;
        boolean inBaseClass_tmp = false;
        inBaseClass_tmp =  dst.inBaseClass;
        dst.inBaseClass = false;

        if(serialize_encapsulation) {
            dst.serializeAndSetCdrEncapsulation(final_encapsulation_id, ExtensibilityKind.EXTENSIBLE_EXTENSIBILITY);
            position = dst.resetAlignment();
        }

        if(serialize_sample) {
            boolean xcdr1 = (final_encapsulation_id <= CdrEncapsulation.CDR_ENCAPSULATION_ID_PL_CDR_LE)? true: false;

            if (!inBaseClass_tmp && !xcdr1) {
                dheaderPosition=dst.writeDHeader();
            }
            TeachTrocar typedSrc = (TeachTrocar) src;

            dst.writeBoolean(typedSrc.isActive);
            if(!xcdr1){            
                if (dheaderPosition != -1) {
                    dst.setDHeader(dheaderPosition);
                }

            }
        }

        if (serialize_encapsulation) {
            dst.restoreAlignment(position);
        }
    }

    public long serialize_to_cdr_buffer(
        byte[] buffer,
        long length,
        TeachTrocar src)
    {
        return super.serialize_to_cdr_buffer(buffer,length,src);
    }

    public long serialize_to_cdr_buffer(
        byte[] buffer,
        long length,
        TeachTrocar src,
        short representation)
    {
        return super.serialize_to_cdr_buffer(
            buffer,
            length,
            src,
            representation);
    }
    @Override 
    public void serialize_key(
        Object endpoint_data,
        Object src,
        CdrOutputStream dst,
        boolean serialize_encapsulation,
        short final_encapsulation_id,
        boolean serialize_key,
        Object endpoint_plugin_qos) 
    {
        int position = 0;
        boolean inBaseClass_tmp = false;
        inBaseClass_tmp =  dst.inBaseClass;
        dst.inBaseClass = false;
        if (serialize_encapsulation) {
            dst.serializeAndSetCdrEncapsulation(final_encapsulation_id, ExtensibilityKind.EXTENSIBLE_EXTENSIBILITY);

            position = dst.resetAlignment();
        }

        if (serialize_key) {
            boolean xcdr1 = (final_encapsulation_id <= CdrEncapsulation.CDR_ENCAPSULATION_ID_PL_CDR_LE)? true: false;

            TeachTrocar typedSrc = (TeachTrocar) src;    
            dst.inBaseClass = false;
            serialize(endpoint_data, src, dst, false, final_encapsulation_id, true, endpoint_plugin_qos);

        }

        if (serialize_encapsulation) {
            dst.restoreAlignment(position);
        }
    }

    @Override
    public void serialize_key_for_keyhash(
        Object endpoint_data,
        Object src,
        CdrOutputStream dst,
        boolean serialize_encapsulation,
        short final_encapsulation_id,
        boolean serialize_key,
        Object endpoint_plugin_qos) 
    {
        int position = 0;  
        CdrPrimitiveType _cdrPrimitiveType = CdrPrimitiveType.getInstance(final_encapsulation_id);
        short encapsulation_id = CdrEncapsulation.getEncapsulationFromFinal(
            final_encapsulation_id,
            ExtensibilityKind.EXTENSIBLE_EXTENSIBILITY);
        boolean xcdr1 = (encapsulation_id <= CdrEncapsulation.CDR_ENCAPSULATION_ID_PL_CDR_LE);
        if (xcdr1){
            serialize_key (
                endpoint_data,
                src, 
                dst, 
                serialize_encapsulation, 
                final_encapsulation_id, 
                serialize_key, 
                endpoint_plugin_qos);

        } else {

            if (serialize_encapsulation) {
                dst.serializeAndSetCdrEncapsulation(encapsulation_id);

                position = dst.resetAlignment();
            } else {
                /* We do this to prepare the stream to serialize using xcdr2 if needed
                * as in md5Stream we pass serialize_encapsulation ton false. 
                */
                dst.setEncapsulationKind(final_encapsulation_id);
            }

            if (serialize_key) {
                TeachTrocar typedSrc = (TeachTrocar) src;      
                dst.inBaseClass = false;
                dst.writeBoolean(typedSrc.isActive);
            }

            if (serialize_encapsulation) {
                dst.restoreAlignment(position);
            }
        }
    }

    @Override 
    public Object deserialize_sample(
        Object endpoint_data,
        Object dst, 
        CdrInputStream src, boolean deserialize_encapsulation,
        boolean deserialize_sample,
        Object endpoint_plugin_qos) 
    {
        int position = 0;
        int tmpPosition = 0, tmpSize = 0;
        long tmpLength = 0;
        CdrBuffer buffer = null;
        boolean inBaseClass_tmp = false;
        inBaseClass_tmp =  src.inBaseClass;
        src.inBaseClass = false;

        if(deserialize_encapsulation) {
            src.deserializeAndSetCdrEncapsulation();

            position = src.resetAlignment();
        }

        if(deserialize_sample) {

            short encapsulation_id = src.getEncapsulationKind();
            boolean xcdr1 = (encapsulation_id <= CdrEncapsulation.CDR_ENCAPSULATION_ID_PL_CDR_LE)? true: false;
            if(!xcdr1){
                buffer = src.getBuffer();
            }      
            TeachTrocar typedDst = (TeachTrocar) dst;
            typedDst.clear();      
            int DHtmpPosition = 0;
            int DHtmpSize = 0;
            long DHtmpLength = 0;
            if (!xcdr1 && !inBaseClass_tmp) {
                DHtmpLength = src.readInt();
                DHtmpPosition = buffer.currentPosition();
                DHtmpSize = buffer.getDesBufferSize();
                buffer.setDesBufferSize((int)(DHtmpPosition + DHtmpLength));
            }

            try{
                typedDst.isActive = src.readBoolean();

            } catch (IllegalCdrStateException stateEx) {
                if (src.available() >= CdrEncapsulation.CDR_ENCAPSULATION_PARAMETER_ID_ALIGNMENT) {
                    throw new RETCODE_ERROR("Error deserializing sample! Remainder: " + src.available() + "\n" +
                    "Exception caused by: " + stateEx.getMessage());
                }
            } catch (Exception ex) {
                throw new RETCODE_ERROR(ex.getMessage());        
            }
            if (!xcdr1 && !inBaseClass_tmp ) {
                buffer.restore(DHtmpSize, (int) (DHtmpPosition + DHtmpLength));
            }
        }
        if (deserialize_encapsulation) {
            src.restoreAlignment(position);
        }

        return dst;
    }

    public void deserialize_from_cdr_buffer(
        TeachTrocar dst,
        byte[] buffer,
        long length) 
    {
        super.deserialize_from_cdr_buffer(dst,buffer,length);
    }

    public String data_to_string(
        TeachTrocar sample,
        PrintFormatProperty property) 
    {
        return super.data_to_string(sample, property);
    }

    public String data_to_string(
        TeachTrocar sample) 
    {
        return super.data_to_string(sample);
    }

    @Override 
    public Object deserialize_key_sample(
        Object endpoint_data,
        Object dst,
        CdrInputStream src,
        boolean deserialize_encapsulation,
        boolean deserialize_key,
        Object endpoint_plugin_qos) 
    {
        int position = 0;
        int tmpPosition = 0, tmpSize = 0;
        long tmpLength = 0;
        CdrBuffer buffer = null;        

        boolean inBaseClass_tmp = false;
        inBaseClass_tmp =  src.inBaseClass;
        src.inBaseClass = false;
        if(deserialize_encapsulation) {
            src.deserializeAndSetCdrEncapsulation();

            position = src.resetAlignment();
        }

        if(deserialize_key) {
            short encapsulation_id = src.getEncapsulationKind();
            boolean xcdr1 = (encapsulation_id <= CdrEncapsulation.CDR_ENCAPSULATION_ID_PL_CDR_LE)? true: false;
            if(!xcdr1){
                buffer = src.getBuffer();
            }      
            TeachTrocar typedDst = (TeachTrocar) dst;

            deserialize_sample(endpoint_data, dst, src, false, true, endpoint_plugin_qos);
        }
        if (deserialize_encapsulation) {
            src.restoreAlignment(position);
        }

        return dst;
    }

    @Override 
    public void skip(Object endpoint_data, 
    CdrInputStream src,
    boolean skip_encapsulation, 
    boolean skip_sample, 
    Object endpoint_plugin_qos)
    {
        int position = 0;
        int tmpPosition = 0, tmpSize = 0;
        long tmpLength = 0;
        CdrBuffer buffer = null;        

        boolean inBaseClass_tmp = false;
        inBaseClass_tmp =  src.inBaseClass;
        src.inBaseClass = false;
        if (skip_encapsulation) {
            src.skipEncapsulation();

            position = src.resetAlignment();
        }

        if (skip_sample) {
            short encapsulation_id = src.getEncapsulationKind(); 
            boolean xcdr1 = (encapsulation_id <= CdrEncapsulation.CDR_ENCAPSULATION_ID_PL_CDR_LE)? true: false;
            if(!xcdr1){
                buffer = src.getBuffer();
            }      
            int DHtmpPosition = 0;
            long DHtmpLength = 0;
            if (!xcdr1 && !inBaseClass_tmp) {
                DHtmpLength = src.readInt();
                DHtmpPosition = buffer.currentPosition();
                buffer.setCurrentPosition((int) (DHtmpPosition + DHtmpLength));
                if (skip_encapsulation) {
                    src.restoreAlignment(position);
                }
                return;
            }        

            src.skipBoolean();

        }

        if (skip_encapsulation) {
            src.restoreAlignment(position);
        }
    }

    @Override 
    public Object serialized_sample_to_key(
        Object endpoint_data,
        Object sample,
        CdrInputStream src, 
        boolean deserialize_encapsulation,  
        boolean deserialize_key, 
        Object endpoint_plugin_qos) 
    {

        int position = 0;
        int tmpPosition = 0, tmpSize = 0;
        long tmpLength = 0;
        CdrBuffer buffer = null;     

        boolean inBaseClass_tmp = false;
        inBaseClass_tmp =  src.inBaseClass;
        src.inBaseClass = false;
        if(deserialize_encapsulation) {
            src.deserializeAndSetCdrEncapsulation();

            position = src.resetAlignment();
        }

        if (deserialize_key) {

            short encapsulation_id = src.getEncapsulationKind();
            boolean xcdr1 = (encapsulation_id <= CdrEncapsulation.CDR_ENCAPSULATION_ID_PL_CDR_LE)? true: false;
            if(!xcdr1){
                buffer = src.getBuffer();
            }      
            TeachTrocar typedDst = (TeachTrocar) sample;
            deserialize_sample(
                endpoint_data, sample, src, false,
                true, endpoint_plugin_qos);

        }

        if (deserialize_encapsulation) {
            src.restoreAlignment(position);
        }

        return sample;
    }

    // -----------------------------------------------------------------------
    // Callbacks
    // -----------------------------------------------------------------------
    public Object on_participant_attached(Object registration_data,
    TypeSupportParticipantInfo participant_info,
    boolean top_level_registration,
    Object container_plugin_context,
    TypeCode type_code) {
        return super.on_participant_attached(
            registration_data, participant_info, top_level_registration,
            container_plugin_context, type_code);
    }

    public void on_participant_detached(Object participant_data) {
        super.on_participant_detached(participant_data);
    }

    public Object on_endpoint_attached(Object participantData,
    TypeSupportEndpointInfo endpoint_info,
    boolean top_level_registration,
    Object container_plugin_context) {
        return super.on_endpoint_attached(
            participantData,  endpoint_info,  
            top_level_registration, container_plugin_context);        
    }

    public void on_endpoint_detached(Object endpoint_data) {
        super.on_endpoint_detached(endpoint_data);
    }
    // -----------------------------------------------------------------------
    // Protected Methods
    // -----------------------------------------------------------------------

    protected DataWriter create_datawriter(long native_writer,
    DataWriterListener listener,
    int mask) {
        return new TeachTrocarDataWriter (native_writer, listener, mask, this);            
    }

    protected DataReader create_datareader(long native_reader,
    DataReaderListener listener,
    int mask) {

        return new TeachTrocarDataReader(native_reader, listener, mask, this);   

    }

    // -----------------------------------------------------------------------
    // Constructor
    // -----------------------------------------------------------------------

    protected TeachTrocarTypeSupport() {

        /* If the user data type supports keys, then the second argument
        to the constructor below should be true.  Otherwise it should
        be false. */        

        super(TYPE_NAME, false, TeachTrocarTypeCode.VALUE, TeachTrocar.class,TypeSupportType.TST_STRUCT, PLUGIN_VERSION);

    }

    protected TeachTrocarTypeSupport (boolean enableKeySupport) {

        super(TYPE_NAME, enableKeySupport, TeachTrocarTypeCode.VALUE, TeachTrocar.class,TypeSupportType.TST_STRUCT, PLUGIN_VERSION);
    }
}


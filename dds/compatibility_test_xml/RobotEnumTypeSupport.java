
/*
WARNING: THIS FILE IS AUTO-GENERATED. DO NOT MODIFY.

This file was generated from .idl using "rtiddsgen".
The rtiddsgen tool is part of the RTI Connext distribution.
For more information, type 'rtiddsgen -help' at a command shell
or consult the RTI Connext manual.
*/

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
import com.rti.dds.topic.SampleAssignabilityProperty;
import com.rti.dds.infrastructure.*;
import com.rti.dds.infrastructure.RETCODE_ERROR;
import com.rti.dds.topic.PrintFormatProperty;
import com.rti.dds.typecode.TypeCode;
import com.rti.dds.typecode.ExtensibilityKind;

/**
* A collection of useful methods for dealing with objects of type
* RobotEnum
*/

public class RobotEnumTypeSupport extends TypeSupportImpl {
    // -----------------------------------------------------------------------
    // Private Fields
    // -----------------------------------------------------------------------

    private static final String TYPE_NAME = "RobotEnum";

    private static final char[] PLUGIN_VERSION = {2, 0, 0, 0};     
    private static final RobotEnumTypeSupport _singleton
    = new RobotEnumTypeSupport();

    // -----------------------------------------------------------------------
    // Public Methods
    // -----------------------------------------------------------------------

    // --- External methods: -------------------------------------------------
    /* The methods in this section are for use by users of RTI Connext
    */

    public static String get_type_name() {
        return _singleton.get_type_nameI();
    }

    /* The methods in this section are for use by RTI Connext
    * itself and by the code generated by rtiddsgen for other types.
    * They should be used directly or modified only by advanced users and are
    * subject to change in future versions of RTI Connext.
    */
    public static RobotEnumTypeSupport get_instance() {
        return _singleton;
    }

    public static RobotEnumTypeSupport getInstance() {
        return get_instance();
    }

    public static TypeCode getTypeCode(){
        return RobotEnumTypeCode.VALUE;
    }

    @Override
    public Object create_data() {
        return null;
    }

    @Override
    public void destroy_data(Object data) {
        return;
    }

    @Override
    public Class<?> get_type() {
        return RobotEnum.class;
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
    * <code>this</code> is not a <code>RobotEnum</code>
    * type.
    */
    @Override 
    public Object copy_data(Object destination, Object source) {

        return source;

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

        currentAlignment += _cdrPrimitiveType.getIntMaxSizeSerialized(currentAlignment);
        if (include_encapsulation) {
            currentAlignment += encapsulation_size;
        }
        return  currentAlignment - origAlignment;
    }

    @Override 
    public long get_serialized_sample_min_size(Object endpoint_data,boolean include_encapsulation,short final_encapsulation_id,long currentAlignment) {
        return get_serialized_sample_max_size(endpoint_data,include_encapsulation,final_encapsulation_id,currentAlignment);
    }

    @Override
    public long get_serialized_sample_size(
        Object endpoint_data, boolean include_encapsulation, 
        short final_encapsulation_id, long currentAlignment,
        Object sample) 
    {

        long initial_alignment = currentAlignment;

        currentAlignment += get_serialized_sample_max_size(
            endpoint_data,
            include_encapsulation,
            final_encapsulation_id, 
            ((DefaultEndpointData) endpoint_data).getAlignment(currentAlignment)); 

        return currentAlignment - initial_alignment;
    }

    @Override 
    public long get_serialized_key_max_size(
        Object endpoint_data,
        boolean include_encapsulation, 
        short final_encapsulation_id,
        long currentAlignment) 
    {
        return get_serialized_sample_max_size(endpoint_data,include_encapsulation,final_encapsulation_id, currentAlignment);
    }

    @Override 
    public long get_serialized_key_for_keyhash_max_size(
        Object endpoint_data,
        boolean include_encapsulation, 
        short final_encapsulation_id,
        long currentAlignment) 
    {

        return get_serialized_sample_max_size(endpoint_data,include_encapsulation,final_encapsulation_id, currentAlignment);
    }

    public void serialize(Object endpoint_data,Object src, CdrOutputStream dst,boolean serialize_encapsulation,
    short final_encapsulation_id, boolean serialize_sample, Object endpoint_plugin_qos) {
        int position = 0;
        RobotEnum typedSrc = (RobotEnum) src;
        boolean inBaseClass_tmp = false;
        inBaseClass_tmp =  dst.inBaseClass;
        dst.inBaseClass = false;

        if(serialize_encapsulation) {
            dst.serializeAndSetCdrEncapsulation(final_encapsulation_id, ExtensibilityKind.EXTENSIBLE_EXTENSIBILITY);
            position = dst.resetAlignment();
        }

        if(serialize_sample) {
            boolean xcdr1 = (final_encapsulation_id <= CdrEncapsulation.CDR_ENCAPSULATION_ID_PL_CDR_LE)? true: false;

            dst.writeInt(typedSrc.ordinal());
        }

        if (serialize_encapsulation) {
            dst.restoreAlignment(position);
        }
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
        serialize(endpoint_data, src, dst, serialize_encapsulation, final_encapsulation_id, serialize_key, endpoint_plugin_qos);    
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
        serialize(endpoint_data, src, dst, serialize_encapsulation, final_encapsulation_id, serialize_key, endpoint_plugin_qos);    
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

        if(deserialize_encapsulation) {
            src.deserializeAndSetCdrEncapsulation();

            position = src.resetAlignment();
        }

        if(deserialize_sample) {

            short encapsulation_id = src.getEncapsulationKind();
            boolean xcdr1 = (encapsulation_id <= CdrEncapsulation.CDR_ENCAPSULATION_ID_PL_CDR_LE)? true: false;
            int ordinal = src.readInt();
            dst = RobotEnum.valueOf(ordinal);
            if (dst == null) {

                if (endpoint_data == null ||
                ((DefaultEndpointData)endpoint_data).getSampleAssignabilityProperty().acceptUnknownEnumValue) {
                    dst = RobotEnum.valueOf(
                        0);
                } else {
                    throw new IllegalArgumentException(
                        "invalid enumerator " + ordinal);
                }
            }
        }
        if (deserialize_encapsulation) {
            src.restoreAlignment(position);
        }

        return dst;
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
        return deserialize_sample(endpoint_data, dst, src, deserialize_encapsulation, deserialize_key, endpoint_plugin_qos);
    }

    @Override 
    public void skip(Object endpoint_data, 
    CdrInputStream src,
    boolean skip_encapsulation, 
    boolean skip_sample, 
    Object endpoint_plugin_qos)
    {
        int position = 0;
        if (skip_encapsulation) {
            src.skipEncapsulation();

            position = src.resetAlignment();
        }

        if (skip_sample) {
            short encapsulation_id = src.getEncapsulationKind(); 
            boolean xcdr1 = (encapsulation_id <= CdrEncapsulation.CDR_ENCAPSULATION_ID_PL_CDR_LE)? true: false;

            src.skipInt();
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

        return deserialize_sample(
            endpoint_data,sample,src,deserialize_encapsulation,deserialize_key,
            endpoint_plugin_qos);
    }

    // -----------------------------------------------------------------------
    // Callbacks
    // -----------------------------------------------------------------------
    // -----------------------------------------------------------------------
    // Protected Methods
    // -----------------------------------------------------------------------

    protected DataWriter create_datawriter(long native_writer,
    DataWriterListener listener,
    int mask) {
        return null;

    }

    protected DataReader create_datareader(long native_reader,
    DataReaderListener listener,
    int mask) {

        return null;

    }

    // -----------------------------------------------------------------------
    // Constructor
    // -----------------------------------------------------------------------

    protected RobotEnumTypeSupport() {

        /* If the user data type supports keys, then the second argument
        to the constructor below should be true.  Otherwise it should
        be false. */        

        super(TYPE_NAME, false, RobotEnumTypeCode.VALUE, RobotEnum.class,TypeSupportType.TST_ENUM, PLUGIN_VERSION);

    }

}


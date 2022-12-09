
/*
WARNING: THIS FILE IS AUTO-GENERATED. DO NOT MODIFY.

This file was generated from .idl using "rtiddsgen".
The rtiddsgen tool is part of the RTI Connext distribution.
For more information, type 'rtiddsgen -help' at a command shell
or consult the RTI Connext manual.
*/

import com.rti.dds.typecode.*;

public class  TCPExternalTorqueTypeCode {
    public static final TypeCode VALUE = getTypeCode();

    private static TypeCode getTypeCode() {
        TypeCode tc = null;
        int __i=0;
        StructMember sm[]=new StructMember[2];
        Annotations memberAnnotation;

        sm[__i] = new  StructMember("torque", false, (short)-1,  false, new TypeCode(new int[] {3}, TypeCode.TC_DOUBLE), 0, false);__i++;
        sm[__i] = new  StructMember("inaccuracy", false, (short)-1,  false, new TypeCode(new int[] {3}, TypeCode.TC_DOUBLE), 1, false);__i++;

        Annotations annotation = new Annotations();
        annotation.allowed_data_representation_mask(5);

        tc = TypeCodeFactory.TheTypeCodeFactory.create_struct_tc("TCPExternalTorque",ExtensibilityKind.EXTENSIBLE_EXTENSIBILITY,  sm , annotation);        
        return tc;
    }
}


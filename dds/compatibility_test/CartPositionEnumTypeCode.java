
/*
WARNING: THIS FILE IS AUTO-GENERATED. DO NOT MODIFY.

This file was generated from .idl using "rtiddsgen".
The rtiddsgen tool is part of the RTI Connext distribution.
For more information, type 'rtiddsgen -help' at a command shell
or consult the RTI Connext manual.
*/

import com.rti.dds.typecode.*;

public class  CartPositionEnumTypeCode {
    public static final TypeCode VALUE = getTypeCode();

    private static TypeCode getTypeCode() {
        TypeCode tc = null;
        Annotations memberAnnotation;
        int i=0;
        EnumMember em[] = new EnumMember[6];

        int[] ordinals = CartPositionEnum.getOrdinals();
        for (i=0;i<6;i++) {
            em[i]=new EnumMember(CartPositionEnum.valueOf(ordinals[i]).toString(),ordinals[i]);
        }

        Annotations annotation = new Annotations();
        annotation.allowed_data_representation_mask(5);

        annotation.default_annotation(AnnotationParameterValue.ZERO_ENUM);
        tc = TypeCodeFactory.TheTypeCodeFactory.create_enum_tc("CartPositionEnum",ExtensibilityKind.EXTENSIBLE_EXTENSIBILITY,  em , annotation);        
        return tc;
    }
}


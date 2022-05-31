
/*
WARNING: THIS FILE IS AUTO-GENERATED. DO NOT MODIFY.

This file was generated from .idl 
using RTI Code Generator (rtiddsgen) version 3.1.0.
The rtiddsgen tool is part of the RTI Connext DDS distribution.
For more information, type 'rtiddsgen -help' at a command shell
or consult the Code Generator User's Manual.
*/

import com.rti.dds.typecode.*;

public class  ShapeTypeExtendedTypeCode {
    public static final TypeCode VALUE = getTypeCode();

    private static TypeCode getTypeCode() {
        TypeCode tc = null;
        int __i=0;
        ValueMember sm[]=new ValueMember[2];
        Annotations memberAnnotation;

        memberAnnotation = new Annotations();
        memberAnnotation.default_annotation(new AnnotationParameterValue(TCKind.TK_LONG, (int) (0)));
        memberAnnotation.min_annotation(AnnotationParameterValue.MIN_LONG);
        memberAnnotation.max_annotation(AnnotationParameterValue.MAX_LONG);
        sm[__i] = new  ValueMember("fillKind", false, (short)-1,  false,PUBLIC_MEMBER.VALUE, ShapeFillKindTypeCode.VALUE, 4, false, memberAnnotation);__i++;
        memberAnnotation = new Annotations();
        memberAnnotation.default_annotation(AnnotationParameterValue.ZERO_FLOAT);
        memberAnnotation.min_annotation(AnnotationParameterValue.MIN_FLOAT);
        memberAnnotation.max_annotation(AnnotationParameterValue.MAX_FLOAT);
        sm[__i] = new  ValueMember("angle", false, (short)-1,  false,PUBLIC_MEMBER.VALUE, TypeCode.TC_FLOAT, 5, false, memberAnnotation);__i++;

        Annotations annotation = new Annotations();
        annotation.allowed_data_representation_mask(5);

        tc = TypeCodeFactory.TheTypeCodeFactory.create_value_tc("ShapeTypeExtended",ExtensibilityKind.EXTENSIBLE_EXTENSIBILITY, VM_NONE.VALUE,ShapeTypeTypeCode.VALUE, sm , annotation);        
        return tc;
    }
}


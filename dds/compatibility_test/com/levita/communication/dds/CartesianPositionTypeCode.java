
/*
WARNING: THIS FILE IS AUTO-GENERATED. DO NOT MODIFY.

This file was generated from .idl using "rtiddsgen".
The rtiddsgen tool is part of the RTI Connext distribution.
For more information, type 'rtiddsgen -help' at a command shell
or consult the RTI Connext manual.
*/

package com.levita.communication.dds;

import com.rti.dds.typecode.*;

public class  CartesianPositionTypeCode {
    public static final TypeCode VALUE = getTypeCode();

    private static TypeCode getTypeCode() {
        TypeCode tc = null;
        int __i=0;
        StructMember sm[]=new StructMember[7];
        Annotations memberAnnotation;

        sm[__i] = new  StructMember("coordinate", false, (short)-1,  false, new TypeCode(new int[] {3}, TypeCode.TC_DOUBLE), 0, false);__i++;
        memberAnnotation = new Annotations();
        memberAnnotation.default_annotation(AnnotationParameterValue.ZERO_DOUBLE);
        memberAnnotation.min_annotation(AnnotationParameterValue.MIN_DOUBLE);
        memberAnnotation.max_annotation(AnnotationParameterValue.MAX_DOUBLE);
        sm[__i] = new  StructMember("A", false, (short)-1,  false, TypeCode.TC_DOUBLE, 1, false, memberAnnotation);__i++;
        memberAnnotation = new Annotations();
        memberAnnotation.default_annotation(AnnotationParameterValue.ZERO_DOUBLE);
        memberAnnotation.min_annotation(AnnotationParameterValue.MIN_DOUBLE);
        memberAnnotation.max_annotation(AnnotationParameterValue.MAX_DOUBLE);
        sm[__i] = new  StructMember("B", false, (short)-1,  false, TypeCode.TC_DOUBLE, 2, false, memberAnnotation);__i++;
        memberAnnotation = new Annotations();
        memberAnnotation.default_annotation(AnnotationParameterValue.ZERO_DOUBLE);
        memberAnnotation.min_annotation(AnnotationParameterValue.MIN_DOUBLE);
        memberAnnotation.max_annotation(AnnotationParameterValue.MAX_DOUBLE);
        sm[__i] = new  StructMember("C", false, (short)-1,  false, TypeCode.TC_DOUBLE, 3, false, memberAnnotation);__i++;
        memberAnnotation = new Annotations();
        memberAnnotation.default_annotation(AnnotationParameterValue.ZERO_DOUBLE);
        memberAnnotation.min_annotation(AnnotationParameterValue.MIN_DOUBLE);
        memberAnnotation.max_annotation(AnnotationParameterValue.MAX_DOUBLE);
        sm[__i] = new  StructMember("turn", false, (short)-1,  false, TypeCode.TC_DOUBLE, 4, false, memberAnnotation);__i++;
        memberAnnotation = new Annotations();
        memberAnnotation.default_annotation(AnnotationParameterValue.ZERO_DOUBLE);
        memberAnnotation.min_annotation(AnnotationParameterValue.MIN_DOUBLE);
        memberAnnotation.max_annotation(AnnotationParameterValue.MAX_DOUBLE);
        sm[__i] = new  StructMember("redundancyAngle", false, (short)-1,  false, TypeCode.TC_DOUBLE, 5, false, memberAnnotation);__i++;
        memberAnnotation = new Annotations();
        memberAnnotation.default_annotation(AnnotationParameterValue.ZERO_ULONG);
        memberAnnotation.min_annotation(AnnotationParameterValue.MIN_ULONG);
        memberAnnotation.max_annotation(AnnotationParameterValue.MAX_ULONG);
        sm[__i] = new  StructMember("status", false, (short)-1,  false, TypeCode.TC_ULONG, 6, false, memberAnnotation);__i++;

        Annotations annotation = new Annotations();
        annotation.allowed_data_representation_mask(5);

        tc = TypeCodeFactory.TheTypeCodeFactory.create_struct_tc("com::levita::communication::dds::CartesianPosition",ExtensibilityKind.EXTENSIBLE_EXTENSIBILITY,  sm , annotation);        
        return tc;
    }
}


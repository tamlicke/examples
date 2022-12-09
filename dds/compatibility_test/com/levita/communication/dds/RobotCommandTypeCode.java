
/*
WARNING: THIS FILE IS AUTO-GENERATED. DO NOT MODIFY.

This file was generated from .idl using "rtiddsgen".
The rtiddsgen tool is part of the RTI Connext distribution.
For more information, type 'rtiddsgen -help' at a command shell
or consult the RTI Connext manual.
*/

package com.levita.communication.dds;

import com.rti.dds.typecode.*;

public class  RobotCommandTypeCode {
    public static final TypeCode VALUE = getTypeCode();

    private static TypeCode getTypeCode() {
        TypeCode tc = null;
        int __i=0;
        StructMember sm[]=new StructMember[4];
        Annotations memberAnnotation;

        memberAnnotation = new Annotations();
        memberAnnotation.default_annotation(new AnnotationParameterValue(TCKind.TK_LONG, (int)0));
        memberAnnotation.min_annotation(AnnotationParameterValue.MIN_LONG);
        memberAnnotation.max_annotation(AnnotationParameterValue.MAX_LONG);
        sm[__i] = new  StructMember("robot", false, (short)-1,  false, com.levita.communication.dds.RobotEnumTypeCode.VALUE, 0, false, memberAnnotation);__i++;
        memberAnnotation = new Annotations();
        memberAnnotation.default_annotation(new AnnotationParameterValue(TCKind.TK_LONG, (int)0));
        memberAnnotation.min_annotation(AnnotationParameterValue.MIN_LONG);
        memberAnnotation.max_annotation(AnnotationParameterValue.MAX_LONG);
        sm[__i] = new  StructMember("command", false, (short)-1,  false, com.levita.communication.dds.RobotCommandEnumTypeCode.VALUE, 1, false, memberAnnotation);__i++;
        memberAnnotation = new Annotations();
        memberAnnotation.default_annotation(new AnnotationParameterValue(TCKind.TK_LONG, (int)0));
        memberAnnotation.min_annotation(AnnotationParameterValue.MIN_LONG);
        memberAnnotation.max_annotation(AnnotationParameterValue.MAX_LONG);
        sm[__i] = new  StructMember("position", false, (short)-1,  false, com.levita.communication.dds.PositionEnumTypeCode.VALUE, 2, false, memberAnnotation);__i++;
        sm[__i] = new  StructMember("trocar_frame", false, (short)-1,  false, com.levita.communication.dds.TrocarFrameTypeCode.VALUE, 3, false);__i++;

        Annotations annotation = new Annotations();
        annotation.allowed_data_representation_mask(5);

        tc = TypeCodeFactory.TheTypeCodeFactory.create_struct_tc("com::levita::communication::dds::RobotCommand",ExtensibilityKind.EXTENSIBLE_EXTENSIBILITY,  sm , annotation);        
        return tc;
    }
}


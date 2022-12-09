
/*
WARNING: THIS FILE IS AUTO-GENERATED. DO NOT MODIFY.

This file was generated from .idl using "rtiddsgen".
The rtiddsgen tool is part of the RTI Connext distribution.
For more information, type 'rtiddsgen -help' at a command shell
or consult the RTI Connext manual.
*/

import com.rti.dds.typecode.*;

public class  ProcedureDetailTypeCode {
    public static final TypeCode VALUE = getTypeCode();

    private static TypeCode getTypeCode() {
        TypeCode tc = null;
        int __i=0;
        StructMember sm[]=new StructMember[6];
        Annotations memberAnnotation;

        memberAnnotation = new Annotations();
        memberAnnotation.default_annotation(AnnotationParameterValue.EMPTY_STRING);
        sm[__i] = new  StructMember("surgeon", false, (short)-1,  false, new TypeCode(TCKind.TK_STRING,128), 0, false, memberAnnotation);__i++;
        memberAnnotation = new Annotations();
        memberAnnotation.default_annotation(AnnotationParameterValue.EMPTY_STRING);
        sm[__i] = new  StructMember("procedure", false, (short)-1,  false, new TypeCode(TCKind.TK_STRING,128), 1, false, memberAnnotation);__i++;
        memberAnnotation = new Annotations();
        memberAnnotation.default_annotation(AnnotationParameterValue.ZERO_DOUBLE);
        memberAnnotation.min_annotation(AnnotationParameterValue.MIN_DOUBLE);
        memberAnnotation.max_annotation(AnnotationParameterValue.MAX_DOUBLE);
        sm[__i] = new  StructMember("scope_length", false, (short)-1,  false, TypeCode.TC_DOUBLE, 2, false, memberAnnotation);__i++;
        memberAnnotation = new Annotations();
        memberAnnotation.default_annotation(new AnnotationParameterValue(TCKind.TK_LONG, (int)0));
        memberAnnotation.min_annotation(AnnotationParameterValue.MIN_LONG);
        memberAnnotation.max_annotation(AnnotationParameterValue.MAX_LONG);
        sm[__i] = new  StructMember("scope_position", false, (short)-1,  false, CartPositionEnumTypeCode.VALUE, 3, false, memberAnnotation);__i++;
        memberAnnotation = new Annotations();
        memberAnnotation.default_annotation(new AnnotationParameterValue(TCKind.TK_LONG, (int)0));
        memberAnnotation.min_annotation(AnnotationParameterValue.MIN_LONG);
        memberAnnotation.max_annotation(AnnotationParameterValue.MAX_LONG);
        sm[__i] = new  StructMember("magnet_position", false, (short)-1,  false, CartPositionEnumTypeCode.VALUE, 4, false, memberAnnotation);__i++;
        memberAnnotation = new Annotations();
        memberAnnotation.default_annotation(new AnnotationParameterValue(TCKind.TK_LONG, (int)0));
        memberAnnotation.min_annotation(AnnotationParameterValue.MIN_LONG);
        memberAnnotation.max_annotation(AnnotationParameterValue.MAX_LONG);
        sm[__i] = new  StructMember("foot_controller_position", false, (short)-1,  false, FootControllerPositionEnumTypeCode.VALUE, 5, false, memberAnnotation);__i++;

        Annotations annotation = new Annotations();
        annotation.allowed_data_representation_mask(5);

        tc = TypeCodeFactory.TheTypeCodeFactory.create_struct_tc("ProcedureDetail",ExtensibilityKind.EXTENSIBLE_EXTENSIBILITY,  sm , annotation);        
        return tc;
    }
}




/*
WARNING: THIS FILE IS AUTO-GENERATED. DO NOT MODIFY.

This file was generated from .idl using "rtiddsgen".
The rtiddsgen tool is part of the RTI Connext distribution.
For more information, type 'rtiddsgen -help' at a command shell
or consult the RTI Connext manual.
*/

package com.levita.communication.dds;

import com.rti.dds.util.Enum;
import com.rti.dds.cdr.CdrHelper;
import java.util.Arrays;
import java.io.ObjectStreamException;

public class FootControllerPositionEnum  extends Enum {

    public static final FootControllerPositionEnum UNDEFINED = new FootControllerPositionEnum("UNDEFINED", 0);
    public static final int _UNDEFINED = 0;
    public static final FootControllerPositionEnum HEAD = new FootControllerPositionEnum("HEAD", 1);
    public static final int _HEAD = 1;
    public static final FootControllerPositionEnum FOOT = new FootControllerPositionEnum("FOOT", 2);
    public static final int _FOOT = 2;
    public static final FootControllerPositionEnum MAX_FOOT_CONTROLLER_POSITIONS = new FootControllerPositionEnum("MAX_FOOT_CONTROLLER_POSITIONS", 3);
    public static final int _MAX_FOOT_CONTROLLER_POSITIONS = 3;
    public static FootControllerPositionEnum valueOf(int ordinal) {
        switch(ordinal) {

            case 0: return FootControllerPositionEnum.UNDEFINED;
            case 1: return FootControllerPositionEnum.HEAD;
            case 2: return FootControllerPositionEnum.FOOT;
            case 3: return FootControllerPositionEnum.MAX_FOOT_CONTROLLER_POSITIONS;

        }
        return null;
    }

    public static FootControllerPositionEnum from_int(int __value) {
        return valueOf(__value);
    }

    public static int[] getOrdinals() {
        int i = 0;
        int[] values = new int[4];

        values[i] = UNDEFINED.ordinal();
        i++;
        values[i] = HEAD.ordinal();
        i++;
        values[i] = FOOT.ordinal();
        i++;
        values[i] = MAX_FOOT_CONTROLLER_POSITIONS.ordinal();
        i++;

        return values;
    }

    public int value() {
        return super.ordinal();
    }

    /**
    * Create a default instance
    */  
    public static FootControllerPositionEnum create() {

        return valueOf(0);
    }

    /**
    * Print Method
    */     
    public String toString(String desc, int indent) {
        StringBuffer strBuffer = new StringBuffer();

        CdrHelper.printIndent(strBuffer, indent);

        if (desc != null) {
            strBuffer.append(desc).append(": ");
        }

        strBuffer.append(this);
        strBuffer.append("\n");              
        return strBuffer.toString();
    }

    private Object readResolve() throws ObjectStreamException {
        return valueOf(ordinal());
    }

    private FootControllerPositionEnum(String name, int ordinal) {
        super(name, ordinal);
    }
}


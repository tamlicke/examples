

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

public class CoordinateEnum  extends Enum {

    public static final CoordinateEnum X_COORDINATE = new CoordinateEnum("X_COORDINATE", 0);
    public static final int _X_COORDINATE = 0;
    public static final CoordinateEnum Y_COORDINATE = new CoordinateEnum("Y_COORDINATE", 1);
    public static final int _Y_COORDINATE = 1;
    public static final CoordinateEnum Z_COORDINATE = new CoordinateEnum("Z_COORDINATE", 2);
    public static final int _Z_COORDINATE = 2;
    public static final CoordinateEnum MAX_COORDINATE_IDS = new CoordinateEnum("MAX_COORDINATE_IDS", 3);
    public static final int _MAX_COORDINATE_IDS = 3;
    public static CoordinateEnum valueOf(int ordinal) {
        switch(ordinal) {

            case 0: return CoordinateEnum.X_COORDINATE;
            case 1: return CoordinateEnum.Y_COORDINATE;
            case 2: return CoordinateEnum.Z_COORDINATE;
            case 3: return CoordinateEnum.MAX_COORDINATE_IDS;

        }
        return null;
    }

    public static CoordinateEnum from_int(int __value) {
        return valueOf(__value);
    }

    public static int[] getOrdinals() {
        int i = 0;
        int[] values = new int[4];

        values[i] = X_COORDINATE.ordinal();
        i++;
        values[i] = Y_COORDINATE.ordinal();
        i++;
        values[i] = Z_COORDINATE.ordinal();
        i++;
        values[i] = MAX_COORDINATE_IDS.ordinal();
        i++;

        return values;
    }

    public int value() {
        return super.ordinal();
    }

    /**
    * Create a default instance
    */  
    public static CoordinateEnum create() {

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

    private CoordinateEnum(String name, int ordinal) {
        super(name, ordinal);
    }
}


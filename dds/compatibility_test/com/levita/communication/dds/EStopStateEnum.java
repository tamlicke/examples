

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

public class EStopStateEnum  extends Enum {

    public static final EStopStateEnum ACTIVE = new EStopStateEnum("ACTIVE", 0);
    public static final int _ACTIVE = 0;
    public static final EStopStateEnum INACTIVE = new EStopStateEnum("INACTIVE", 1);
    public static final int _INACTIVE = 1;
    public static EStopStateEnum valueOf(int ordinal) {
        switch(ordinal) {

            case 0: return EStopStateEnum.ACTIVE;
            case 1: return EStopStateEnum.INACTIVE;

        }
        return null;
    }

    public static EStopStateEnum from_int(int __value) {
        return valueOf(__value);
    }

    public static int[] getOrdinals() {
        int i = 0;
        int[] values = new int[2];

        values[i] = ACTIVE.ordinal();
        i++;
        values[i] = INACTIVE.ordinal();
        i++;

        return values;
    }

    public int value() {
        return super.ordinal();
    }

    /**
    * Create a default instance
    */  
    public static EStopStateEnum create() {

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

    private EStopStateEnum(String name, int ordinal) {
        super(name, ordinal);
    }
}


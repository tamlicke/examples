

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

public class RobotEnum  extends Enum {

    public static final RobotEnum SCOPE = new RobotEnum("SCOPE", 0);
    public static final int _SCOPE = 0;
    public static final RobotEnum MAGNET = new RobotEnum("MAGNET", 1);
    public static final int _MAGNET = 1;
    public static final RobotEnum BOTH = new RobotEnum("BOTH", 2);
    public static final int _BOTH = 2;
    public static RobotEnum valueOf(int ordinal) {
        switch(ordinal) {

            case 0: return RobotEnum.SCOPE;
            case 1: return RobotEnum.MAGNET;
            case 2: return RobotEnum.BOTH;

        }
        return null;
    }

    public static RobotEnum from_int(int __value) {
        return valueOf(__value);
    }

    public static int[] getOrdinals() {
        int i = 0;
        int[] values = new int[3];

        values[i] = SCOPE.ordinal();
        i++;
        values[i] = MAGNET.ordinal();
        i++;
        values[i] = BOTH.ordinal();
        i++;

        return values;
    }

    public int value() {
        return super.ordinal();
    }

    /**
    * Create a default instance
    */  
    public static RobotEnum create() {

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

    private RobotEnum(String name, int ordinal) {
        super(name, ordinal);
    }
}




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

public class LogCommandEnum  extends Enum {

    public static final LogCommandEnum SET_LEVEL = new LogCommandEnum("SET_LEVEL", 0);
    public static final int _SET_LEVEL = 0;
    public static final LogCommandEnum START = new LogCommandEnum("START", 1);
    public static final int _START = 1;
    public static final LogCommandEnum STOP = new LogCommandEnum("STOP", 2);
    public static final int _STOP = 2;
    public static final LogCommandEnum MAX_LOG_COMMANDS = new LogCommandEnum("MAX_LOG_COMMANDS", 3);
    public static final int _MAX_LOG_COMMANDS = 3;
    public static LogCommandEnum valueOf(int ordinal) {
        switch(ordinal) {

            case 0: return LogCommandEnum.SET_LEVEL;
            case 1: return LogCommandEnum.START;
            case 2: return LogCommandEnum.STOP;
            case 3: return LogCommandEnum.MAX_LOG_COMMANDS;

        }
        return null;
    }

    public static LogCommandEnum from_int(int __value) {
        return valueOf(__value);
    }

    public static int[] getOrdinals() {
        int i = 0;
        int[] values = new int[4];

        values[i] = SET_LEVEL.ordinal();
        i++;
        values[i] = START.ordinal();
        i++;
        values[i] = STOP.ordinal();
        i++;
        values[i] = MAX_LOG_COMMANDS.ordinal();
        i++;

        return values;
    }

    public int value() {
        return super.ordinal();
    }

    /**
    * Create a default instance
    */  
    public static LogCommandEnum create() {

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

    private LogCommandEnum(String name, int ordinal) {
        super(name, ordinal);
    }
}


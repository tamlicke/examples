

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

public class DirectionEnum  extends Enum {

    public static final DirectionEnum NONE = new DirectionEnum("NONE", 0);
    public static final int _NONE = 0;
    public static final DirectionEnum UP = new DirectionEnum("UP", 1);
    public static final int _UP = 1;
    public static final DirectionEnum DOWN = new DirectionEnum("DOWN", 2);
    public static final int _DOWN = 2;
    public static final DirectionEnum LEFT = new DirectionEnum("LEFT", 3);
    public static final int _LEFT = 3;
    public static final DirectionEnum RIGHT = new DirectionEnum("RIGHT", 4);
    public static final int _RIGHT = 4;
    public static final DirectionEnum IN = new DirectionEnum("IN", 5);
    public static final int _IN = 5;
    public static final DirectionEnum OUT = new DirectionEnum("OUT", 6);
    public static final int _OUT = 6;
    public static final DirectionEnum MAX_DIRECTIONS = new DirectionEnum("MAX_DIRECTIONS", 7);
    public static final int _MAX_DIRECTIONS = 7;
    public static DirectionEnum valueOf(int ordinal) {
        switch(ordinal) {

            case 0: return DirectionEnum.NONE;
            case 1: return DirectionEnum.UP;
            case 2: return DirectionEnum.DOWN;
            case 3: return DirectionEnum.LEFT;
            case 4: return DirectionEnum.RIGHT;
            case 5: return DirectionEnum.IN;
            case 6: return DirectionEnum.OUT;
            case 7: return DirectionEnum.MAX_DIRECTIONS;

        }
        return null;
    }

    public static DirectionEnum from_int(int __value) {
        return valueOf(__value);
    }

    public static int[] getOrdinals() {
        int i = 0;
        int[] values = new int[8];

        values[i] = NONE.ordinal();
        i++;
        values[i] = UP.ordinal();
        i++;
        values[i] = DOWN.ordinal();
        i++;
        values[i] = LEFT.ordinal();
        i++;
        values[i] = RIGHT.ordinal();
        i++;
        values[i] = IN.ordinal();
        i++;
        values[i] = OUT.ordinal();
        i++;
        values[i] = MAX_DIRECTIONS.ordinal();
        i++;

        return values;
    }

    public int value() {
        return super.ordinal();
    }

    /**
    * Create a default instance
    */  
    public static DirectionEnum create() {

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

    private DirectionEnum(String name, int ordinal) {
        super(name, ordinal);
    }
}


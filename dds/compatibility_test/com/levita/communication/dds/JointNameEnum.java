

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

public class JointNameEnum  extends Enum {

    public static final JointNameEnum JOINT1 = new JointNameEnum("JOINT1", 0);
    public static final int _JOINT1 = 0;
    public static final JointNameEnum JOINT2 = new JointNameEnum("JOINT2", 1);
    public static final int _JOINT2 = 1;
    public static final JointNameEnum JOINT3 = new JointNameEnum("JOINT3", 2);
    public static final int _JOINT3 = 2;
    public static final JointNameEnum JOINT4 = new JointNameEnum("JOINT4", 3);
    public static final int _JOINT4 = 3;
    public static final JointNameEnum JOINT5 = new JointNameEnum("JOINT5", 4);
    public static final int _JOINT5 = 4;
    public static final JointNameEnum JOINT6 = new JointNameEnum("JOINT6", 5);
    public static final int _JOINT6 = 5;
    public static final JointNameEnum JOINT7 = new JointNameEnum("JOINT7", 6);
    public static final int _JOINT7 = 6;
    public static final JointNameEnum MAX_JOINT_NAMES = new JointNameEnum("MAX_JOINT_NAMES", 7);
    public static final int _MAX_JOINT_NAMES = 7;
    public static JointNameEnum valueOf(int ordinal) {
        switch(ordinal) {

            case 0: return JointNameEnum.JOINT1;
            case 1: return JointNameEnum.JOINT2;
            case 2: return JointNameEnum.JOINT3;
            case 3: return JointNameEnum.JOINT4;
            case 4: return JointNameEnum.JOINT5;
            case 5: return JointNameEnum.JOINT6;
            case 6: return JointNameEnum.JOINT7;
            case 7: return JointNameEnum.MAX_JOINT_NAMES;

        }
        return null;
    }

    public static JointNameEnum from_int(int __value) {
        return valueOf(__value);
    }

    public static int[] getOrdinals() {
        int i = 0;
        int[] values = new int[8];

        values[i] = JOINT1.ordinal();
        i++;
        values[i] = JOINT2.ordinal();
        i++;
        values[i] = JOINT3.ordinal();
        i++;
        values[i] = JOINT4.ordinal();
        i++;
        values[i] = JOINT5.ordinal();
        i++;
        values[i] = JOINT6.ordinal();
        i++;
        values[i] = JOINT7.ordinal();
        i++;
        values[i] = MAX_JOINT_NAMES.ordinal();
        i++;

        return values;
    }

    public int value() {
        return super.ordinal();
    }

    /**
    * Create a default instance
    */  
    public static JointNameEnum create() {

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

    private JointNameEnum(String name, int ordinal) {
        super(name, ordinal);
    }
}


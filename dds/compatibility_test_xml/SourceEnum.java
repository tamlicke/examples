

/*
WARNING: THIS FILE IS AUTO-GENERATED. DO NOT MODIFY.

This file was generated from .idl using "rtiddsgen".
The rtiddsgen tool is part of the RTI Connext distribution.
For more information, type 'rtiddsgen -help' at a command shell
or consult the RTI Connext manual.
*/

import com.rti.dds.util.Enum;
import com.rti.dds.cdr.CdrHelper;
import java.util.Arrays;
import java.io.ObjectStreamException;

public class SourceEnum  extends Enum {

    public static final SourceEnum SYSTEM_CONTROLLER = new SourceEnum("SYSTEM_CONTROLLER", 0);
    public static final int _SYSTEM_CONTROLLER = 0;
    public static final SourceEnum AUXILIARY_CONTROLLER = new SourceEnum("AUXILIARY_CONTROLLER", 1);
    public static final int _AUXILIARY_CONTROLLER = 1;
    public static final SourceEnum MAGNET_IO = new SourceEnum("MAGNET_IO", 2);
    public static final int _MAGNET_IO = 2;
    public static final SourceEnum SCOPE_IO = new SourceEnum("SCOPE_IO", 3);
    public static final int _SCOPE_IO = 3;
    public static final SourceEnum MAGNET_ROBOT = new SourceEnum("MAGNET_ROBOT", 4);
    public static final int _MAGNET_ROBOT = 4;
    public static final SourceEnum SCOPE_ROBOT = new SourceEnum("SCOPE_ROBOT", 5);
    public static final int _SCOPE_ROBOT = 5;
    public static final SourceEnum VIDEO_CAPTURE = new SourceEnum("VIDEO_CAPTURE", 6);
    public static final int _VIDEO_CAPTURE = 6;
    public static final SourceEnum MAX_SOURCES = new SourceEnum("MAX_SOURCES", 7);
    public static final int _MAX_SOURCES = 7;
    public static SourceEnum valueOf(int ordinal) {
        switch(ordinal) {

            case 0: return SourceEnum.SYSTEM_CONTROLLER;
            case 1: return SourceEnum.AUXILIARY_CONTROLLER;
            case 2: return SourceEnum.MAGNET_IO;
            case 3: return SourceEnum.SCOPE_IO;
            case 4: return SourceEnum.MAGNET_ROBOT;
            case 5: return SourceEnum.SCOPE_ROBOT;
            case 6: return SourceEnum.VIDEO_CAPTURE;
            case 7: return SourceEnum.MAX_SOURCES;

        }
        return null;
    }

    public static SourceEnum from_int(int __value) {
        return valueOf(__value);
    }

    public static int[] getOrdinals() {
        int i = 0;
        int[] values = new int[8];

        values[i] = SYSTEM_CONTROLLER.ordinal();
        i++;
        values[i] = AUXILIARY_CONTROLLER.ordinal();
        i++;
        values[i] = MAGNET_IO.ordinal();
        i++;
        values[i] = SCOPE_IO.ordinal();
        i++;
        values[i] = MAGNET_ROBOT.ordinal();
        i++;
        values[i] = SCOPE_ROBOT.ordinal();
        i++;
        values[i] = VIDEO_CAPTURE.ordinal();
        i++;
        values[i] = MAX_SOURCES.ordinal();
        i++;

        return values;
    }

    public int value() {
        return super.ordinal();
    }

    /**
    * Create a default instance
    */  
    public static SourceEnum create() {

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

    private SourceEnum(String name, int ordinal) {
        super(name, ordinal);
    }
}


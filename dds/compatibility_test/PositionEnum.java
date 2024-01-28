

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

public class PositionEnum  extends Enum {

    public static final PositionEnum NONE = new PositionEnum("NONE", 0);
    public static final int _NONE = 0;
    public static final PositionEnum CALIBRATION = new PositionEnum("CALIBRATION", 1);
    public static final int _CALIBRATION = 1;
    public static final PositionEnum DRESS = new PositionEnum("DRESS", 2);
    public static final int _DRESS = 2;
    public static final PositionEnum STORAGE = new PositionEnum("STORAGE", 3);
    public static final int _STORAGE = 3;
    public static final PositionEnum MAX_POSITIONS = new PositionEnum("MAX_POSITIONS", 4);
    public static final int _MAX_POSITIONS = 4;
    public static PositionEnum valueOf(int ordinal) {
        switch(ordinal) {

            case 0: return PositionEnum.NONE;
            case 1: return PositionEnum.CALIBRATION;
            case 2: return PositionEnum.DRESS;
            case 3: return PositionEnum.STORAGE;
            case 4: return PositionEnum.MAX_POSITIONS;

        }
        return null;
    }

    public static PositionEnum from_int(int __value) {
        return valueOf(__value);
    }

    public static int[] getOrdinals() {
        int i = 0;
        int[] values = new int[5];

        values[i] = NONE.ordinal();
        i++;
        values[i] = CALIBRATION.ordinal();
        i++;
        values[i] = DRESS.ordinal();
        i++;
        values[i] = STORAGE.ordinal();
        i++;
        values[i] = MAX_POSITIONS.ordinal();
        i++;

        return values;
    }

    public int value() {
        return super.ordinal();
    }

    /**
    * Create a default instance
    */  
    public static PositionEnum create() {

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

    private PositionEnum(String name, int ordinal) {
        super(name, ordinal);
    }
}




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

public class LogLevelEnum  extends Enum {

    public static final LogLevelEnum DEBUG = new LogLevelEnum("DEBUG", 0);
    public static final int _DEBUG = 0;
    public static final LogLevelEnum INFO = new LogLevelEnum("INFO", 1);
    public static final int _INFO = 1;
    public static final LogLevelEnum NOTICE = new LogLevelEnum("NOTICE", 2);
    public static final int _NOTICE = 2;
    public static final LogLevelEnum WARN = new LogLevelEnum("WARN", 3);
    public static final int _WARN = 3;
    public static final LogLevelEnum ERROR = new LogLevelEnum("ERROR", 4);
    public static final int _ERROR = 4;
    public static final LogLevelEnum MAX_LOG_LEVELS = new LogLevelEnum("MAX_LOG_LEVELS", 5);
    public static final int _MAX_LOG_LEVELS = 5;
    public static LogLevelEnum valueOf(int ordinal) {
        switch(ordinal) {

            case 0: return LogLevelEnum.DEBUG;
            case 1: return LogLevelEnum.INFO;
            case 2: return LogLevelEnum.NOTICE;
            case 3: return LogLevelEnum.WARN;
            case 4: return LogLevelEnum.ERROR;
            case 5: return LogLevelEnum.MAX_LOG_LEVELS;

        }
        return null;
    }

    public static LogLevelEnum from_int(int __value) {
        return valueOf(__value);
    }

    public static int[] getOrdinals() {
        int i = 0;
        int[] values = new int[6];

        values[i] = DEBUG.ordinal();
        i++;
        values[i] = INFO.ordinal();
        i++;
        values[i] = NOTICE.ordinal();
        i++;
        values[i] = WARN.ordinal();
        i++;
        values[i] = ERROR.ordinal();
        i++;
        values[i] = MAX_LOG_LEVELS.ordinal();
        i++;

        return values;
    }

    public int value() {
        return super.ordinal();
    }

    /**
    * Create a default instance
    */  
    public static LogLevelEnum create() {

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

    private LogLevelEnum(String name, int ordinal) {
        super(name, ordinal);
    }
}


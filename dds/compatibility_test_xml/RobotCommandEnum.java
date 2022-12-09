

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

public class RobotCommandEnum  extends Enum {

    public static final RobotCommandEnum DEACTIVATE = new RobotCommandEnum("DEACTIVATE", 0);
    public static final int _DEACTIVATE = 0;
    public static final RobotCommandEnum ACTIVATE = new RobotCommandEnum("ACTIVATE", 1);
    public static final int _ACTIVATE = 1;
    public static final RobotCommandEnum BEGIN_CASE = new RobotCommandEnum("BEGIN_CASE", 2);
    public static final int _BEGIN_CASE = 2;
    public static final RobotCommandEnum CONTINUE_CASE = new RobotCommandEnum("CONTINUE_CASE", 3);
    public static final int _CONTINUE_CASE = 3;
    public static final RobotCommandEnum END_CASE = new RobotCommandEnum("END_CASE", 4);
    public static final int _END_CASE = 4;
    public static final RobotCommandEnum REPOSITION = new RobotCommandEnum("REPOSITION", 5);
    public static final int _REPOSITION = 5;
    public static final RobotCommandEnum STOP_REPOSITION = new RobotCommandEnum("STOP_REPOSITION", 6);
    public static final int _STOP_REPOSITION = 6;
    public static final RobotCommandEnum START_CALIBRATION = new RobotCommandEnum("START_CALIBRATION", 7);
    public static final int _START_CALIBRATION = 7;
    public static final RobotCommandEnum STOP_CALIBRATION = new RobotCommandEnum("STOP_CALIBRATION", 8);
    public static final int _STOP_CALIBRATION = 8;
    public static final RobotCommandEnum STOP_ROBOT = new RobotCommandEnum("STOP_ROBOT", 9);
    public static final int _STOP_ROBOT = 9;
    public static final RobotCommandEnum HANDGUIDE_ONLY = new RobotCommandEnum("HANDGUIDE_ONLY", 10);
    public static final int _HANDGUIDE_ONLY = 10;
    public static final RobotCommandEnum MAX_ROBOT_COMMANDS = new RobotCommandEnum("MAX_ROBOT_COMMANDS", 11);
    public static final int _MAX_ROBOT_COMMANDS = 11;
    public static RobotCommandEnum valueOf(int ordinal) {
        switch(ordinal) {

            case 0: return RobotCommandEnum.DEACTIVATE;
            case 1: return RobotCommandEnum.ACTIVATE;
            case 2: return RobotCommandEnum.BEGIN_CASE;
            case 3: return RobotCommandEnum.CONTINUE_CASE;
            case 4: return RobotCommandEnum.END_CASE;
            case 5: return RobotCommandEnum.REPOSITION;
            case 6: return RobotCommandEnum.STOP_REPOSITION;
            case 7: return RobotCommandEnum.START_CALIBRATION;
            case 8: return RobotCommandEnum.STOP_CALIBRATION;
            case 9: return RobotCommandEnum.STOP_ROBOT;
            case 10: return RobotCommandEnum.HANDGUIDE_ONLY;
            case 11: return RobotCommandEnum.MAX_ROBOT_COMMANDS;

        }
        return null;
    }

    public static RobotCommandEnum from_int(int __value) {
        return valueOf(__value);
    }

    public static int[] getOrdinals() {
        int i = 0;
        int[] values = new int[12];

        values[i] = DEACTIVATE.ordinal();
        i++;
        values[i] = ACTIVATE.ordinal();
        i++;
        values[i] = BEGIN_CASE.ordinal();
        i++;
        values[i] = CONTINUE_CASE.ordinal();
        i++;
        values[i] = END_CASE.ordinal();
        i++;
        values[i] = REPOSITION.ordinal();
        i++;
        values[i] = STOP_REPOSITION.ordinal();
        i++;
        values[i] = START_CALIBRATION.ordinal();
        i++;
        values[i] = STOP_CALIBRATION.ordinal();
        i++;
        values[i] = STOP_ROBOT.ordinal();
        i++;
        values[i] = HANDGUIDE_ONLY.ordinal();
        i++;
        values[i] = MAX_ROBOT_COMMANDS.ordinal();
        i++;

        return values;
    }

    public int value() {
        return super.ordinal();
    }

    /**
    * Create a default instance
    */  
    public static RobotCommandEnum create() {

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

    private RobotCommandEnum(String name, int ordinal) {
        super(name, ordinal);
    }
}


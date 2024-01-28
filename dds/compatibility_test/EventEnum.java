

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

public class EventEnum  extends Enum {

    public static final EventEnum ACTIVATED = new EventEnum("ACTIVATED", 0);
    public static final int _ACTIVATED = 0;
    public static final EventEnum DEACTIVATED = new EventEnum("DEACTIVATED", 1);
    public static final int _DEACTIVATED = 1;
    public static final EventEnum READY = new EventEnum("READY", 2);
    public static final int _READY = 2;
    public static final EventEnum CALIBRATION_COMPLETE = new EventEnum("CALIBRATION_COMPLETE", 3);
    public static final int _CALIBRATION_COMPLETE = 3;
    public static final EventEnum CALIBRATION_FAILED = new EventEnum("CALIBRATION_FAILED", 4);
    public static final int _CALIBRATION_FAILED = 4;
    public static final EventEnum REPOSITION_COMPLETE = new EventEnum("REPOSITION_COMPLETE", 5);
    public static final int _REPOSITION_COMPLETE = 5;
    public static final EventEnum REPOSITION_FAILED = new EventEnum("REPOSITION_FAILED", 6);
    public static final int _REPOSITION_FAILED = 6;
    public static final EventEnum WHEELS_LOCKED = new EventEnum("WHEELS_LOCKED", 7);
    public static final int _WHEELS_LOCKED = 7;
    public static final EventEnum WHEELS_UNLOCKED = new EventEnum("WHEELS_UNLOCKED", 8);
    public static final int _WHEELS_UNLOCKED = 8;
    public static final EventEnum VIDEO_STOPPED = new EventEnum("VIDEO_STOPPED", 9);
    public static final int _VIDEO_STOPPED = 9;
    public static final EventEnum VIDEO_STARTED = new EventEnum("VIDEO_STARTED", 10);
    public static final int _VIDEO_STARTED = 10;
    public static final EventEnum LOW_DISK_SPACE = new EventEnum("LOW_DISK_SPACE", 11);
    public static final int _LOW_DISK_SPACE = 11;
    public static final EventEnum DISK_FULL = new EventEnum("DISK_FULL", 12);
    public static final int _DISK_FULL = 12;
    public static final EventEnum TROCAR_POINT_NOT_SET = new EventEnum("TROCAR_POINT_NOT_SET", 13);
    public static final int _TROCAR_POINT_NOT_SET = 13;
    public static final EventEnum ERROR = new EventEnum("ERROR", 14);
    public static final int _ERROR = 14;
    public static final EventEnum TOGGLE_ROBOT = new EventEnum("TOGGLE_ROBOT", 15);
    public static final int _TOGGLE_ROBOT = 15;
    public static final EventEnum SCOPE_ACTIVE_CONFIRMED = new EventEnum("SCOPE_ACTIVE_CONFIRMED", 16);
    public static final int _SCOPE_ACTIVE_CONFIRMED = 16;
    public static final EventEnum MAGNET_ACTIVE_CONFIRMED = new EventEnum("MAGNET_ACTIVE_CONFIRMED", 17);
    public static final int _MAGNET_ACTIVE_CONFIRMED = 17;
    public static final EventEnum MAX_EVENTS = new EventEnum("MAX_EVENTS", 18);
    public static final int _MAX_EVENTS = 18;
    public static EventEnum valueOf(int ordinal) {
        switch(ordinal) {

            case 0: return EventEnum.ACTIVATED;
            case 1: return EventEnum.DEACTIVATED;
            case 2: return EventEnum.READY;
            case 3: return EventEnum.CALIBRATION_COMPLETE;
            case 4: return EventEnum.CALIBRATION_FAILED;
            case 5: return EventEnum.REPOSITION_COMPLETE;
            case 6: return EventEnum.REPOSITION_FAILED;
            case 7: return EventEnum.WHEELS_LOCKED;
            case 8: return EventEnum.WHEELS_UNLOCKED;
            case 9: return EventEnum.VIDEO_STOPPED;
            case 10: return EventEnum.VIDEO_STARTED;
            case 11: return EventEnum.LOW_DISK_SPACE;
            case 12: return EventEnum.DISK_FULL;
            case 13: return EventEnum.TROCAR_POINT_NOT_SET;
            case 14: return EventEnum.ERROR;
            case 15: return EventEnum.TOGGLE_ROBOT;
            case 16: return EventEnum.SCOPE_ACTIVE_CONFIRMED;
            case 17: return EventEnum.MAGNET_ACTIVE_CONFIRMED;
            case 18: return EventEnum.MAX_EVENTS;

        }
        return null;
    }

    public static EventEnum from_int(int __value) {
        return valueOf(__value);
    }

    public static int[] getOrdinals() {
        int i = 0;
        int[] values = new int[19];

        values[i] = ACTIVATED.ordinal();
        i++;
        values[i] = DEACTIVATED.ordinal();
        i++;
        values[i] = READY.ordinal();
        i++;
        values[i] = CALIBRATION_COMPLETE.ordinal();
        i++;
        values[i] = CALIBRATION_FAILED.ordinal();
        i++;
        values[i] = REPOSITION_COMPLETE.ordinal();
        i++;
        values[i] = REPOSITION_FAILED.ordinal();
        i++;
        values[i] = WHEELS_LOCKED.ordinal();
        i++;
        values[i] = WHEELS_UNLOCKED.ordinal();
        i++;
        values[i] = VIDEO_STOPPED.ordinal();
        i++;
        values[i] = VIDEO_STARTED.ordinal();
        i++;
        values[i] = LOW_DISK_SPACE.ordinal();
        i++;
        values[i] = DISK_FULL.ordinal();
        i++;
        values[i] = TROCAR_POINT_NOT_SET.ordinal();
        i++;
        values[i] = ERROR.ordinal();
        i++;
        values[i] = TOGGLE_ROBOT.ordinal();
        i++;
        values[i] = SCOPE_ACTIVE_CONFIRMED.ordinal();
        i++;
        values[i] = MAGNET_ACTIVE_CONFIRMED.ordinal();
        i++;
        values[i] = MAX_EVENTS.ordinal();
        i++;

        return values;
    }

    public int value() {
        return super.ordinal();
    }

    /**
    * Create a default instance
    */  
    public static EventEnum create() {

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

    private EventEnum(String name, int ordinal) {
        super(name, ordinal);
    }
}




/*
WARNING: THIS FILE IS AUTO-GENERATED. DO NOT MODIFY.

This file was generated from .idl using "rtiddsgen".
The rtiddsgen tool is part of the RTI Connext distribution.
For more information, type 'rtiddsgen -help' at a command shell
or consult the RTI Connext manual.
*/

package com.levita.communication.dds;

import com.rti.dds.infrastructure.*;
import com.rti.dds.infrastructure.Copyable;
import java.io.Serializable;
import com.rti.dds.cdr.CdrHelper;

public class RobotCommand   implements Copyable, Serializable{

    public com.levita.communication.dds.RobotEnum robot = (com.levita.communication.dds.RobotEnum)com.levita.communication.dds.RobotEnum.valueOf(0);
    public com.levita.communication.dds.RobotCommandEnum command = (com.levita.communication.dds.RobotCommandEnum)com.levita.communication.dds.RobotCommandEnum.valueOf(0);
    public com.levita.communication.dds.PositionEnum position = (com.levita.communication.dds.PositionEnum)com.levita.communication.dds.PositionEnum.valueOf(0);
    public com.levita.communication.dds.TrocarFrame trocar_frame = (com.levita.communication.dds.TrocarFrame)com.levita.communication.dds.TrocarFrame.create();

    public RobotCommand() {

    }
    public RobotCommand (RobotCommand other) {

        this();
        copy_from(other);
    }

    public static Object create() {

        RobotCommand self;
        self = new  RobotCommand();
        self.clear();
        return self;

    }

    public void clear() {

        robot = com.levita.communication.dds.RobotEnum.valueOf(0);
        command = com.levita.communication.dds.RobotCommandEnum.valueOf(0);
        position = com.levita.communication.dds.PositionEnum.valueOf(0);
        if (trocar_frame != null) {
            trocar_frame.clear();
        }
    }

    public boolean equals(Object o) {

        if (o == null) {
            return false;
        }        

        if(getClass() != o.getClass()) {
            return false;
        }

        RobotCommand otherObj = (RobotCommand)o;

        if(!robot.equals(otherObj.robot)) {
            return false;
        }
        if(!command.equals(otherObj.command)) {
            return false;
        }
        if(!position.equals(otherObj.position)) {
            return false;
        }
        if(!trocar_frame.equals(otherObj.trocar_frame)) {
            return false;
        }

        return true;
    }

    public int hashCode() {
        int __result = 0;
        __result += robot.hashCode(); 
        __result += command.hashCode(); 
        __result += position.hashCode(); 
        __result += trocar_frame.hashCode(); 
        return __result;
    }

    /**
    * This is the implementation of the <code>Copyable</code> interface.
    * This method will perform a deep copy of <code>src</code>
    * This method could be placed into <code>RobotCommandTypeSupport</code>
    * rather than here by using the <code>-noCopyable</code> option
    * to rtiddsgen.
    * 
    * @param src The Object which contains the data to be copied.
    * @return Returns <code>this</code>.
    * @exception NullPointerException If <code>src</code> is null.
    * @exception ClassCastException If <code>src</code> is not the 
    * same type as <code>this</code>.
    * @see com.rti.dds.infrastructure.Copyable#copy_from(java.lang.Object)
    */
    public Object copy_from(Object src) {

        RobotCommand typedSrc = (RobotCommand) src;
        RobotCommand typedDst = this;

        typedDst.robot = (com.levita.communication.dds.RobotEnum) typedDst.robot.copy_from(typedSrc.robot);
        typedDst.command = (com.levita.communication.dds.RobotCommandEnum) typedDst.command.copy_from(typedSrc.command);
        typedDst.position = (com.levita.communication.dds.PositionEnum) typedDst.position.copy_from(typedSrc.position);
        typedDst.trocar_frame = (com.levita.communication.dds.TrocarFrame) typedDst.trocar_frame.copy_from(typedSrc.trocar_frame);

        return this;
    }

    public String toString(){
        return toString("", 0);
    }

    public String toString(String desc, int indent) {
        StringBuffer strBuffer = new StringBuffer();        

        if (desc != null) {
            CdrHelper.printIndent(strBuffer, indent);
            strBuffer.append(desc).append(":\n");
        }

        strBuffer.append(robot.toString("robot ", indent+1));
        strBuffer.append(command.toString("command ", indent+1));
        strBuffer.append(position.toString("position ", indent+1));
        strBuffer.append(trocar_frame.toString("trocar_frame ", indent+1));

        return strBuffer.toString();
    }

}

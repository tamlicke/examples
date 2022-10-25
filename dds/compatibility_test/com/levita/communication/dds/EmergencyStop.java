

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

public class EmergencyStop   implements Copyable, Serializable{

    public com.levita.communication.dds.EStopStateEnum state = (com.levita.communication.dds.EStopStateEnum)com.levita.communication.dds.EStopStateEnum.valueOf(0);
    public com.levita.communication.dds.RobotEnum robot = (com.levita.communication.dds.RobotEnum)com.levita.communication.dds.RobotEnum.valueOf(0);

    public EmergencyStop() {

    }
    public EmergencyStop (EmergencyStop other) {

        this();
        copy_from(other);
    }

    public static Object create() {

        EmergencyStop self;
        self = new  EmergencyStop();
        self.clear();
        return self;

    }

    public void clear() {

        state = com.levita.communication.dds.EStopStateEnum.valueOf(0);
        robot = com.levita.communication.dds.RobotEnum.valueOf(0);
    }

    public boolean equals(Object o) {

        if (o == null) {
            return false;
        }        

        if(getClass() != o.getClass()) {
            return false;
        }

        EmergencyStop otherObj = (EmergencyStop)o;

        if(!state.equals(otherObj.state)) {
            return false;
        }
        if(!robot.equals(otherObj.robot)) {
            return false;
        }

        return true;
    }

    public int hashCode() {
        int __result = 0;
        __result += state.hashCode(); 
        __result += robot.hashCode(); 
        return __result;
    }

    /**
    * This is the implementation of the <code>Copyable</code> interface.
    * This method will perform a deep copy of <code>src</code>
    * This method could be placed into <code>EmergencyStopTypeSupport</code>
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

        EmergencyStop typedSrc = (EmergencyStop) src;
        EmergencyStop typedDst = this;

        typedDst.state = (com.levita.communication.dds.EStopStateEnum) typedDst.state.copy_from(typedSrc.state);
        typedDst.robot = (com.levita.communication.dds.RobotEnum) typedDst.robot.copy_from(typedSrc.robot);

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

        strBuffer.append(state.toString("state ", indent+1));
        strBuffer.append(robot.toString("robot ", indent+1));

        return strBuffer.toString();
    }

}

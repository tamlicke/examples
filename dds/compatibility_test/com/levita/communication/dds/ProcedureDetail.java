

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

public class ProcedureDetail   implements Copyable, Serializable{

    public String surgeon= (String)""; /* maximum length = (128) */
    public String procedure= (String)""; /* maximum length = (128) */
    public double scope_length = (double)0;
    public com.levita.communication.dds.CartPositionEnum scope_position = (com.levita.communication.dds.CartPositionEnum)com.levita.communication.dds.CartPositionEnum.valueOf(0);
    public com.levita.communication.dds.CartPositionEnum magnet_position = (com.levita.communication.dds.CartPositionEnum)com.levita.communication.dds.CartPositionEnum.valueOf(0);
    public com.levita.communication.dds.FootControllerPositionEnum foot_controller_position = (com.levita.communication.dds.FootControllerPositionEnum)com.levita.communication.dds.FootControllerPositionEnum.valueOf(0);

    public ProcedureDetail() {

    }
    public ProcedureDetail (ProcedureDetail other) {

        this();
        copy_from(other);
    }

    public static Object create() {

        ProcedureDetail self;
        self = new  ProcedureDetail();
        self.clear();
        return self;

    }

    public void clear() {

        surgeon = (String)"";
        procedure = (String)"";
        scope_length = (double)0;
        scope_position = com.levita.communication.dds.CartPositionEnum.valueOf(0);
        magnet_position = com.levita.communication.dds.CartPositionEnum.valueOf(0);
        foot_controller_position = com.levita.communication.dds.FootControllerPositionEnum.valueOf(0);
    }

    public boolean equals(Object o) {

        if (o == null) {
            return false;
        }        

        if(getClass() != o.getClass()) {
            return false;
        }

        ProcedureDetail otherObj = (ProcedureDetail)o;

        if(!surgeon.equals(otherObj.surgeon)) {
            return false;
        }
        if(!procedure.equals(otherObj.procedure)) {
            return false;
        }
        if(scope_length != otherObj.scope_length) {
            return false;
        }
        if(!scope_position.equals(otherObj.scope_position)) {
            return false;
        }
        if(!magnet_position.equals(otherObj.magnet_position)) {
            return false;
        }
        if(!foot_controller_position.equals(otherObj.foot_controller_position)) {
            return false;
        }

        return true;
    }

    public int hashCode() {
        int __result = 0;
        __result += surgeon.hashCode(); 
        __result += procedure.hashCode(); 
        __result += (int)scope_length;
        __result += scope_position.hashCode(); 
        __result += magnet_position.hashCode(); 
        __result += foot_controller_position.hashCode(); 
        return __result;
    }

    /**
    * This is the implementation of the <code>Copyable</code> interface.
    * This method will perform a deep copy of <code>src</code>
    * This method could be placed into <code>ProcedureDetailTypeSupport</code>
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

        ProcedureDetail typedSrc = (ProcedureDetail) src;
        ProcedureDetail typedDst = this;

        typedDst.surgeon = typedSrc.surgeon;
        typedDst.procedure = typedSrc.procedure;
        typedDst.scope_length = typedSrc.scope_length;
        typedDst.scope_position = (com.levita.communication.dds.CartPositionEnum) typedDst.scope_position.copy_from(typedSrc.scope_position);
        typedDst.magnet_position = (com.levita.communication.dds.CartPositionEnum) typedDst.magnet_position.copy_from(typedSrc.magnet_position);
        typedDst.foot_controller_position = (com.levita.communication.dds.FootControllerPositionEnum) typedDst.foot_controller_position.copy_from(typedSrc.foot_controller_position);

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

        CdrHelper.printIndent(strBuffer, indent+1);        
        strBuffer.append("surgeon: ").append(surgeon).append("\n");  
        CdrHelper.printIndent(strBuffer, indent+1);        
        strBuffer.append("procedure: ").append(procedure).append("\n");  
        CdrHelper.printIndent(strBuffer, indent+1);        
        strBuffer.append("scope_length: ").append(scope_length).append("\n");  
        strBuffer.append(scope_position.toString("scope_position ", indent+1));
        strBuffer.append(magnet_position.toString("magnet_position ", indent+1));
        strBuffer.append(foot_controller_position.toString("foot_controller_position ", indent+1));

        return strBuffer.toString();
    }

}

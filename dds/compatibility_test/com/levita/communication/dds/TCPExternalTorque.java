

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

public class TCPExternalTorque   implements Copyable, Serializable{

    public double [] torque=  new double [3];
    public double [] inaccuracy=  new double [3];

    public TCPExternalTorque() {

    }
    public TCPExternalTorque (TCPExternalTorque other) {

        this();
        copy_from(other);
    }

    public static Object create() {

        TCPExternalTorque self;
        self = new  TCPExternalTorque();
        self.clear();
        return self;

    }

    public void clear() {

        for(int i1__ = 0; i1__< 3; ++i1__){

            torque[i1__] =  0;
        }

        for(int i1__ = 0; i1__< 3; ++i1__){

            inaccuracy[i1__] =  0;
        }

    }

    public boolean equals(Object o) {

        if (o == null) {
            return false;
        }        

        if(getClass() != o.getClass()) {
            return false;
        }

        TCPExternalTorque otherObj = (TCPExternalTorque)o;

        for(int i1__ = 0; i1__< 3; ++i1__){

            if(torque[i1__] != otherObj.torque[i1__]) {
                return false;
            }
        }

        for(int i1__ = 0; i1__< 3; ++i1__){

            if(inaccuracy[i1__] != otherObj.inaccuracy[i1__]) {
                return false;
            }
        }

        return true;
    }

    public int hashCode() {
        int __result = 0;
        for(int i1__ = 0; i1__< 3; ++i1__){

            __result += (int)torque[i1__];
        }

        for(int i1__ = 0; i1__< 3; ++i1__){

            __result += (int)inaccuracy[i1__];
        }

        return __result;
    }

    /**
    * This is the implementation of the <code>Copyable</code> interface.
    * This method will perform a deep copy of <code>src</code>
    * This method could be placed into <code>TCPExternalTorqueTypeSupport</code>
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

        TCPExternalTorque typedSrc = (TCPExternalTorque) src;
        TCPExternalTorque typedDst = this;

        System.arraycopy(typedSrc.torque,0,
        typedDst.torque,0,
        typedSrc.torque.length); 

        System.arraycopy(typedSrc.inaccuracy,0,
        typedDst.inaccuracy,0,
        typedSrc.inaccuracy.length); 

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
        strBuffer.append("torque: ");
        for(int i1__ = 0; i1__< 3; ++i1__){

            strBuffer.append(torque[i1__]).append(", ");
        }

        strBuffer.append("\n");
        CdrHelper.printIndent(strBuffer, indent+1);
        strBuffer.append("inaccuracy: ");
        for(int i1__ = 0; i1__< 3; ++i1__){

            strBuffer.append(inaccuracy[i1__]).append(", ");
        }

        strBuffer.append("\n");

        return strBuffer.toString();
    }

}



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

public class TCPForce   implements Copyable, Serializable{

    public double [] force=  new double [3];
    public double [] inaccuracy=  new double [3];

    public TCPForce() {

    }
    public TCPForce (TCPForce other) {

        this();
        copy_from(other);
    }

    public static Object create() {

        TCPForce self;
        self = new  TCPForce();
        self.clear();
        return self;

    }

    public void clear() {

        for(int i1__ = 0; i1__< 3; ++i1__){

            force[i1__] =  0;
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

        TCPForce otherObj = (TCPForce)o;

        for(int i1__ = 0; i1__< 3; ++i1__){

            if(force[i1__] != otherObj.force[i1__]) {
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

            __result += (int)force[i1__];
        }

        for(int i1__ = 0; i1__< 3; ++i1__){

            __result += (int)inaccuracy[i1__];
        }

        return __result;
    }

    /**
    * This is the implementation of the <code>Copyable</code> interface.
    * This method will perform a deep copy of <code>src</code>
    * This method could be placed into <code>TCPForceTypeSupport</code>
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

        TCPForce typedSrc = (TCPForce) src;
        TCPForce typedDst = this;

        System.arraycopy(typedSrc.force,0,
        typedDst.force,0,
        typedSrc.force.length); 

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
        strBuffer.append("force: ");
        for(int i1__ = 0; i1__< 3; ++i1__){

            strBuffer.append(force[i1__]).append(", ");
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

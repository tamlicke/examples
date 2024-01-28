

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

public class CartesianPosition   implements Copyable, Serializable{

    public double [] coordinate=  new double [3];
    public double A = (double)0;
    public double B = (double)0;
    public double C = (double)0;
    public double turn = (double)0;
    public double redundancyAngle = (double)0;
    public int status = (int)0;

    public CartesianPosition() {

    }
    public CartesianPosition (CartesianPosition other) {

        this();
        copy_from(other);
    }

    public static Object create() {

        CartesianPosition self;
        self = new  CartesianPosition();
        self.clear();
        return self;

    }

    public void clear() {

        for(int i1__ = 0; i1__< 3; ++i1__){

            coordinate[i1__] =  0;
        }

        A = (double)0;
        B = (double)0;
        C = (double)0;
        turn = (double)0;
        redundancyAngle = (double)0;
        status = (int)0;
    }

    public boolean equals(Object o) {

        if (o == null) {
            return false;
        }        

        if(getClass() != o.getClass()) {
            return false;
        }

        CartesianPosition otherObj = (CartesianPosition)o;

        for(int i1__ = 0; i1__< 3; ++i1__){

            if(coordinate[i1__] != otherObj.coordinate[i1__]) {
                return false;
            }
        }

        if(A != otherObj.A) {
            return false;
        }
        if(B != otherObj.B) {
            return false;
        }
        if(C != otherObj.C) {
            return false;
        }
        if(turn != otherObj.turn) {
            return false;
        }
        if(redundancyAngle != otherObj.redundancyAngle) {
            return false;
        }
        if(status != otherObj.status) {
            return false;
        }

        return true;
    }

    public int hashCode() {
        int __result = 0;
        for(int i1__ = 0; i1__< 3; ++i1__){

            __result += (int)coordinate[i1__];
        }

        __result += (int)A;
        __result += (int)B;
        __result += (int)C;
        __result += (int)turn;
        __result += (int)redundancyAngle;
        __result += (int)status;
        return __result;
    }

    /**
    * This is the implementation of the <code>Copyable</code> interface.
    * This method will perform a deep copy of <code>src</code>
    * This method could be placed into <code>CartesianPositionTypeSupport</code>
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

        CartesianPosition typedSrc = (CartesianPosition) src;
        CartesianPosition typedDst = this;

        System.arraycopy(typedSrc.coordinate,0,
        typedDst.coordinate,0,
        typedSrc.coordinate.length); 

        typedDst.A = typedSrc.A;
        typedDst.B = typedSrc.B;
        typedDst.C = typedSrc.C;
        typedDst.turn = typedSrc.turn;
        typedDst.redundancyAngle = typedSrc.redundancyAngle;
        typedDst.status = typedSrc.status;

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
        strBuffer.append("coordinate: ");
        for(int i1__ = 0; i1__< 3; ++i1__){

            strBuffer.append(coordinate[i1__]).append(", ");
        }

        strBuffer.append("\n");
        CdrHelper.printIndent(strBuffer, indent+1);        
        strBuffer.append("A: ").append(A).append("\n");  
        CdrHelper.printIndent(strBuffer, indent+1);        
        strBuffer.append("B: ").append(B).append("\n");  
        CdrHelper.printIndent(strBuffer, indent+1);        
        strBuffer.append("C: ").append(C).append("\n");  
        CdrHelper.printIndent(strBuffer, indent+1);        
        strBuffer.append("turn: ").append(turn).append("\n");  
        CdrHelper.printIndent(strBuffer, indent+1);        
        strBuffer.append("redundancyAngle: ").append(redundancyAngle).append("\n");  
        CdrHelper.printIndent(strBuffer, indent+1);        
        strBuffer.append("status: ").append(status).append("\n");  

        return strBuffer.toString();
    }

}

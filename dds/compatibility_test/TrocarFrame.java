

/*
WARNING: THIS FILE IS AUTO-GENERATED. DO NOT MODIFY.

This file was generated from .idl using "rtiddsgen".
The rtiddsgen tool is part of the RTI Connext distribution.
For more information, type 'rtiddsgen -help' at a command shell
or consult the RTI Connext manual.
*/

import com.rti.dds.infrastructure.*;
import com.rti.dds.infrastructure.Copyable;
import java.io.Serializable;
import com.rti.dds.cdr.CdrHelper;

public class TrocarFrame   implements Copyable, Serializable{

    public double x = (double)0.0;
    public double y = (double)0.0;
    public double z = (double)0.0;
    public double a = (double)0.0;
    public double b = (double)0.0;
    public double c = (double)0.0;

    public TrocarFrame() {

    }
    public TrocarFrame (TrocarFrame other) {

        this();
        copy_from(other);
    }

    public static Object create() {

        TrocarFrame self;
        self = new  TrocarFrame();
        self.clear();
        return self;

    }

    public void clear() {

        x = (double)0.0;
        y = (double)0.0;
        z = (double)0.0;
        a = (double)0.0;
        b = (double)0.0;
        c = (double)0.0;
    }

    public boolean equals(Object o) {

        if (o == null) {
            return false;
        }        

        if(getClass() != o.getClass()) {
            return false;
        }

        TrocarFrame otherObj = (TrocarFrame)o;

        if(x != otherObj.x) {
            return false;
        }
        if(y != otherObj.y) {
            return false;
        }
        if(z != otherObj.z) {
            return false;
        }
        if(a != otherObj.a) {
            return false;
        }
        if(b != otherObj.b) {
            return false;
        }
        if(c != otherObj.c) {
            return false;
        }

        return true;
    }

    public int hashCode() {
        int __result = 0;
        __result += (int)x;
        __result += (int)y;
        __result += (int)z;
        __result += (int)a;
        __result += (int)b;
        __result += (int)c;
        return __result;
    }

    /**
    * This is the implementation of the <code>Copyable</code> interface.
    * This method will perform a deep copy of <code>src</code>
    * This method could be placed into <code>TrocarFrameTypeSupport</code>
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

        TrocarFrame typedSrc = (TrocarFrame) src;
        TrocarFrame typedDst = this;

        typedDst.x = typedSrc.x;
        typedDst.y = typedSrc.y;
        typedDst.z = typedSrc.z;
        typedDst.a = typedSrc.a;
        typedDst.b = typedSrc.b;
        typedDst.c = typedSrc.c;

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
        strBuffer.append("x: ").append(x).append("\n");  
        CdrHelper.printIndent(strBuffer, indent+1);        
        strBuffer.append("y: ").append(y).append("\n");  
        CdrHelper.printIndent(strBuffer, indent+1);        
        strBuffer.append("z: ").append(z).append("\n");  
        CdrHelper.printIndent(strBuffer, indent+1);        
        strBuffer.append("a: ").append(a).append("\n");  
        CdrHelper.printIndent(strBuffer, indent+1);        
        strBuffer.append("b: ").append(b).append("\n");  
        CdrHelper.printIndent(strBuffer, indent+1);        
        strBuffer.append("c: ").append(c).append("\n");  

        return strBuffer.toString();
    }

}

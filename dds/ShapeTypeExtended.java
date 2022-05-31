

/*
WARNING: THIS FILE IS AUTO-GENERATED. DO NOT MODIFY.

This file was generated from .idl 
using RTI Code Generator (rtiddsgen) version 3.1.0.
The rtiddsgen tool is part of the RTI Connext DDS distribution.
For more information, type 'rtiddsgen -help' at a command shell
or consult the Code Generator User's Manual.
*/

import com.rti.dds.infrastructure.*;
import com.rti.dds.cdr.CdrHelper;

public class ShapeTypeExtended  extends ShapeType{

    public ShapeFillKind fillKind = (ShapeFillKind)ShapeFillKind.valueOf(0);
    public float angle = (float)0;

    public ShapeTypeExtended() {

        super();

    }
    public ShapeTypeExtended (ShapeTypeExtended other) {

        this();
        copy_from(other);
    }

    public static java.lang.Object create() {

        ShapeTypeExtended self;
        self = new  ShapeTypeExtended();
        self.clear();
        return self;

    }

    @Override 
    public void clear() {

        super.clear();
        fillKind = ShapeFillKind.valueOf(0);
        angle = (float)0;
    }

    @Override
    public boolean equals(java.lang.Object o) {

        if (o == null) {
            return false;
        }        

        if (!super.equals(o)) {
            return false;
        }

        if(getClass() != o.getClass()) {
            return false;
        }

        ShapeTypeExtended otherObj = (ShapeTypeExtended)o;

        if(!this.fillKind.equals(otherObj.fillKind)) {
            return false;
        }
        if(this.angle != otherObj.angle) {
            return false;
        }

        return true;
    }

    @Override
    public int hashCode() {
        int __result = 0;

        __result = super.hashCode();
        __result += fillKind.hashCode(); 
        __result += (int)angle;
        return __result;
    }

    /**
    * This is the implementation of the <code>Copyable</code> interface.
    * This method will perform a deep copy of <code>src</code>
    * This method could be placed into <code>ShapeTypeExtendedTypeSupport</code>
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
    public java.lang.Object copy_from(java.lang.Object src) {

        ShapeTypeExtended typedSrc = (ShapeTypeExtended) src;
        ShapeTypeExtended typedDst = this;
        super.copy_from(typedSrc);
        typedDst.fillKind = (ShapeFillKind) typedDst.fillKind.copy_from(typedSrc.fillKind);
        typedDst.angle = typedSrc.angle;

        return this;
    }

    @Override
    public java.lang.String toString(){
        return toString("", 0);
    }

    public java.lang.String toString(java.lang.String desc, int indent) {
        java.lang.StringBuffer strBuffer = new java.lang.StringBuffer();

        if (desc != null) {
            CdrHelper.printIndent(strBuffer, indent);
            strBuffer.append(desc).append(":\n");
        }

        strBuffer.append(super.toString("",indent));

        strBuffer.append(this.fillKind.toString("fillKind ", indent+1));
        CdrHelper.printIndent(strBuffer, indent+1);        
        strBuffer.append("angle: ").append(this.angle).append("\n");  

        return strBuffer.toString();
    }

}

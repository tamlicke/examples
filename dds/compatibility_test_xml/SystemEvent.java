

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

public class SystemEvent   implements Copyable, Serializable{

    public SourceEnum source = (SourceEnum)SourceEnum.valueOf(0);
    public EventEnum event = (EventEnum)EventEnum.valueOf(0);
    public String detail= (String)""; /* maximum length = (128) */

    public SystemEvent() {

    }
    public SystemEvent (SystemEvent other) {

        this();
        copy_from(other);
    }

    public static Object create() {

        SystemEvent self;
        self = new  SystemEvent();
        self.clear();
        return self;

    }

    public void clear() {

        source = SourceEnum.valueOf(0);
        event = EventEnum.valueOf(0);
        detail = (String)"";
    }

    public boolean equals(Object o) {

        if (o == null) {
            return false;
        }        

        if(getClass() != o.getClass()) {
            return false;
        }

        SystemEvent otherObj = (SystemEvent)o;

        if(!source.equals(otherObj.source)) {
            return false;
        }
        if(!event.equals(otherObj.event)) {
            return false;
        }
        if(!detail.equals(otherObj.detail)) {
            return false;
        }

        return true;
    }

    public int hashCode() {
        int __result = 0;
        __result += source.hashCode(); 
        __result += event.hashCode(); 
        __result += detail.hashCode(); 
        return __result;
    }

    /**
    * This is the implementation of the <code>Copyable</code> interface.
    * This method will perform a deep copy of <code>src</code>
    * This method could be placed into <code>SystemEventTypeSupport</code>
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

        SystemEvent typedSrc = (SystemEvent) src;
        SystemEvent typedDst = this;

        typedDst.source = (SourceEnum) typedDst.source.copy_from(typedSrc.source);
        typedDst.event = (EventEnum) typedDst.event.copy_from(typedSrc.event);
        typedDst.detail = typedSrc.detail;

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

        strBuffer.append(source.toString("source ", indent+1));
        strBuffer.append(event.toString("event ", indent+1));
        CdrHelper.printIndent(strBuffer, indent+1);        
        strBuffer.append("detail: ").append(detail).append("\n");  

        return strBuffer.toString();
    }

}

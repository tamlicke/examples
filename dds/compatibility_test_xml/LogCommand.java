

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

public class LogCommand   implements Copyable, Serializable{

    public SourceEnum target = (SourceEnum)SourceEnum.valueOf(0);
    public LogCommandEnum command = (LogCommandEnum)LogCommandEnum.valueOf(0);
    public LogLevelEnum level = (LogLevelEnum)LogLevelEnum.valueOf(0);

    public LogCommand() {

    }
    public LogCommand (LogCommand other) {

        this();
        copy_from(other);
    }

    public static Object create() {

        LogCommand self;
        self = new  LogCommand();
        self.clear();
        return self;

    }

    public void clear() {

        target = SourceEnum.valueOf(0);
        command = LogCommandEnum.valueOf(0);
        level = LogLevelEnum.valueOf(0);
    }

    public boolean equals(Object o) {

        if (o == null) {
            return false;
        }        

        if(getClass() != o.getClass()) {
            return false;
        }

        LogCommand otherObj = (LogCommand)o;

        if(!target.equals(otherObj.target)) {
            return false;
        }
        if(!command.equals(otherObj.command)) {
            return false;
        }
        if(!level.equals(otherObj.level)) {
            return false;
        }

        return true;
    }

    public int hashCode() {
        int __result = 0;
        __result += target.hashCode(); 
        __result += command.hashCode(); 
        __result += level.hashCode(); 
        return __result;
    }

    /**
    * This is the implementation of the <code>Copyable</code> interface.
    * This method will perform a deep copy of <code>src</code>
    * This method could be placed into <code>LogCommandTypeSupport</code>
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

        LogCommand typedSrc = (LogCommand) src;
        LogCommand typedDst = this;

        typedDst.target = (SourceEnum) typedDst.target.copy_from(typedSrc.target);
        typedDst.command = (LogCommandEnum) typedDst.command.copy_from(typedSrc.command);
        typedDst.level = (LogLevelEnum) typedDst.level.copy_from(typedSrc.level);

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

        strBuffer.append(target.toString("target ", indent+1));
        strBuffer.append(command.toString("command ", indent+1));
        strBuffer.append(level.toString("level ", indent+1));

        return strBuffer.toString();
    }

}

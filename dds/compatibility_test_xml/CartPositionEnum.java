

/*
WARNING: THIS FILE IS AUTO-GENERATED. DO NOT MODIFY.

This file was generated from .idl using "rtiddsgen".
The rtiddsgen tool is part of the RTI Connext distribution.
For more information, type 'rtiddsgen -help' at a command shell
or consult the RTI Connext manual.
*/

import com.rti.dds.util.Enum;
import com.rti.dds.cdr.CdrHelper;
import java.util.Arrays;
import java.io.ObjectStreamException;

public class CartPositionEnum  extends Enum {

    public static final CartPositionEnum UNDEFINED = new CartPositionEnum("UNDEFINED", 0);
    public static final int _UNDEFINED = 0;
    public static final CartPositionEnum SUPERIOR_LEFT = new CartPositionEnum("SUPERIOR_LEFT", 1);
    public static final int _SUPERIOR_LEFT = 1;
    public static final CartPositionEnum SUPERIOR_RIGHT = new CartPositionEnum("SUPERIOR_RIGHT", 2);
    public static final int _SUPERIOR_RIGHT = 2;
    public static final CartPositionEnum CAUDAL_LEFT = new CartPositionEnum("CAUDAL_LEFT", 3);
    public static final int _CAUDAL_LEFT = 3;
    public static final CartPositionEnum CAUDAL_RIGHT = new CartPositionEnum("CAUDAL_RIGHT", 4);
    public static final int _CAUDAL_RIGHT = 4;
    public static final CartPositionEnum MAX_CART_POSITIONS = new CartPositionEnum("MAX_CART_POSITIONS", 5);
    public static final int _MAX_CART_POSITIONS = 5;
    public static CartPositionEnum valueOf(int ordinal) {
        switch(ordinal) {

            case 0: return CartPositionEnum.UNDEFINED;
            case 1: return CartPositionEnum.SUPERIOR_LEFT;
            case 2: return CartPositionEnum.SUPERIOR_RIGHT;
            case 3: return CartPositionEnum.CAUDAL_LEFT;
            case 4: return CartPositionEnum.CAUDAL_RIGHT;
            case 5: return CartPositionEnum.MAX_CART_POSITIONS;

        }
        return null;
    }

    public static CartPositionEnum from_int(int __value) {
        return valueOf(__value);
    }

    public static int[] getOrdinals() {
        int i = 0;
        int[] values = new int[6];

        values[i] = UNDEFINED.ordinal();
        i++;
        values[i] = SUPERIOR_LEFT.ordinal();
        i++;
        values[i] = SUPERIOR_RIGHT.ordinal();
        i++;
        values[i] = CAUDAL_LEFT.ordinal();
        i++;
        values[i] = CAUDAL_RIGHT.ordinal();
        i++;
        values[i] = MAX_CART_POSITIONS.ordinal();
        i++;

        return values;
    }

    public int value() {
        return super.ordinal();
    }

    /**
    * Create a default instance
    */  
    public static CartPositionEnum create() {

        return valueOf(0);
    }

    /**
    * Print Method
    */     
    public String toString(String desc, int indent) {
        StringBuffer strBuffer = new StringBuffer();

        CdrHelper.printIndent(strBuffer, indent);

        if (desc != null) {
            strBuffer.append(desc).append(": ");
        }

        strBuffer.append(this);
        strBuffer.append("\n");              
        return strBuffer.toString();
    }

    private Object readResolve() throws ObjectStreamException {
        return valueOf(ordinal());
    }

    private CartPositionEnum(String name, int ordinal) {
        super(name, ordinal);
    }
}


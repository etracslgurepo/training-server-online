package treasury.facts;

import java.util.*;

public class BillSubItem extends AbstractBillItem {

    BillItem billitem;
	String billitemrefid;

    String _type;
    
    public String getType() {
        return this._type;
    }

    public void setType( String t ) {
        this._type = t;
    }

    public BillSubItem( def m ) {
        super(m);
        billitemrefid = m.billitemrefid;       
    }

    public BillSubItem(){;}

    def toMap() {
        def m = super.toMap();
        m.billitemrefid = billitemrefid;
        m.type = getType();
        return m;
    }

    public int hashCode() {
        return getUid().hashCode();
    } 

    public String getUid() {
        if( !billdate )
            return (type + "_" + billitemrefid);
        else        
           return (type +"_"+billitemrefid +"_"+ (new java.text.SimpleDateFormat("yyyyMMdd").format(billdate)));   
    }



}
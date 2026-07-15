package vrs.facts;

import java.util.*;
import com.rameses.util.*;
import treasury.facts.*;

public class VrsBillItem extends BillItem  {

	int year;
    String billid;
    Date duedate;

    public VrsBillItem(def m ) {
        super(m);
        if(m.year) this.year = m.year;
        if(m.billid) this.billid = m.billid;
        if(m.duedate) this.duedate = m.duedate;
    }

    public VrsBillItem(){;}

	def toMap() {
        def m = super.toMap();
        m.billdate = billdate;
        m.year = year;
        m.duedate = duedate;
        return m;
    }

    public String getUid() {
        return super.getUid() + "_" + year;    
    }


}	
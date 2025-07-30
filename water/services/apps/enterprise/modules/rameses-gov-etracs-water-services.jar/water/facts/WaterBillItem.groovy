package water.facts;

import java.util.*;
import com.rameses.util.*;
import treasury.facts.*;

public class WaterBillItem extends MonthBillItem  {

    String billid;
	Date billdate;
    Date duedate;
    String installmentid;

    public WaterBillItem(def m ) {
        super(m);
        if(m.billdate) this.billdate = m.billdate;
        if(m.billid) this.billid = m.billid;
        if(m.duedate) this.duedate = m.duedate;
        if(m.installmentid) this.installmentid = m.installmentid;
    }

    public WaterBillItem(){;}


	def toMap() {
        def m = super.toMap();
        m.billdate = billdate;
        m.duedate = duedate;
        m.installmentid = installmentid;
        return m;
    }

    /*
    public String getParticulars() {
		def df = new java.text.SimpleDateFormat("yyyy-MMM-dd");
		return super.getParticulars() + " (" + df.format(billdate) + ")";
    }
    */

	public String getUid() {
        return acctid + "_" + year + String.format( "%02d", month);
    }

    public int getYearmonth() {
        return ((year*12)+month);
    }

}	
package treasury.facts;

import com.rameses.util.*;
import treasury.facts.*;

public class Installment {

	String objid;
	int term;
	int billcount;
	double downpaymentrate;
	double downpayment;
	double principal;
	double amtdue;
	double installmentamt;
	String typeid;
	String txntypeid;
	double amtbilled;
	Date startdate;
	int startyear;
	int startmonth;

	public Installment(def o ) {
		this.objid = o.objid;
		if(o.term) this.term = o.term;
		if(o.downpaymentrate) this.downpaymentrate = o.downpaymentrate;
		if(o.downpayment) this.downpayment = o.downpayment;
		if(o.principal) this.principal = o.principal;
		if(o.amtdue) this.amtdue = o.amtdue;
		if(o.installmentamt) this.installmentamt = o.installmentamt;	
		if(o.txntypeid) this.txntypeid = o.txntypeid;	
		if(o.billcount) this.billcount = o.billcount;
		if(o.amtbilled) this.amtbilled = o.amtbilled;
		if(o.startdate) this.startdate = o.startdate;
		if(o.startyear) this.startyear = o.startyear;
		if(o.startmonth) this.startmonth = o.startmonth;
	}


}

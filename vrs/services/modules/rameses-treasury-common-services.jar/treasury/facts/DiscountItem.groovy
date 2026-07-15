package treasury.facts;

import java.util.*;

class DiscountItem  {

	BillItem billitem;
	double amount;
	String billitemrefid;
	boolean input;

	ItemAccount item = new ItemAccount();

	public DiscountItem( BillItem b ) {
		this.billitem = b;
		this.billitem.discountItem = this;
		this.billitemrefid = b.objid;
	}

	public DiscountItem( BillItem bi, Map m ) {
		this.billitem = bi;
		this.billitem.discountItem = this;
		this.billitemrefid = bi.objid;
		if( m.amount ) this.amount = m.amount;
	}

    public DiscountItem(){;}

	public def toMap() {
		def m = [:];
		m.billitemrefid = billitem.objid;
		m.item = item.toMap();
		m.amount = amount;
		return m;
	}
}
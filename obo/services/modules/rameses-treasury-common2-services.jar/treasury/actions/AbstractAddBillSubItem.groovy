package treasury.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import treasury.facts.*;
import com.rameses.osiris3.common.*;

public abstract class AbstractAddBillSubItem implements RuleActionHandler  {

	public abstract BillSubItem createSubItem(def acctid, def params );

	public void execute(def params, def drools) {
		if( !params.billitem ) throw new Exception("billitem is required in AddBillSubItem");
		if( !params.account && !params.billcode ) throw new Exception("account or billcode is required in AddBillItem");
		if( !params.amount ) throw new Exception("account is required in AddBillSubItem");

		if(!(params.billitem instanceof BillItem ))
			 throw new Exception("BillItem must be an instanceof BillItem. ");

		def amt = params.amount.decimalValue;
		if( amt == 0 ) {
			//if amount is zero then do not proceed
			return;
		}

		def billdate = null;
		if( params.billdate ) billdate = params.billdate.eval();

		def parentBillitem = params.billitem;

		def acct = [:];
		if(params.account) {
			acct.key = params.account.key;
			acct.value = params.account.value;
		}
		else {
			if( params.billcode instanceof String ) {
				acct.key = params.billcode;
				acct.value = params.billcode;
			}
			else {
				acct.key = params.billcode.key;
				acct.value = params.billcode.value;
			}
		}

		def billitem = createSubItem(acct.key, params);
		billitem.acctname = acct.value;
		billitem.amount = NumberUtil.round( amt );
		billitem.billdate = billdate;

		if(params.forwarded) {
			billitem.forwarded = params.forwarded.eval();	
		}

		def ct = RuleExecutionContext.getCurrentContext();
		def facts = ct.facts;

		if(parentBillitem) {
			billitem = parentBillitem.addSubItem( billitem );
			if(billitem) {
				facts << billitem;	
				drools.insert( billitem );			
			}	
		}		

		//if there is a supersededbillitem parameter then we must remove it from facts
		if( params.supersededbillitem ) {
			def supersededbillitem = params.supersededbillitem;
			billitem.supersededid = supersededbillitem.objid;	
			facts.remove( supersededbillitem );
			drools.retract( supersededbillitem );	
		}
		
	}

}
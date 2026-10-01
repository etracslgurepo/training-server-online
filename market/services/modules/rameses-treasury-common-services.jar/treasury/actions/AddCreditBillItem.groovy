package treasury.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import treasury.facts.*;
import com.rameses.osiris3.common.*;
import java.rmi.server.*;

class AddCreditBillItem extends AddBillItem  {

	public void execute(def params, def drools) {
		if( !params.account && !params.billcode ) throw new Exception("account or billcode is required in AddBillItem");
		if( !params.amount && !params.billitem ) {
			throw new Exception("amount or billitem is required in AddCreditBillItem");	
		}
		
		def billitem = params.billitem;

		def acct = [:];	
		if(params.account) {
			acct.key = params.account.key;
			acct.value = params.account.value;
		}
		else {
			acct.key = params.billcode;
			acct.value = params.billcode;
		}

		def amt = 0;
		if( params.billitem ) {
			amt = params.billitem.amtpaid; 	
		}
		if( params.amount ) {
			amt = params.amount.decimalValue;
		}
		
		def ct = RuleExecutionContext.getCurrentContext();
		def facts = ct.facts;

		def creditBillitem =  new CreditBillItem(acctid: acct.key);

		//find credit creditBillitem if it exists then additional amount
		def creditItem = facts.findAll{ it instanceof CreditBillItem  }.find{ it.uid == creditBillitem.uid }
		if( creditItem ) {
			creditBillitem = creditItem;
			creditBillitem.amtpaid = NumberUtil.round( creditBillitem.amtpaid + amt ); 
			drools.update( creditBillitem );
		}	
		else {
			creditBillitem.objid = "CRDTBILLITM" + new UID();
			creditBillitem.acctname = acct.value;
			creditBillitem.amtpaid = amt;
			facts << creditBillitem;
			drools.insert( creditBillitem );
		}

		if(billitem) {
			creditBillitem.items << billitem;
		}

	}

}
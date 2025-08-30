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
		if( !params.payment ) {
			throw new Exception("payment is required in AddCreditBillItem");			
		}
		
		def billitem = params.billitem;
		def payment = params.payment;

		def acct = [:];	
		if(params.account) {
			acct.key = params.account.key;
			acct.value = params.account.value;
		}
		else {
			acct.key = params.billcode.key;
			acct.value = params.billcode.value;
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
		creditBillitem.objid = "CRDTBILLITM" + new UID();
		creditBillitem.acctname = acct.value;
		creditBillitem.amtpaid = amt;

		facts << creditBillitem;
		drools.insert( creditBillitem );

		if(payment) {
			//this is to retract payment from drools
			payment.amount = NumberUtil.round( payment.amount - amt ); 
			drools.update( payment );
		}

	}

}
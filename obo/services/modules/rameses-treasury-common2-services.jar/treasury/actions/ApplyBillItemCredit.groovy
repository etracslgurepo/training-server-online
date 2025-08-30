package treasury.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import treasury.facts.*;
import com.rameses.osiris3.common.*;

/***
* Parameters:
*    billitem
* If there are credit bill items, do the ff:
*   add the credit bill amount to credit (make sure to make this positive first because this is a negative value)
*   
****/
class ApplyBillItemCredit implements RuleActionHandler {

	public void execute(def params, def drools) {
		def credit = params.creditbillitem;
		if(!credit) throw new Exception("Credit Billitem fact is required in ApplyBillItemCredit action");

		def billitem = params.billitem;
		if(!billitem) throw new Exception("BillItem fact is required in ApplyBillItemCredit action");

		def ct = RuleExecutionContext.getCurrentContext();
		def facts = ct.facts;

		def bal = credit.unusedbalance;

		double amt = (bal > billitem.total) ? billitem.total : bal ;

		billitem.addPayment( amt, credit );

		credit.amount += amt; 

		facts << billitem.paymentItem;
		billitem.paid = true;

		billitem.paymentItems.each {
			facts << it;
		}

		drools.update( credit );
		drools.update( billitem );
	}

}

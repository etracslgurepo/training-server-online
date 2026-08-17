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
*   add the credit bill amount to payment (make sure to make this positive first because this is a negative value)
*   
****/
class ApplyBillItemPayment implements RuleActionHandler {

	public void execute(def params, def drools) {
		def payment = params.payment;
		if(!payment) throw new Exception("Payment fact is required in ApplyBillItemPayment action");

		def billitem = params.billitem;
		if(!billitem) throw new Exception("BillItem fact is required in ApplyBillItemPayment action");

		def ct = RuleExecutionContext.getCurrentContext();
		def facts = ct.facts;

		//do not proceed if total is zero. This is to ensure that it will not paid if there is no balance
		def itemTotal = billitem.total;
		if( itemTotal == 0 ) return;

		def discount = billitem.discount;
		def particulars = billitem.particulars; 

		def paymentBalance = payment.amount; 
		double amtToPay = ( paymentBalance > itemTotal ? itemTotal : paymentBalance );
		
		billitem.addPayment( amtToPay, null );

		payment.amount = NumberUtil.round( paymentBalance - amtToPay ); 
		// println 'apply billitem payment: particulars='+ particulars +', prevPayBal='+ paymentBalance +', itemTotal='+ itemTotal +', discount='+ discount +', amtToPay='+ amtToPay +', currentPayBal='+ payment.amount; 
		billitem.paid = true;

		facts << billitem.paymentItem;
		billitem.paymentItems.each {
			facts << it;
		}
		
		drools.update( payment );
		drools.update( billitem );
	}

}

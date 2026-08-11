package treasury.actions;

import com.rameses.rules.common.*;
import treasury.facts.*;

class UpdatePaymentBalance implements RuleActionHandler {

	public void execute(def params, def drools) {
		def payment = params.payment;
		if ( !payment ) throw new Exception("Payment fact is required in UpdatePaymentBalance action");

		def amount = payment.amount; 
		if ( amount <= 0 ) return; 

		def ct = RuleExecutionContext.getCurrentContext();
		def facts = ct.facts;

		def newAmount = 0.0; 
		facts.findAll{( it instanceof BillItem )}.each{ bi-> 
			newAmount += bi.total;
		}

		if ( amount != newAmount && payment.amountSpecified == false ) { 
			payment.amount = newAmount; 
			drools.update( payment ); 
		} 
	} 
} 

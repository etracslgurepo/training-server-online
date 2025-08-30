package treasury.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import treasury.facts.*;
import com.rameses.osiris3.common.*;


public class AddDiscountItem implements RuleActionHandler {

	public void execute(def params, def drools) {
		if( !params.billitem ) throw new Exception("billitem is required in AddDiscountItem");
		if( !params.account && !params.billcode ) throw new Exception("account or billcode is required in AddDiscountItem");
		if( !params.amount ) throw new Exception("account is required in AddDiscountItem");
		
		if(!(params.billitem instanceof BillItem ))
			 throw new Exception("BillItem must be an instanceof BillItem. ");

		def parentBillitem = params.billitem;

		def amt = params.amount.decimalValue;

		//if zero amount do not add discount
		if( amt == 0 ) return;

		def acct = [:];
		if(params.account) {
			acct.key = params.account.key;
			acct.value = params.account.value;
		}
		else {
			if(params.billcode instanceof String ) {
				acct.key = params.billcode;
				acct.value = params.billcode;	
			}
			else {
				acct.key = params.billcode.key;
				acct.value = params.billcode.value;	
			}
		}

		def discitem = new DiscountItem( parentBillitem );
		discitem.item.objid = acct.key;
		discitem.item.title = acct.value;
		discitem.amount = NumberUtil.round( amt );
		
		parentBillitem.addDiscount( discitem );
		
		def ct = RuleExecutionContext.getCurrentContext();
		def facts = ct.facts;
		facts << discitem;				

	}



}
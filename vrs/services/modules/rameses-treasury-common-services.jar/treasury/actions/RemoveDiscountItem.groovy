package treasury.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import treasury.facts.*;
import com.rameses.osiris3.common.*;


public class RemoveDiscountItem implements RuleActionHandler {

	public void execute(def params, def drools) {
		if( !params.discountitem ) throw new Exception("discountitem is required in RemoveBillItem");
		
		def discountitem = params.discountitem;
		def ct = RuleExecutionContext.getCurrentContext();
		def facts = ct.facts;	
		
		facts.remove( discountitem );
		discountitem.billitem.discountItem = null;
		drools.retract( discountitem );
	}

}

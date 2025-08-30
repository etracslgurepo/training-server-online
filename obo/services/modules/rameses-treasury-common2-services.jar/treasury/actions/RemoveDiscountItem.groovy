package treasury.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import treasury.facts.*;
import com.rameses.osiris3.common.*;


public class RemoveDiscountItem implements RuleActionHandler {

	public void execute(def params, def drools) {
		if( !params.discitem ) throw new Exception("discitem is required in RemoveDiscountItem");
		
		def discitem = params.discitem;
		def parentBillitem = discitem.billitem;		

		parentBillitem.removeDiscount( discitem );
		
		def ct = RuleExecutionContext.getCurrentContext();
		def facts = ct.facts;
		facts.remove( discitem );				

		drools.update( parentBillitem );
		drools.retract( discitem );

	}



}
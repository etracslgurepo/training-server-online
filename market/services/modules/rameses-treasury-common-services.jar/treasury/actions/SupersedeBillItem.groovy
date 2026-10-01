package treasury.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import treasury.facts.*;
import com.rameses.osiris3.common.*;

public class SupersedeBillItem implements RuleActionHandler {
	
	public void execute(def params, def drools) {
		if(!params.billitem) throw new Exception("params prevbillitem is required in SupersedeBillItem");
		if(!params.supersederitem) throw new Exception("params supersederid is required in SupersedeBillItem");

		def ct = RuleExecutionContext.getCurrentContext();
		def facts = ct.facts;	

		def billitem = params.billitem;
		def superseder = params.supersederitem;
		
		/*
		def sbi = new SupersededBillItem( billitem );
		facts << sbi;
		drools.insert( sbi );
		*/

		superseder.supersededid = billitem.objid;

		facts.remove( billitem );
		drools.retract( billitem );

	}
	
	
}
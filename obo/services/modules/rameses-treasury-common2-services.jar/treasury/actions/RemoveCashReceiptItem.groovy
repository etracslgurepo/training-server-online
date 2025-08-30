package treasury.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import treasury.facts.*;
import com.rameses.osiris3.common.*;


public class RemoveCashReceiptItem implements RuleActionHandler {

	public void execute(def params, def drools) {
		if( !params.cashreceiptitem ) throw new Exception("cashreceiptitem is required in RemoveCashReceiptItem");
		
		def cashreceiptitem = params.cashreceiptitem;
		def ct = RuleExecutionContext.getCurrentContext();
		def facts = ct.facts;	
		
		facts.remove( cashreceiptitem );
		drools.retract( cashreceiptitem );
	}

}

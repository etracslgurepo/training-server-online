package treasury.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;

public class SetBillItemDueDate implements RuleActionHandler {
	
	public void execute(def params, def drools) {
		def bq = params.billitem;
		bq.duedate = params.duedate.eval();
		drools.update( bq );
	}
}
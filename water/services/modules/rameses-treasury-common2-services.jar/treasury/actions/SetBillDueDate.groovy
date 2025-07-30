package treasury.actions;

import com.rameses.rules.common.*;

public class SetBillDueDate implements RuleActionHandler {
	
	public void execute(def params, def drools) {
		if(!params.bill) throw new Exception("bill is required in treasury.actions.SetBillDueDate");
		if(!params.date) throw new Exception("date is required in treasury.actions.SetBillDueDate");	

		def bill = params.bill;
		def date = params.date.eval();
		bill.duedate = date;
		drools.update( bill );
	}

}

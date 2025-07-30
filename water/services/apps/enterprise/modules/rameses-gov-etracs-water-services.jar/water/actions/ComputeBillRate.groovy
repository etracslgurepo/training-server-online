package water.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import water.facts.*;
import com.rameses.osiris3.common.*;
import java.rmi.server.*;

public class ComputeBillRate  implements RuleActionHandler {

	public void execute(def params, def drools) {

		if( !params.bill ) throw new Exception("bill is required in ComputeBillRate");
		if( !params.amount  ) throw new Exception("amount is required in ComputeBillRate");	

		def bill = params.bill;
		def amt = params.amount.decimalValue;

		bill.rate = amt;

		//do not reprocess because this might result in endless loop
		//drools.update( bill );
		
	}

}


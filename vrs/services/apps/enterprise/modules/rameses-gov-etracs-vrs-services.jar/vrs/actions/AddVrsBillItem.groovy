package vrs.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import vrs.facts.*;
import com.rameses.osiris3.common.*;
import java.rmi.server.*;

public class AddVrsBillItem  implements RuleActionHandler {

	public void execute(def params, def drools) {
		if( !params.account ) throw new Exception("account is required in AddVrsBillItem");
		if( !params.amount  ) throw new Exception("amount is required in AddVrsBillItem");	

		def acct = params.account;
		def amt = params.amount.decimalValue;

		def bi = new VrsBillItem(acctid: acct.key, acctname: acct.value, amount: amt );
		bi.objid = "VRSBILLITM" + new UID();
		if(params.year) bi.year = params.year;
		if(params.billdate) bi.billdate = params.billdate.eval();
		if(params.duedate) bi.duedate = params.duedate.eval();

		def ct = RuleExecutionContext.getCurrentContext();
		def facts = ct.facts;

		if( !facts.find{ it.hashCode() == bi.hashCode() } ) {
			facts << bi;
		}

	}

}

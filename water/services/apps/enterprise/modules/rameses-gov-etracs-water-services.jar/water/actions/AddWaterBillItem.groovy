package water.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import water.facts.*;
import com.rameses.osiris3.common.*;
import java.rmi.server.*;

public class AddWaterBillItem  implements RuleActionHandler {

	public void execute(def params, def drools) {

		if( !params.account ) throw new Exception("account is required in AddWaterBillItem");
		if( !params.amount  ) throw new Exception("amount is required in AddWaterBillItem");	

		def acct = params.account;
		def amt = params.amount.decimalValue;

		def bi = new WaterBillItem(acctid: acct.key, acctname: acct.value, amount: amt );
		bi.objid = "WTRBILLITM" + new UID();
		if(params.year) bi.year = params.year;
		if(params.month) bi.month = params.month;
		if(params.billdate) bi.billdate = params.billdate.eval();
		if(params.duedate) bi.duedate = params.duedate.eval();

		if(params.installmentid) bi.installmentid = params.installmentid;

		def ct = RuleExecutionContext.getCurrentContext();
		def facts = ct.facts;

		if( !facts.find{ (it instanceof WaterBillItem ) && (it.hashCode() == bi.hashCode()) } ) {
			facts << bi;
			drools.insert( bi );
		}
		
	}

}


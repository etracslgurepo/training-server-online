package treasury.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import com.rameses.osiris3.common.*;
import com.rameses.functions.*;
import java.text.*;
import treasury.facts.*;

//usually this is called if you need to split a bill into quarters
public class AssertVarDate implements RuleActionHandler {
	
	public void execute(def params, def drools) {
		def dateExpr = params.date;
		def tagExpr = params.tag;

		if(!dateExpr) throw new Exception("date param is required");
		if(!tagExpr) throw new Exception("tag param is required");

		def dt = dateExpr.eval();
		def tag = tagExpr.eval();

		def varDate = new VarDate( dt, tag );

		def ct = RuleExecutionContext.getCurrentContext();
		def facts = ct.facts;	

		facts << varDate;
		drools.insert( varDate );

	}
	
	
}
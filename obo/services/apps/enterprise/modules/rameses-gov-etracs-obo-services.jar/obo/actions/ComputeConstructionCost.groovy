package obo.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import rules.obo.facts.*;
import com.rameses.osiris3.common.*;


public class ComputeConstructionCost implements RuleActionHandler {

	public void execute(def params, def drools) {
		if(!params.application) throw new Exception("params application is required in ComputeConstructionCost")		
		if(!params.amount) throw new Exception("params amount is required in ComputeConstructionCost")
		def ba = params.application;
		def amt = params.amount.decimalValue;			
		ba.projectcost = amt;
	}

}
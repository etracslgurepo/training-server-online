package obo.actions;

import rules.obo.facts.*;
import com.rameses.osiris3.core.TransactionContext;
import com.rameses.osiris3.script.*;
import com.rameses.rules.common.*;
import com.rameses.osiris3.common.*;
import com.rameses.util.*;
import obo.facts.*;

public class AddOboDocument implements RuleActionHandler {

	public void execute(def params, def drools) {
		if(!params.doctype) throw new Exception("params required in AddOboDocument")
		def doc = new OboDocument( doctype: params.doctype.key );
		def ct = RuleExecutionContext.getCurrentContext();
		ct.facts << doc;
	}

}
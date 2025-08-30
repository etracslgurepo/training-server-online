package obo.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import rules.obo.facts.*;
import com.rameses.osiris3.common.*;


/***
* Description: Simple Add of Item. Item is unique based on the account. 
* Parameters:
*    application (obo.facts.OboApplication)
*    amount
****/
public class UpdateAppTxnType implements RuleActionHandler {

	public void execute(def params, def drools) {
		if(!params.application) throw new Exception("application is required in UpdateAppTxnType");
		if(!params.txntype) throw new Exception("txntype is required in UpdateAppTxnType");
		def ba = params.application;
		ba.txntype = params.txntype;
	}

}
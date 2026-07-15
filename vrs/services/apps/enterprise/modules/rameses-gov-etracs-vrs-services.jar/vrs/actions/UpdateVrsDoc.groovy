package vrs.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import vrs.facts.*;
import com.rameses.osiris3.common.*;
import java.rmi.server.*;

public class UpdateVrsDoc  implements RuleActionHandler {

	public void execute(def params, def drools) {
		if( !params.document  ) throw new Exception("document is required in SetDocInfo rule");	

		def document = params.document;

		if( params.expirydate ) document.expirydate = params.expirydate.eval();
		if( params.controlnopattern ) document.controlnopattern = params.controlnopattern.eval();

		drools.update( document );

	}

}

package vrs.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import vrs.facts.*;
import com.rameses.osiris3.common.*;
import java.rmi.server.*;

public class AddVrsDoc  implements RuleActionHandler {

	public void execute(def params, def drools) {
		if( !params.doctypeid ) throw new Exception("doctypeid is required in AddVrsBillItem");
		
		def m = [doctypeid: params.doctypeid.key ];
		def doc = new VrsDoc( m );  

		def ct = RuleExecutionContext.getCurrentContext();
		def facts = ct.facts;

		if( !facts.find{ it.hashCode() == doc.hashCode() } ) {
			facts << doc;
		}

	}

}

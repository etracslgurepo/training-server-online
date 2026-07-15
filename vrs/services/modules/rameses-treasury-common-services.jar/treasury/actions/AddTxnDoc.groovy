package treasury.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import treasury.facts.*;
import com.rameses.osiris3.common.*;
import java.rmi.server.*;

public class AddTxnDoc  implements RuleActionHandler {

	public void execute(def params, def drools) {
		if( !params.doctypeid ) throw new Exception("doctypeid is required in AddVrsDoc");
		
		def m = [doctypeid: params.doctypeid.key ];
		def doc = new TxnDoc( m );  

		def ct = RuleExecutionContext.getCurrentContext();
		def facts = ct.facts;

		if( !facts.find{ it.hashCode() == doc.hashCode() } ) {
			facts << doc;
		}

	}

}

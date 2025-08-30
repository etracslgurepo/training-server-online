package treasury.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import treasury.facts.*;
import treasury.utils.*;
import com.rameses.osiris3.common.*;


public class AddVarDecimal  implements RuleActionHandler {

	public void execute(def params, def drools) {
		try {
			def tag = params.tag;
			def mergetype = params.mergetype;
			def value = params.value.eval();

			def ct = RuleExecutionContext.getCurrentContext();
			def facts = ct.facts;

			//do not add due date if there is already a due date having the same fact and tag
			
			def d = facts.find{ (it instanceof VarDecimal) && it.tag == tag };
			if(!d) {
				d = new VarDecimal();
				d.value =  value;
				d.tag = tag;
				facts << d;
				drools.insert(d);
			}
			else if( mergetype ){
				if( mergetype == "ADD") {
					d.value = d.value + value;
				}
				else {
					d.value = value;	
				}
			}
		}
		catch(e) {
			throw e;
			//println "Error in AddVarDate. " + e.message;		
		}
	}

}
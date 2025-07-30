package water.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import water.facts.*;
import com.rameses.osiris3.common.*;

public class AddWaterBillSchedule implements RuleActionHandler {

	public void execute(def params, def drools) {
		if(!params.year) throw new Exception("Year is required in AddWaterBillSchedule"); 
		if(!params.month) throw new Exception("Month is required in AddWaterBillSchedule");

		def billSchedule = new WaterBillSchedule();
		billSchedule.year = params.year.intValue;
		billSchedule.month = params.month.intValue;

		def ct = RuleExecutionContext.getCurrentContext();
		ct.facts.add( billSchedule );
		drools.insert( billSchedule );
	}
}



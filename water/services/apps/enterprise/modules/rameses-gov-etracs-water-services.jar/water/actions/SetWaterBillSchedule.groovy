package water.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import treasury.facts.*;
import com.rameses.osiris3.common.*;

public class SetWaterBillSchedule implements RuleActionHandler {

	public void execute(def params, def drools) {
		def billSchedule = params.billschedule;
		if(!billSchedule) throw new Exception("Billing Period is required in SetBillingPeriod")
		if(params.fromdate!=null) billSchedule.fromdate = params.fromdate.eval();
		if(params.todate!=null) billSchedule.todate = params.todate.eval();
		if(params.billdate!=null) billSchedule.billdate = params.billdate.eval();
		if(params.discdate!=null) billSchedule.discdate = params.discdate.eval();
		if(params.duedate!=null) billSchedule.duedate = params.duedate.eval();
		if(params.readingdate!=null) billSchedule.readingdate = params.readingdate.eval();

		if(params.readingduedate!=null) billSchedule.readingduedate = params.readingduedate.eval();
		if(params.billingduedate!=null) billSchedule.billingduedate = params.billingduedate.eval();

		if(params.expirydate!=null) billSchedule.expirydate = params.expirydate.eval();
	}
}



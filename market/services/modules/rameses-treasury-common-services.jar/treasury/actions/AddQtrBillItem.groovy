package treasury.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import com.rameses.osiris3.common.*;
import treasury.facts.*;
import com.rameses.functions.*;

class AddQtrBillItem implements RuleActionHandler {
    
    public void execute(def params, def drools) {
		if(!params.billitem) throw new Exception("billitem is required in AddQtrBillItem");
		//if(!params.startdate) throw new Exception("startdate is required in AddQtrBillItem");

		def ct = RuleExecutionContext.getCurrentContext();		
		def facts = ct.facts;

		def billitem = params.billitem;

		//check first if there are already qtr billitems existing. If there is, do not run this code.
		def hasItem = facts.findAll{ it instanceof QtrBillItem }?.find{ it.billitemrefid == billitem.objid }
		if( hasItem ) return;

		def startdate = params.startdate.eval();

		def amt = billitem.amount;
		def qtramt = NumberUtil.round( amt / 4 );
		
		(1..4).each {
			def qbi = new QtrBillItem(billitem); 
			qbi.objid = billitem.objid + "_Q"+it;
			qbi.qtr = it;
			qbi.startdate = startdate;
			qbi.amount = ( it!=4 ) ? qtramt : amt;
			qbi.amtpaid = 0;

			amt = NumberUtil.round( amt - qtramt );
			startdate = DateFunc.getMonthAdd( startdate, 3 );
			facts << qbi;
			drools.insert( qbi );
		}

		billitem.amtpaid = billitem.amount;
		drools.update( billitem );

	}


}
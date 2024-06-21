package treasury.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import treasury.facts.*;
import com.rameses.osiris3.common.*;



class AddRevenueShare implements RuleActionHandler  {

	public void execute(def params, def drools) {

		def amt = params.amount.decimalValue;
		if ( amt == 0 ) {
			// do not proceed if value is ZERO 
			return; 
		}

		def payableaccount = params.payableaccount;
		def refitem = params.refitem;
		def org = params.org;

		if ( refitem == null )
			throw new Exception("Ref Item is required in AddRevenueShare action. Check the rule " + drools.rule.name );
		if ( !refitem.account?.objid )
			throw new Exception("Ref Item must have an account in AddRevenueShare action. Check the rule " + drools.rule.name );

		def ct = RuleExecutionContext.getCurrentContext();
		def refItemAcct = ct.env.acctUtil.createAccountFact([ objid: refitem.account.objid ]); 
		if ( !refItemAcct?.objid ) { 
			throw new Exception("Set a valid Ref Item account in AddRevenueShare action. Check the rule " + drools.rule.name);	
		}

		def payItemAcct = null; 
		if ( org?.orgid ) { 
			payItemAcct = ct.env.acctUtil.createAccountFactByOrg( refItemAcct.objid, org.orgid ); 
			if ( !payItemAcct?.objid ) {
				throw new Exception("No available payable account for org "+ org.orgid + " in AddRevenueShare action. Check the rule " + drools.rule.name);	
			}
		} 

		if ( payableaccount?.key && payableaccount?.key != 'null' ) {
			payItemAcct = ct.env.acctUtil.createAccountFact([ objid: payableaccount.key ]);	
			if ( !payItemAcct?.objid ) {
				throw new Exception("No available payable account for org "+ org.orgid + " in AddRevenueShare action. Check the rule " + drools.rule.name);	
			}
		}

		if ( payItemAcct?.objid ) {
			// everything is set 
		}
		else { 
			throw new Exception("Payable account or generic payable account is required in AddRevenueShare action. Check the rule " + drools.rule.name);
		} 

		def rs = new RevenueShare();
		rs.receiptitemid = refitem.refid;
		rs.refitem = refItemAcct; 
		rs.payableitem = payItemAcct; 
		rs.amount  = amt;

		if (!ct.result.sharing) {
			ct.result.sharing = []
		}

		ct.facts << rs;
	}
}
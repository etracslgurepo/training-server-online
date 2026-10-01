package treasury.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import treasury.facts.*;
import com.rameses.osiris3.common.*;


public class AddCashReceiptItem implements RuleActionHandler {
	
	public void execute(def params, def drools) {
		if( !params.groupid ) throw new Exception("param groupid is required in AddCashReceiptItem");
		if( !params.account ) throw new Exception("param account is required in AddCashReceiptItem");

		def billitem = params.billitem;
		def ct = RuleExecutionContext.getCurrentContext();
		def facts = ct.facts;

		def grpid = params.groupid.stringValue;
		def amt = params.amount.decimalValue;

		def cashrctitm = null;
		def rItems = facts.findAll{ it instanceof CashReceiptItem };
		if( rItems ) {
			cashrctitm = rItems.find{ it.groupid == grpid };
		}

		if(cashrctitm ==null ) {
			cashrctitm = new CashReceiptItem();
			cashrctitm.item = new ItemAccount( params.account.key, params.account.value );
			cashrctitm.groupid = grpid;
			cashrctitm.amount = NumberUtil.round( amt );

			if( params.remarks ) {
				cashrctitm.remarks = params.remarks.stringValue;
			}
			if(params.sortorder) {
				cashrctitm.sortorder = params.sortorder.intValue;	
			}

			facts << cashrctitm;
		}
		else {
			cashrctitm.amount = NumberUtil.round( cashrctitm.amount + amt );
		}

	}

}
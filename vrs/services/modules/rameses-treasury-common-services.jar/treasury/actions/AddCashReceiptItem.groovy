package treasury.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import treasury.facts.*;
import com.rameses.osiris3.common.*;


public class AddCashReceiptItem implements RuleActionHandler {
	
	public void execute(def params, def drools) {
		if( !params.account && !params.billitem ) 
			throw new Exception("param account or billitem is required in AddCashReceiptItem");
		if( !params.amount ) 
			throw new Exception("param amount is required in AddCashReceiptItem");

		def ct = RuleExecutionContext.getCurrentContext();
		def facts = ct.facts;

		def groupid = null;
		if ( params.groupid ) {
			groupid = params.groupid.stringValue;
		}
		else if ( params.account ) {
			groupid = params.account.key;
		}	
		else {
			groupid = params.billitem.acctid;
		} 

		def amt = params.amount.decimalValue;

		def cashrctitm = null;
		def rItems = facts.findAll{ it instanceof CashReceiptItem };
		if( rItems ) {
			cashrctitm = rItems.find{ it.groupid == groupid };
		}

		if( cashrctitm == null ) {
			cashrctitm = new CashReceiptItem();
			if( params.account ) {
				cashrctitm.item = new ItemAccount( params.account.key, params.account.value );	
			}

			cashrctitm.billitem = params.billitem;
			if( cashrctitm.billitem ) {
				cashrctitm.billcode = cashrctitm.billitem.billcode;	
			}

			cashrctitm.groupid = groupid;
			cashrctitm.amount = NumberUtil.round( amt );

			if( params.billcode ) {
				cashrctitm.billcode = params.billcode.key;
			}

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
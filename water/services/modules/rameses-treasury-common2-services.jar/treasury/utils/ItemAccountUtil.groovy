package treasury.utils;

import com.rameses.rules.common.*;
import com.rameses.osiris3.common.*;
import com.rameses.util.*;
import treasury.facts.*;

public class ItemAccountUtil {
	
	private def map = [:];
	private def svc;

	public def lookup( def acctid ) {
		if ( svc == null ) {
			svc = ServiceLookup.create( "ItemAccountLookupService", "financial");
		}

		def itemAcctId = acctid; 

		if ( acctid instanceof Map ) { 
			def acct = (Map) acctid;
			itemAcctId = acct.objid; 

			if ( !map.containsKey( itemAcctId )) {
				def res = svc.lookup([ objid: itemAcctId ]);	
				map.put( itemAcctId, res ); 
			}
		} 
		else if ( !map.containsKey( itemAcctId )) {
			def res = svc.lookup([ objid: itemAcctId ]); 
			if ( res == null ) 
				throw new Exception("Account not found in item account.");

			map.put( itemAcctId, res ); 
		}

		return map.get( itemAcctId ); 
	} 
 
	public def lookup( def acctid, def orgid ) {
		if(svc==null) {
			svc = ServiceLookup.create( "ItemAccountLookupService", "financial");
		}
		if( ! map.containsKey([acctid,orgid])) {
			def m = svc.lookupByOrg( [parentid: acctid, orgid: orgid] );	
			if( !m ) throw new Exception("Account for org "+ orgid + " not found in item account.  " );
			map.put([acctid,orgid], m );
		}
		return map.get([acctid,orgid]);		
	}

	public def createAccountFact(def v) {
		def acct = lookup(v.objid);
		return buildAccountFact( acct );
	}

	public def createAccountFactByOrg( def parentid, def orgid ) {
		if(svc==null) {
			svc = ServiceLookup.create( "ItemAccountLookupService", "financial");
		}
		def o = svc.lookupByOrg([ parentid: parentid , orgid: orgid ]); 
		if ( o ) {
			return buildAccountFact( o );
		} 
		return null; 
	}

	public def buildAccountFact(def acct ) {
		def ac = new ItemAccount( objid: acct.objid, title: acct.title);
		if( acct.parentaccount?.objid  ) {
			def pac = acct.parentaccount;
			ac.parentaccount = new ItemAccount(objid: pac.objid, title: pac.title   )
		}
		return ac;
	}


	public def lookupIdByParentAndOrg( def parentid, def orgid ) {
		if(svc==null) {
			svc = ServiceLookup.create( "ItemAccountLookupService", "financial");
		}; 
		return svc.lookupByOrg( [parentid:parentid, orgid: orgid ])?.objid;
	}

}
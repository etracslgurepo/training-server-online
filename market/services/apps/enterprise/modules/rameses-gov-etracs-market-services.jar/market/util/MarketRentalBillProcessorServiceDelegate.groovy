package market.util;

import com.rameses.util.*;
import com.rameses.service.*;

public class MarketRentalBillProcessorServiceDelegate  {

	def conf;
	def service;

	public MarketRentalBillProcessorServiceDelegate(def c) {
		this.conf = c;
		this.service = new DefaultScriptServiceProxy( "MarketRentalBillProcessorService", this.conf, [:] );	
	}

	public def invoke(String methodName) {
		return this.service.invoke( methodName );			
	}


	public def processExpiredBills() {
		return invoke( "processExpiredBills" );	
	}

	public def processUpdateBills() {
		return invoke( "processUpdateBills" );	
	} 

}

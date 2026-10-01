package market.util;

import com.rameses.util.*;
import com.rameses.service.*;

public class MarketBatchRateServiceDelegate  {

	def conf;
	def service;
	
	public MarketBatchRateServiceDelegate(def c) {
		this.conf = c;
		this.service = new DefaultScriptServiceProxy( "MarketRentalRateProcessorService", this.conf, [:] );	
	}

	public def invoke(String methodName) {
		return this.service.invoke( methodName );			
	}

	public def processBatch() {
		return invoke( "processBatch" );	
	} 

        
}

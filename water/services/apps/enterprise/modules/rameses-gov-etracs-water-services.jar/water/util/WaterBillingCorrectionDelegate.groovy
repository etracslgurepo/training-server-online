package water.util;

import com.rameses.util.*;
import com.rameses.service.*;

public class WaterBillingCorrectionDelegate  {

	def conf;
	def service;

	public WaterBillingCorrectionDelegate(def c) {
		this.conf = c;
		this.service = new DefaultScriptServiceProxy( "WaterBillingCorrectionService", this.conf, [:] );	
	}

	public def invoke(String methodName) {
		return this.service.invoke( methodName );			
	}

	public def processBatch() {
		return invoke( "processBatch" );	
	} 

}
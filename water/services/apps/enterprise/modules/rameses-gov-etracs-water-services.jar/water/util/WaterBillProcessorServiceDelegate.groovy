package water.util;

import com.rameses.util.*;
import com.rameses.service.*;

public class WaterBillProcessorServiceDelegate  {

	def conf;
	def service;

	public WaterBillProcessorServiceDelegate(def c) {
		this.conf = c;
		this.service = new DefaultScriptServiceProxy( "WaterBillProcessorService", this.conf, [:] );	
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
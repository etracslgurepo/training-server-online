package water.actions;

import com.rameses.rules.common.*;
import com.rameses.util.*;
import java.util.*;
import water.facts.*;
import com.rameses.osiris3.common.*;
import java.rmi.server.*;

public class ChangeVolume  implements RuleActionHandler {

	public void execute(def params, def drools) {

		if( !params.bill ) throw new Exception("bill is required in ChangeVolume");
		if( !params.volume ) throw new Exception("volume is required in ChangeVolume");

		def bill = params.bill;
		
		boolean zeroVol = (bill.volume == 0);

		bill.volume = params.volume.eval();
		
		//if original volume is zero then we need to mark this as needs update in bill
		if( zeroVol ) {
			bill.volumeChanged = true;	
		}

		drools.update( bill );
		
	}

}


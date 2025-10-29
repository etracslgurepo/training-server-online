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
		
		def newVol = params.volume.eval(); 
		def oldVol = (bill.volume ? bill.volume : 0); 

		boolean zeroVol = (bill.volume == 0);

		bill.volume = newVol;

		if ( oldVol != newVol ) {
			// this is a newly added implementation on volumeChanged
			bill.volumeChanged = true; 
		}

		else if ( zeroVol ) {
			// this is the original implementation on volumeChanged

			//if original volume is zero then we need to mark this as needs update in bill
			bill.volumeChanged = true;	
		}

		drools.update( bill );
		
	}

}


package water.facts;

import com.rameses.util.*;

public class WaterAccount {

	String classificationid;
	int units = 1;
	boolean metered = true;
	String acctno;
	String acctgroup;
	
	public WaterAccount( def o ) {
		this.acctno = o.acctno;
		this.classificationid = o.classificationid;
		if(o.units) this.units = o.units;
		if(o.metered) this.metered = ((o.metered == 1) ? true: false);
		if(o.acctgroup) this.acctgroup = o.acctgroup;
	}

}

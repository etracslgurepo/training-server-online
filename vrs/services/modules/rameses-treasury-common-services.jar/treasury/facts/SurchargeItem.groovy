package treasury.facts;

import java.util.*;

public class SurchargeItem extends BillSubItem {

	public String getType() {
		return "SURCHARGE";
	}

	public SurchargeItem( def m ) {
        super(m);
    }

    public SurchargeItem(){;}

}
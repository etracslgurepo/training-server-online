package treasury.facts;

import java.util.*;

class InterestItem extends BillSubItem {

	public String getType() {
		return "INTEREST";
	}
	
	
	public InterestItem( def m ) {
        super(m);
    }

    public InterestItem(){;}
}
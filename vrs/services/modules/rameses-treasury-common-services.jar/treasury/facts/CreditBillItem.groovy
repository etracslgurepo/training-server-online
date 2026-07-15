package treasury.facts;

import java.util.*;
import com.rameses.util.*;

public class CreditBillItem extends AbstractBillItem {
    
	def items = [];
    
    public CreditBillItem( def m ) {
        super(m);
    }

    public CreditBillItem() {
    	super();	
    }

    public double getUnusedbalance() {
        return NumberUtil.round( (amtpaid - amount) );
    }



}
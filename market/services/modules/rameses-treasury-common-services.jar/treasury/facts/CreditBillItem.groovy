package treasury.facts;

import java.util.*;
import com.rameses.util.*;
import com.rameses.functions.*;

public class CreditBillItem extends AbstractBillItem {
    
	def items = [];

    public CreditBillItem( def m ) {
        super(m);
    }

    public CreditBillItem(){;}

    public double getUnusedbalance() {
        return NumberUtil.round( (amtpaid - amount) );
    }

}
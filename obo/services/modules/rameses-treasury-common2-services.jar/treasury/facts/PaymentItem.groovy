package treasury.facts;

import java.util.*;
import com.rameses.util.*;

public class PaymentItem {

	AbstractBillItem billitem;
    double amount;
    
    public PaymentItem( AbstractBillItem bi ) {
        this.billitem = bi;
    }

    public PaymentItem( AbstractBillItem bi, double amt ) {
        this( bi );
        this.amount = amt;       
    }

    def toMap() {
        def m = [:];
        m.billitemrefid = billitemrefid;
        m.amount = amount;
        return m;
    }

    public String getBillitemrefid() {
        return this.billitem.objid;
    }

}
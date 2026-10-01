package treasury.facts;

import java.util.*;
import com.rameses.util.*;

public class CreditPaymentItem extends PaymentItem {

    CreditBillItem creditItem;
   

    public CreditPaymentItem( CreditBillItem cri, AbstractBillItem bi ) {
        super(bi);
        this.creditItem = cri;
    }

    public CreditPaymentItem( CreditBillItem cri, AbstractBillItem bi, double amt ) {
        super( bi, amt );
        this.creditItem = cri;
    }

    public String getCredititemid() {
        return creditItem.objid;
    }

    def toMap() {
        def m = super.toMap();
        m.credititemid = credititemid;
        return m;
    }

}
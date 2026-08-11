package treasury.facts;

import com.rameses.rules.common.*;

public class Payment {
    
    double amtpaid;
	double amount;
	String reftype = "cashreceipt";
	boolean initial = false;

    boolean amountSpecified;

    def toMap() {
        def m = [:]; 
        m.amount = amount;
        m.amtpaid = amtpaid;
        m.initial = initial;
        m.amountSpecified = amountSpecified; 
        m.reftype = reftype; 
        return m;
    }
}

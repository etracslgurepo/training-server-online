package treasury.facts;

import java.util.*;
import com.rameses.util.*;
import com.rameses.functions.*;

public class BillItem extends AbstractBillItem {
    

    String tag;
    List<BillSubItem> items = [];
    
    PaymentItem paymentItem;
    List<PaymentItem> paymentItems = [];

    int paypriority;
    

    public BillItem( def m ) {
        super(m);
    }

    public BillItem(){;}

    public boolean getPaid() {
        return (paymentItem!=null);
    }

    def toMap() {
        def m = super.toMap();
        m.surcharge = getSurcharge();
        m.interest = getInterest();
        m.total = getTotal();
        m.paypriority = paypriority;
        return m;
    }

    public def addSubItem( BillSubItem si ) {
        si.billitemrefid = this.objid;
        si.billitem = this;

        //return null if unsuccessfully added. 
        if(!items.find{ it.hashCode() == si.hashCode() }  ) {
            items << si;
            return si;    
        }
        else {
            return null;    
        }
    }

    public double getSurcharge() {
        return NumberUtil.round(items.findAll{ it instanceof SurchargeItem }.sum{it.amount - it.amtpaid});
    }

    public double getInterest() {
        return NumberUtil.round(items.findAll{ it instanceof InterestItem }.sum{it.amount - it.amtpaid});
    }

    
    public double getTotal() {
        return NumberUtil.round( (amount - amtpaid) + surcharge + interest );
    }

    public void addPayment( def payamt ) {
        addPayment( payamt, null );
    }
        
    public void addPayment( def payamt, CreditBillItem cri ) {
        def addPmt = null;
        if( cri == null ) {
            addPmt = { bi,amt-> return new PaymentItem(bi, amt); }
        }
        else {
            addPmt = { bi,amt-> return new CreditPaymentItem(cri, bi, amt); }            
        }

        if(payamt > total) throw new Exception("BillItem.addPayment error. amtpaid must be less than or equal to the total");
        boolean partial = false;
        if(payamt < total) partial = true;

        if(!partial) {
            items.each { bi->
                paymentItems << addPmt(bi, NumberUtil.round(bi.amount - bi.amtpaid ));    
            }
            paymentItem = addPmt(this, NumberUtil.round(this.amount - this.amtpaid) );
        }
        else {
            double _amt = payamt;
            items.each { bi->
                double amt = NumberUtil.round( ( (bi.amount - bi.amtpaid) / total ) * payamt ); 
                paymentItems << addPmt( bi, amt );
                _amt = NumberUtil.round( _amt - amt );      
            }
            //store remainder amount
            paymentItem = addPmt( this, _amt ); 
        }

    }

    public double getDiscount() {
        return 0;
    }

    public double getSurchargepaid() {
        return NumberUtil.round(paymentItems.findAll{ it.billitem instanceof SurchargeItem }.sum{it.amount});
    }

    public double getInterestpaid() {
        return NumberUtil.round(paymentItems.findAll{ it.billitem instanceof InterestItem }.sum{it.amount});
    }

    /*
    public double getInterestpaid() {
        return NumberUtil.round(items.findAll{ it instanceof InterestItem }.sum{it.amtpaid});
    }

    public double getTotalpaid() {
        return NumberUtil.round( (amtpaid - discount) + surchargepaid + interestpaid );
    }
	*/

}
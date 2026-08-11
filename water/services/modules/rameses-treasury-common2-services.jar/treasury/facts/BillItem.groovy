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
    List<DiscountItem> discountItems = [];

    boolean paid;
    String txntype;


    public BillItem( def m ) {
        super(m);
        if( m.paypriority ) this.paypriority = m.paypriority;
        if( m.txntype ) this.txntype = m.txntype; 
    }

    public BillItem(){;}

    def toMap() {
        def m = super.toMap();
        m.discount = getDiscount();
        m.surcharge = getSurcharge();
        m.interest = getInterest();
        m.total = getTotal();
        m.paypriority = paypriority;
        m.txntype = txntype;
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

    public double getBalance() {
        return NumberUtil.round( super.getBalance() );
    }

    public double getSurcharge() {
        def s = NumberUtil.round(items.findAll{ it instanceof SurchargeItem }.sum{it.amount - it.amtpaid});
        return ( s == null ) ? 0 : s;
    }

    public double getInterest() {
        def i = NumberUtil.round(items.findAll{ it instanceof InterestItem }.sum{it.amount - it.amtpaid});
        return (i==null) ? 0 : i;
    }

    public double getDiscount() {
        if( !discountItems  ) return 0;
        def i = NumberUtil.round(discountItems.sum{it.amount});
        return (i==null) ? 0 : i;
    }

    public double getTotal() {
        return NumberUtil.round( this.getBalance() - getDiscount() + getSurcharge() + getInterest());
    }

    public void addDiscount( DiscountItem disc ) {
        discountItems << disc;    
    }

    public void removeDiscount( DiscountItem disc ) {
        discountItems.remove( disc );
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

        boolean partial = ( payamt < total );

        if(!partial) {
            items.findAll{ it.amount > 0 }.each { bi->
                paymentItems << addPmt(bi, NumberUtil.round(bi.amount - bi.amtpaid ));    
            }
            paymentItem = addPmt(this, NumberUtil.round( this.getBalance() - getDiscount()));
        }
        else {
            double _amt = payamt;
            items.findAll{ it.amount > 0 }.each { bi->
                double amt = NumberUtil.round( ( (bi.amount - bi.amtpaid) / total ) * payamt ); 
                paymentItems << addPmt( bi, amt );
                _amt = NumberUtil.round( _amt - amt );      
            }
            //store remainder amount
            paymentItem = addPmt( this, _amt ); 
        }
    }

   
    public double getSurchargepaid() {
        return NumberUtil.round(paymentItems.findAll{ it.billitem instanceof SurchargeItem }.sum{it.amount});
    }

    public double getInterestpaid() {
        return NumberUtil.round(paymentItems.findAll{ it.billitem instanceof InterestItem }.sum{it.amount});
    }

 

}
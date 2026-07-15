package treasury.facts;

import java.util.*;
import com.rameses.util.*;

public abstract class AbstractBillItem {

    //this is to mark if this was added before rule execution so we will know what we need to save in the database
    boolean input = false;
    boolean forwarded = false;

	String objid;
    double amount;
    double amtpaid;
    String remarks;
    String supersededid;
    Date billdate;
    String tag;

    ItemAccount item = new ItemAccount();
    
    public AbstractBillItem( def m ) {
        if(m.objid) this.objid = m.objid;
        if(m.acctid) this.item.objid = m.acctid;
        else if( m.item?.objid ) this.item.objid = m.item.objid;

        if(m.acctname) this.item.title = m.acctname;
        else if( m.item?.title ) this.item.title = m.item.title;

        if(m.billcode) {
            this.item.objid = m.billcode;    
        } 

        if(m.amount) this.amount = m.amount;
        if(m.amtpaid) this.amtpaid = m.amtpaid;
        if(m.remarks) this.remarks = m.remarks; 
        if(m.billdate) this.billdate = m.billdate;  
        if(m.forwarded) this.forwarded = m.forwarded;  
        //if(m.input) this.input = m.input;   
    }

    public AbstractBillItem(){;}

    //this is to support existing items
    public String getAcctid() {
        return item.objid;
    }

    public String getBillcode() {
        return item.objid;
    }

    public void setAcctid( String id ) {
        this.item.objid = id;
    }

    public String getAcctname() {
        return this.item.title;
    }

    public void setAcctname( String n ) {
        this.item.title = n;
    }

    public double getBalance() {
        return NumberUtil.round( amount - amtpaid );
    }

    
    public String getParticulars() {
        if(remarks) {
            return acctname + "( " + remarks + ")";
        }
        else {
            return acctname;     
        }
    }

    public String getUid() {
        return acctid;
    }

    public int hashCode() {
        return getUid().hashCode();
    }

    def toMap() {
        def m = [:];
        m.objid = objid;
        m.amount = amount;
        m.amtpaid = amtpaid;
        m.item = item.toMap();
        m.remarks = remarks;
        m.particulars = getParticulars();
        m.supersededid = supersededid;
        m.billdate = billdate;
        m.forwarded = forwarded;
        m.billcode = billcode;
        m.input = input;
        m.uid = getUid();
        return m;
    }


}
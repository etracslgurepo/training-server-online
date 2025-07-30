package treasury.facts;

import java.util.*;
import com.rameses.util.*;

public class CashReceiptItem {

	ItemAccount item;
    double amount;
    String remarks;
    String groupid;
    int sortorder;
    String orgid;
    String billcode;

    //I just made this an object tio handle both AbstractBillItem and DiscountItem
    //I tried to make this an interface but its very tedious bec. if I make abstractBillItem
    //implement it, the interface does not apply to all subclasses of AbstractBillItem.
    //You need to make all subclasses also implement the interface and its too much hassle 
    def billitem; 

    public CashReceiptItem() {}

    def toMap() {
        def m = [:];
        m.amount = amount;
        m.remarks = remarks;
        m.sortorder = sortorder;
        if( item ) m.item = item.toMap();
        if( billitem ) m.billitem = billitem.toMap();
        if(orgid) m.orgid = orgid;        
        m.billcode = billcode;
        return m;
    }

    public String getAcctid() {
        return item.objid;
    }

}
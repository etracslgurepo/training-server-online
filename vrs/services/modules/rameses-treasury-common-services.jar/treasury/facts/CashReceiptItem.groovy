package treasury.facts;

import java.util.*;
import com.rameses.util.*;

public class CashReceiptItem {

	ItemAccount item;
    double amount;
    String remarks;
    String groupid;
    int sortorder;
    
    def billitem; 
    String billcode;

    public CashReceiptItem() {}

    def toMap() {
        def m = [:];
        m.amount = amount;
        m.remarks = remarks;
        m.sortorder = sortorder;
        if( item ) m.item = item.toMap();
        if( billitem ) m.billitem = billitem.toMap();
        m.billcode = billcode;
        return m;
    }

}
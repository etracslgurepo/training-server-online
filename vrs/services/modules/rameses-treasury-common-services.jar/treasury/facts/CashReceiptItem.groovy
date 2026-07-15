package treasury.facts;

import java.util.*;
import com.rameses.util.*;

public class CashReceiptItem {

	ItemAccount item;
    double amount;
    String remarks;
    String groupid;
    int sortorder;

    public CashReceiptItem() {}

    def toMap() {
        def m = [:];
        m.amount = amount;
        m.item = item.toMap();
        m.remarks = remarks;
        m.sortorder = sortorder;
        return m;
    }


}
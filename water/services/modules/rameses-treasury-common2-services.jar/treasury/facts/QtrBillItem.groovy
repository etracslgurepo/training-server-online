package treasury.facts;

import java.util.*;
import com.rameses.util.*;
import com.rameses.functions.*;

public class QtrBillItem extends BillItem {

    BillItem billitem;
    Date startdate;
    Date duedate;
    int qtr;

    public QtrBillItem( BillItem billitem ) {
        super( billitem ); 
        this.billitem = billitem;
    }

    public QtrBillItem( Map map ) {
        super( map );
        if( map.billitemrefid ) {
            this.billitem = [objid: map.billitemrefid ];
        } 
        else {
            this.billitem = [:];
        }
        if( map.qtr ) this.qtr = map.qtr;
        if(map.startdate) this.startdate = map.startdate;
        if(map.duedate) this.duedate = map.duedate;
    }

    public String getBillitemrefid() {
        return this.billitem.objid;
    }

    def toMap() {
        def m = super.toMap();
       	m.qtr = qtr;
        m.billitemrefid = billitem.objid;
        m.startdate = startdate;
        m.duedate = duedate;
        return m;
    }

    public String getUid() {
        return (billitemrefid + "_" + qtr);
    }

    public String getParticulars() {
        return billitem.getParticulars() + " Q"+qtr;    
    }

}
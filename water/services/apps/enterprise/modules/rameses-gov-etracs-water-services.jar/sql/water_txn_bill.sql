[updateBillTotals]
UPDATE water_txn_bill mb 
SET mb.amount = IFNULL((
    SELECT SUM(amount) - SUM(creditamt)
    FROM water_txn_billitem 
    WHERE billid = $P{billid} 
), 0)


[findBillForPayment]
SELECT b.objid AS billid, b.amount, b.txnid 
FROM water_txn_bill b 
INNER JOIN water_txn t ON b.txnid = t.objid 
INNER JOIN water_txn_task vt ON t.taskid = vt.taskid 
WHERE b.billno = $P{billno}
AND vt.state = 'payment'

UNION  

SELECT b.objid AS billid, b.amount, b.txnid  
FROM water_txn_bill b 
INNER JOIN water_txn t ON b.txnid = t.objid 
INNER JOIN water_txn_task vt ON t.taskid = vt.taskid 
INNER JOIN water_account acct ON t.acctid = acct.objid 
WHERE acct.acctno = $P{acctno}
AND vt.state = 'payment'

UNION 

SELECT b.objid AS billid, b.amount, b.txnid  
FROM water_txn_bill b 
INNER JOIN water_txn t ON b.txnid = t.objid 
INNER JOIN water_txn_task vt ON t.taskid = vt.taskid 
WHERE t.controlno = $P{appno}
AND vt.state = 'payment'




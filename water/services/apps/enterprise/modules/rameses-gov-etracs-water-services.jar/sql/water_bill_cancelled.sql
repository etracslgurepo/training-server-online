[transferBillItems]
UPDATE water_abstract_billitem b 
SET b.billid = $P{newbillid} 
WHERE b.billid = $P{oldbillid} 
AND b.auto = 0

[transferPayments]
UPDATE water_payment p 
SET p.billid = $P{newbillid} 
WHERE p.billid = $P{oldbillid}
AND p.reftype <> 'bf-credit'

[voidBatch]
UPDATE water_bill_cancelled 
SET batchid = NULL
WHERE batchid = $P{batchid}
[updateDocFee]
UPDATE obo_app_doc d   
SET d.amount = (
    SELECT IFNULL(SUM( f.amount ), 0) 
    FROM obo_app_fee f
    INNER JOIN obo_itemaccount i ON f.itemid = i.objid  
    WHERE f.appid = d.appid  
    AND i.doctypeid = d.doctypeid   
) 
WHERE d.objid = $P{docid}

[updateAppDocFees]
UPDATE obo_app_doc d  
SET d.amount = (
    SELECT IFNULL(SUM( f.amount ),0) 
    FROM obo_app_fee f
    INNER JOIN obo_itemaccount i ON f.itemid = i.objid  
    WHERE f.appid = d.appid  
    AND i.doctypeid = d.doctypeid   
) 
WHERE d.appid = $P{appid}


[updateBillAmount]
UPDATE obo_bill b
SET b.amount = (
   SELECT IFNULL(SUM(amount),0)
   FROM obo_app_fee 
   WHERE appid = b.appid
)
WHERE b.appid = $P{appid}

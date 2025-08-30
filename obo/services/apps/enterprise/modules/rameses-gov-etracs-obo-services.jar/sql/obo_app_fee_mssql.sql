[updateDocFee]
UPDATE d SET 
    d.amount = (
        SELECT ISNULL(SUM( f.amount ), 0) 
        FROM obo_app_fee f
        INNER JOIN obo_itemaccount i ON f.itemid = i.objid  
        WHERE f.appid = d.appid  
        AND i.doctypeid = d.doctypeid   
    ) 
FROM obo_app_doc d   
WHERE d.objid = $P{docid}

[updateAppDocFees]
UPDATE d SET 
    d.amount = (
        SELECT ISNULL(SUM( f.amount ),0) 
        FROM obo_app_fee f
        INNER JOIN obo_itemaccount i ON f.itemid = i.objid  
        WHERE f.appid = d.appid  
        AND i.doctypeid = d.doctypeid   
    ) 
FROM obo_app_doc d  
WHERE d.appid = $P{appid}


[updateBillAmount]
UPDATE b SET 
    b.amount = (
       SELECT ISNULL(SUM(amount),0)
       FROM obo_app_fee 
       WHERE appid = b.appid
    )
FROM obo_bill b
WHERE b.appid = $P{appid}

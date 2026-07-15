DROP VIEW IF EXISTS vw_vrs_billitem;
CREATE VIEW vw_vrs_billitem AS 
SELECT
mbi.*,
CASE WHEN mri.year IS NULL 
THEN CONCAT( mai.title, ' ', mri.year, ' '  )
ELSE mai.title
END AS particulars,
mri.year,
mri.duedate,
CASE WHEN abi.objid IS NULL THEN 0 ELSE 1 END AS superseded,
abi.supersededid AS supersederid,
IFNULL((SELECT amount FROM vrs_discountitem WHERE billitemrefid = mbi.objid ),0) AS discount,
IFNULL(( 
	SELECT SUM(amount) FROM vw_vrs_billitem_subitem
	WHERE billitemrefid = mbi.objid AND type = 'SURCHARGE' AND superseded=0
),0) AS surcharge, 

IFNULL(( 
	SELECT SUM( CASE WHEN superseded=0 THEN amount ELSE amtpaid END ) 
	FROM vw_vrs_billitem_subitem
	WHERE billitemrefid = mbi.objid AND type = 'INTEREST'  
),0) AS interest,

IFNULL(( 
	SELECT SUM(amtpaid) 
	FROM vw_vrs_billitem_subitem
	WHERE billitemrefid = mbi.objid AND type = 'SURCHARGE'
),0) AS surchargepaid, 

IFNULL(( 
	SELECT SUM(amtpaid) 
	FROM vw_vrs_billitem_subitem
	WHERE billitemrefid = mbi.objid AND type = 'INTEREST'
),0) AS interestpaid,
mai.sortorder


FROM vrs_abstract_billitem mbi
INNER JOIN vrs_billitem mri ON mri.objid = mbi.objid 
INNER JOIN vrs_itemaccount mai ON mbi.itemid = mai.objid  
LEFT JOIN vrs_abstract_billitem abi ON mbi.objid = abi.supersededid 
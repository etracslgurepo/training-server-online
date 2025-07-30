[getReport]
SELECT 
	barangay_objid, barangay_name, 
	SUM(res_active) as res_active, SUM(com_active) as com_active, 
	SUM(ind_active) as ind_active, SUM(bulk_active) as bulk_active,
	SUM(res_inactive) as res_inactive, SUM(com_inactive) as com_inactive, 
	SUM(ind_inactive) as ind_inactive, SUM(bulk_inactive) as bulk_inactive, 
	SUM(gov_active) as gov_active, SUM(gov_inactive) as gov_inactive 	
FROM

	(SELECT 
		acct.location_barangay_objid AS barangay_objid, acct.location_barangay_name AS barangay_name,
		CASE 
			WHEN acct.classificationid='RESIDENTIAL' AND acct.state = 'ACTIVE' AND IFNULL(acct.state,'') <> 'DISCONNECTED' THEN 1 
			ELSE 0 
		END AS res_active, 
		CASE 
			WHEN acct.classificationid='COMMERCIAL' AND acct.state = 'ACTIVE' AND IFNULL(acct.state,'') <> 'DISCONNECTED' THEN 1 
			ELSE 0 
		END AS com_active, 
		CASE 
			WHEN acct.classificationid='INDUSTRIAL' AND acct.state = 'ACTIVE' AND IFNULL(acct.state,'') <> 'DISCONNECTED' THEN 1 
			ELSE 0 
		END AS ind_active, 
		CASE 
			WHEN acct.classificationid='BULK' AND acct.state = 'ACTIVE' AND IFNULL(acct.state,'') <> 'DISCONNECTED' THEN 1 
			ELSE 0 
		END AS bulk_active, 
		CASE 
			WHEN acct.classificationid='GOVERNMENT' AND acct.state = 'ACTIVE' AND IFNULL(acct.state,'') <> 'DISCONNECTED' THEN 1 
			ELSE 0 
		END AS gov_active, 
		CASE 
			WHEN acct.classificationid='RESIDENTIAL' AND IFNULL(acct.state,'') = 'DISCONNECTED' THEN 1 
			WHEN acct.classificationid='RESIDENTIAL' AND acct.state = 'INACTIVE' THEN 1 
			ELSE 0 
		END AS res_inactive,  
		CASE 
			WHEN acct.classificationid='COMMERCIAL' AND IFNULL(acct.state,'') = 'DISCONNECTED' THEN 1 
			WHEN acct.classificationid='COMMERCIAL' AND acct.state = 'INACTIVE' THEN 1 
			ELSE 0 
		END AS com_inactive,  
		CASE 
			WHEN acct.classificationid='INDUSTRIAL' AND IFNULL(acct.state,'') = 'DISCONNECTED' THEN 1 
			WHEN acct.classificationid='INDUSTRIAL' AND acct.state = 'INACTIVE' THEN 1 
			ELSE 0 
		END AS ind_inactive,  
		CASE 
			WHEN acct.classificationid='BULK' AND IFNULL(acct.state,'') = 'DISCONNECTED' THEN 1 
			WHEN acct.classificationid='BULK' AND acct.state = 'INACTIVE' THEN 1 
			ELSE 0 
		END AS bulk_inactive, 
		CASE 
			WHEN acct.classificationid='GOVERNMENT' AND IFNULL(acct.state,'') = 'DISCONNECTED' THEN 1 
			WHEN acct.classificationid='GOVERNMENT' AND acct.state = 'INACTIVE' THEN 1 
			ELSE 0 
		END AS gov_inactive 

	FROM vw_water_account acct) t1

WHERE barangay_objid IS NOT NULL
GROUP BY barangay_objid, barangay_name 
ORDER BY barangay_name 
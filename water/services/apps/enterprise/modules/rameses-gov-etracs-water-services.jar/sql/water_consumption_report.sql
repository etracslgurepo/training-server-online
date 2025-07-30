[getReport]
SELECT
	barangay_objid, barangay_name, 
	SUM(res_range1) as res_range1, SUM(res_range2) as res_range2, SUM(res_range3) as res_range3, 
	SUM(res_range4) as res_range4, SUM(res_range5) as res_range5, SUM(res_range6) as res_range6,
	SUM(com_range1) as com_range1, SUM(com_range2) as com_range2, SUM(com_range3) as com_range3, 
	SUM(com_range4) as com_range4, SUM(com_range5) as com_range5, SUM(com_range6) as com_range6,
	SUM(ind_range1) as ind_range1, SUM(ind_range2) as ind_range2, SUM(ind_range3) as ind_range3, 
	SUM(ind_range4) as ind_range4, SUM(ind_range5) as ind_range5, SUM(ind_range6) as ind_range6,
	SUM(bulk_range1) as bulk_range1, SUM(bulk_range2) as bulk_range2, SUM(bulk_range3) as bulk_range3, 
	SUM(bulk_range4) as bulk_range4, SUM(bulk_range5) as bulk_range5, SUM(bulk_range6) as bulk_range6,
	SUM(gov_range1) as gov_range1, SUM(gov_range2) as gov_range2, SUM(gov_range3) as gov_range3, 
	SUM(gov_range4) as gov_range4, SUM(gov_range5) as gov_range5, SUM(gov_range6) as gov_range6
FROM (	
	SELECT
		b.location_barangay_objid AS barangay_objid, b.location_barangay_name AS barangay_name, 
		CASE WHEN b.classification_objid='RESIDENTIAL' AND b.volume BETWEEN 00 AND 10 THEN 1 ELSE 0 END AS res_range1,  
		CASE WHEN b.classification_objid='RESIDENTIAL' AND b.volume BETWEEN 11 AND 20 THEN 1 ELSE 0 END AS res_range2, 
		CASE WHEN b.classification_objid='RESIDENTIAL' AND b.volume BETWEEN 21 AND 30 THEN 1 ELSE 0 END AS res_range3, 
		CASE WHEN b.classification_objid='RESIDENTIAL' AND b.volume BETWEEN 31 AND 40 THEN 1 ELSE 0 END AS res_range4, 
		CASE WHEN b.classification_objid='RESIDENTIAL' AND b.volume BETWEEN 41 AND 50 THEN 1 ELSE 0 END AS res_range5, 
		CASE WHEN b.classification_objid='RESIDENTIAL' AND b.volume > 50 THEN 1 ELSE 0 END AS res_range6, 
		CASE WHEN b.classification_objid='COMMERCIAL' AND b.volume BETWEEN 00 AND 10 THEN 1 ELSE 0 END AS com_range1,  
		CASE WHEN b.classification_objid='COMMERCIAL' AND b.volume BETWEEN 11 AND 20 THEN 1 ELSE 0 END AS com_range2, 
		CASE WHEN b.classification_objid='COMMERCIAL' AND b.volume BETWEEN 21 AND 30 THEN 1 ELSE 0 END AS com_range3, 
		CASE WHEN b.classification_objid='COMMERCIAL' AND b.volume BETWEEN 31 AND 40 THEN 1 ELSE 0 END AS com_range4, 
		CASE WHEN b.classification_objid='COMMERCIAL' AND b.volume BETWEEN 41 AND 50 THEN 1 ELSE 0 END AS com_range5, 
		CASE WHEN b.classification_objid='COMMERCIAL' AND b.volume > 50 THEN 1 ELSE 0 END AS com_range6, 
		CASE WHEN b.classification_objid='INDUSTRIAL' AND b.volume BETWEEN 00 AND 10 THEN 1 ELSE 0 END AS ind_range1,  
		CASE WHEN b.classification_objid='INDUSTRIAL' AND b.volume BETWEEN 11 AND 20 THEN 1 ELSE 0 END AS ind_range2, 
		CASE WHEN b.classification_objid='INDUSTRIAL' AND b.volume BETWEEN 21 AND 30 THEN 1 ELSE 0 END AS ind_range3, 
		CASE WHEN b.classification_objid='INDUSTRIAL' AND b.volume BETWEEN 31 AND 40 THEN 1 ELSE 0 END AS ind_range4, 
		CASE WHEN b.classification_objid='INDUSTRIAL' AND b.volume BETWEEN 41 AND 50 THEN 1 ELSE 0 END AS ind_range5, 
		CASE WHEN b.classification_objid='INDUSTRIAL' AND b.volume > 50 THEN 1 ELSE 0 END AS ind_range6, 
		CASE WHEN b.classification_objid='BULK' AND b.volume BETWEEN 00 AND 10 THEN 1 ELSE 0 END AS bulk_range1,  
		CASE WHEN b.classification_objid='BULK' AND b.volume BETWEEN 11 AND 20 THEN 1 ELSE 0 END AS bulk_range2, 
		CASE WHEN b.classification_objid='BULK' AND b.volume BETWEEN 21 AND 30 THEN 1 ELSE 0 END AS bulk_range3, 
		CASE WHEN b.classification_objid='BULK' AND b.volume BETWEEN 31 AND 40 THEN 1 ELSE 0 END AS bulk_range4, 
		CASE WHEN b.classification_objid='BULK' AND b.volume BETWEEN 41 AND 50 THEN 1 ELSE 0 END AS bulk_range5, 
		CASE WHEN b.classification_objid='BULK' AND b.volume > 50 THEN 1 ELSE 0 END AS bulk_range6,  
		CASE WHEN b.classification_objid='GOVERNMENT' AND b.volume BETWEEN 00 AND 10 THEN 1 ELSE 0 END AS gov_range1, 
		CASE WHEN b.classification_objid='GOVERNMENT' AND b.volume BETWEEN 11 AND 20 THEN 1 ELSE 0 END AS gov_range2, 
		CASE WHEN b.classification_objid='GOVERNMENT' AND b.volume BETWEEN 21 AND 30 THEN 1 ELSE 0 END AS gov_range3, 
		CASE WHEN b.classification_objid='GOVERNMENT' AND b.volume BETWEEN 31 AND 40 THEN 1 ELSE 0 END AS gov_range4, 
		CASE WHEN b.classification_objid='GOVERNMENT' AND b.volume BETWEEN 41 AND 50 THEN 1 ELSE 0 END AS gov_range5, 
		CASE WHEN b.classification_objid='GOVERNMENT' AND b.volume > 50 THEN 1 ELSE 0 END AS gov_range6 
	FROM vw_water_bill b 
	WHERE b.year = $P{year} AND b.month = $P{month} ) t1

GROUP BY barangay_objid, barangay_name 
ORDER BY barangay_name
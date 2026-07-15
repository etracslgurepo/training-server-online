[getDetailInfos]
SELECT z.*,
vf.caption,
vf.name,
vf.sortorder,
vf.category,
vf.required,
vf.textwidth,
vf.datatype
FROM
(SELECT di.*
FROM vrs_detail_info di 
INNER JOIN vrs_txn txn ON di.txnid = txn.objid 
INNER JOIN vrs_account_year ay ON txn.acctyearid = ay.objid 
WHERE ay.acctid = $P{acctid}
AND NOT(txn.objid = $P{txnid})
AND txn.txndate <= $P{txndate}
AND di.objid NOT IN (
    SELECT _v1.supersededid
    FROM vrs_detail_info _v1
    INNER JOIN vrs_txn _vt ON _v1.txnid = _vt.objid
    INNER JOIN vrs_account_year _ay ON _vt.acctyearid = _ay.objid  
    WHERE _ay.acctid=$P{acctid} 
    AND NOT(_v1.supersededid IS NULL)
    AND _vt.txndate <= $P{txndate} 
)  
UNION ALL 
SELECT *
FROM vrs_detail_info 
WHERE txnid = $P{txnid} ) z
INNER JOIN vw_vrs_vehicletype_field vf ON z.fieldid = vf.objid 
ORDER BY vf.sortorder 

[getDetailInfosBeforeEdit]
SELECT di.*,
vf.caption,
vf.name,
vf.sortorder,
vf.category,
vf.required,
vf.textwidth,
vf.datatype
FROM vrs_detail_info di 
INNER JOIN vrs_txn txn ON di.txnid = txn.objid 
INNER JOIN vrs_txn_task vt ON txn.taskid = vt.taskid 
INNER JOIN vrs_account_year ay ON txn.acctyearid = ay.objid 
INNER JOIN vw_vrs_vehicletype_field vf ON di.fieldid = vf.objid 
WHERE ay.acctid = $P{acctid}
AND NOT(txn.objid = $P{txnid})
AND txn.txndate < $P{txndate}
AND di.objid NOT IN (
	SELECT _v1.supersededid
    FROM vrs_detail_info _v1
    INNER JOIN vrs_txn _vt ON _v1.txnid = _vt.objid
    INNER JOIN vrs_account_year _ay ON _vt.acctyearid = _ay.objid  
    WHERE _ay.acctid=$P{acctid} 
    AND NOT(_v1.supersededid IS NULL)
    AND _vt.txndate < $P{txndate} 
) 
ORDER BY vf.sortorder  
DROP VIEW IF EXISTS vw_vrs_doc;
CREATE VIEW vw_vrs_doc AS
SELECT 
doc.*,
iss.issueno,
iss.dtissued,
iss.issuer_objid,
iss.issuer_name,
iss.expirydate,
txn.txntypeid AS txn_txntypeid,
txn.txnmode AS txn_txnmode
FROM  vrs_doc doc 
LEFT JOIN vrs_doc_issuance iss ON doc.issuanceid = iss.objid  
INNER JOIN vrs_txn txn ON doc.txnid = txn.objid 
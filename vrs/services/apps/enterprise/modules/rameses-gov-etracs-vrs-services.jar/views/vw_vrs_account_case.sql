DROP VIEW IF EXISTS vw_vrs_account_case;
CREATE VIEW vw_vrs_account_case AS
SELECT 
   ac.*,
   CASE WHEN superseder.objid IS NULL THEN 0 ELSE 1 END AS superseded,
   prev.particulars AS prev_particulars,
   prev.objid AS prev_objid 

FROM vrs_account_case ac 
LEFT JOIN vrs_account_case superseder ON ac.objid = superseder.supersededid
LEFT JOIN vrs_account_case prev ON prev.objid = ac.supersededid     
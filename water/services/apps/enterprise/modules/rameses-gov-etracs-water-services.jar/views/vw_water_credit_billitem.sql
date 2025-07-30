DROP VIEW IF EXISTS vw_water_credit_billitem;
CREATE VIEW vw_water_credit_billitem AS 
SELECT
abi.*,
cbi.paymentid

FROM water_abstract_billitem abi
INNER JOIN water_credit_billitem cbi ON cbi.objid = abi.objid 

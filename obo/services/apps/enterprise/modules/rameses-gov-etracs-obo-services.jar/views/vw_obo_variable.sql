DROP VIEW IF EXISTS vw_obo_variable;
CREATE VIEW vw_obo_variable AS 
SELECT ov.*,
dv.doctypeid 
FROM obo_variable ov 
INNER JOIN obo_doctype_variable dv ON ov.objid = dv.varid; 

@srcdb
@targetdb 

INSERT INTO @targetdb.sys_rule_fact 
SELECT * FROM @srcdb.sys_rule_fact WHERE domain IN ('TREASURY', 'ENTERPRISE'); 

INSERT INTO @targetdb.sys_rule_fact_field 
SELECT * FROM @srcdb.sys_rule_fact_field  
WHERE parentid IN ( SELECT objid FROM @srcdb.sys_rule_fact WHERE domain IN ('TREASURY', 'ENTERPRISE') );

INSERT INTO @targetdb.sys_rule_actiondef 
SELECT * FROM @srcdb.sys_rule_actiondef WHERE domain IN ('TREASURY', 'ENTERPRISE'); 

INSERT INTO @targetdb.sys_rule_actiondef_param 
SELECT * FROM @srcdb.sys_rule_actiondef_param 
WHERE parentid IN ( SELECT objid FROM @srcdb.sys_rule_actiondef WHERE domain IN ('TREASURY', 'ENTERPRISE') );


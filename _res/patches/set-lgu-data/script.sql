
set @_city_pin  = '043';
set @_city_name = 'CITY';



-- 
-- BEGIN PROCESS
-- 
set @_city_id  = replace(@_city_pin,'-','');
set @_city_idx = @_city_id;

-- 
-- delete previous data
-- 
set foreign_key_checks=0;

delete from barangay;
delete from municipality;
delete from city;
delete from province;
update sys_org set parent_objid=null, parent_orgclass=null;
delete from sys_org; 
delete from sys_orgclass; 

set foreign_key_checks=1;


-- 
-- insert org class
-- 
INSERT INTO `sys_orgclass` (`name`, `title`, `parentclass`, `handler`) 
VALUES ('EE', 'ECONOMIC ENTERPRISE', NULL, NULL);

INSERT INTO `sys_orgclass` (`name`, `title`, `parentclass`, `handler`) 
VALUES ('CITY', 'CITY', null, 'city');

INSERT INTO `sys_orgclass` (`name`, `title`, `parentclass`, `handler`) 
VALUES ('DISTRICT', 'DISTRICT', 'CITY', 'district');

INSERT INTO `sys_orgclass` (`name`, `title`, `parentclass`, `handler`) 
VALUES ('BARANGAY', 'BARANGAY', 'DISTRICT', 'barangay');


-- 
-- insert org
-- 
INSERT INTO `sys_org` (`objid`, `name`, `orgclass`, `parent_objid`, `parent_orgclass`, `code`, `root`, `txncode`) 
VALUES (@_city_id, @_city_name, 'CITY', null, null, @_city_pin, 1, NULL)
;


-- 
-- insert city
-- 
INSERT INTO `city` (
	`objid`, `state`, `indexno`, `pin`, `name`, `parentid`, 
	`mayor_name`, `mayor_title`, `mayor_office`, 
	`assessor_name`, `assessor_title`, `assessor_office`, 
	`treasurer_name`, `treasurer_title`, `treasurer_office`, 
	`address`, `fullname`
) 
VALUES (
	@_city_id, 'DRAFT', @_city_idx, @_city_pin, @_city_name, @_province_id, 
	'-', 'CITY MAYOR', 'OFFICE OF THE CITY MAYOR', 
	'-', 'CITY ASSESSOR', 'OFFICE OF THE CITY ASSESSOR', 
	'-', 'CITY TREASURER', 'OFFICE OF THE CITY TREASURER', 
	upper(concat(@_city_name, ', PHILIPPINES')), 
	upper(concat('CITY OF ', @_city_name))
);

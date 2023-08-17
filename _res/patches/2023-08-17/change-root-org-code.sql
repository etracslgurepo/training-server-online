
set @channel='00000'
;

-- 
-- BEGIN
-- 
set foreign_key_checks=0
;
update sys_org set 
	objid=@channel,
	code=@channel
where 
	objid='00000'
; 
update sys_org set 
	parent_objid=@channel
where 
	parent_objid='00000'
; 
update municipality set 
	objid=@channel 
where 
	objid='00000'
; 
update barangay set 
	parentid=@channel 
where 
	parentid='00000'
; 
set foreign_key_checks=1
;
-- 
-- END
-- 

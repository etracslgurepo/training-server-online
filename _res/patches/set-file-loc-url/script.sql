
set @_url  = '192.168.2.22'
;



-- 
-- BEGIN PROCESS
-- 
use training_etracs_2_5_05_03
;
update sys_fileloc set url = @_url
;
 
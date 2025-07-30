DROP VIEW IF EXISTS vw_water_expired_batch_bill;
CREATE VIEW vw_water_expired_batch_bill AS 
SELECT

bb.objid,
bg.description,
bg.state,
bg.tag,
bg.schedulegroupid,
bg.currentbatchid,
bg.acctgroupid,

bb.year,
bb.month,
bb.scheduleid,
bb.expirydate,
bb.task_state,
bb.reader_objid,
bb.reader_name

FROM water_billgroup bg 
INNER JOIN vw_water_batch_bill bb ON bg.currentbatchid = bb.objid 
WHERE bb.expirydate < NOW() AND bb.task_state = 'end'
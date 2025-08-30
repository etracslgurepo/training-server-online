[getActiveTaskList]
SELECT z.*, 
   NULL AS duration,
   CASE WHEN z.app_processname = task_parentprocessname THEN 0 ELSE 1 END AS subtask,

   CASE WHEN NOT(z.sectionid IS NULL) THEN 
        ( SELECT COUNT(*) 
          FROM obo_app_finding _ff
          INNER JOIN obo_checklist_item _fc ON _ff.checklistitemid = _fc.objid 
          INNER JOIN obo_taskitem_type tt ON tt.checklistid = _fc.parentid
          LEFT JOIN obo_app_finding _ff2 ON _ff2.supersededid = _ff.objid  
          WHERE _ff.appid=$P{appid}
          AND _ff.state = 2
          AND _ff2.objid IS NULL
          AND tt.sectionid = z.sectionid  
        )
        ELSE 
          ( SELECT COUNT(*) 
            FROM obo_app_finding _ff
            INNER JOIN obo_checklist_item _fc ON _ff.checklistitemid = _fc.objid 
            INNER JOIN obo_taskitem_type tt ON tt.checklistid = _fc.parentid
            INNER JOIN obo_section _os ON tt.sectionid = _os.objid 
            LEFT JOIN obo_app_finding _ff2 ON _ff2.supersededid = _ff.objid  
            WHERE _ff.appid=$P{appid}
            AND _ff.state = 2
            AND _ff2.objid IS NULL
            AND _os.org_objid IS NULL  
        ) 
          
    END AS findingcount    

FROM
   (SELECT 
      a.*,
      os.objid AS sectionid,
      os.org_objid AS org_objid,
      et.title AS type_title,
      et.sortindex AS type_sortindex,

      app.appno AS app_appno,
      app.title AS app_title,
      app.applicant_name AS app_applicant_name,
      app.trackingno AS app_trackingno,
      app.task_state AS app_task_state,
      app.processname AS app_processname, 
      app.schemaname AS app_schemaname, 

      t.state AS task_state,
      t.dtcreated AS task_dtcreated,
      t.startdate AS task_startdate,
      t.enddate AS task_enddate,
      t.assignee_objid AS task_assignee_objid,
      t.assignee_name AS task_assignee_name,
      t.actor_objid AS task_actor_objid,
      t.actor_name AS task_actor_name,
      sn.title AS task_title,
      sn.tracktime AS task_tracktime,
      et.processname AS task_processname,
      et.parentprocessname AS task_parentprocessname,

      ( SELECT TOP 1 dtcreated 
        FROM obo_app_taskitem_task _tit 
        INNER JOIN obo_app_taskitem _ti ON _tit.refid = _ti.objid 
        INNER JOIN obo_taskitem_type _tt ON _ti.typeid = _tt.objid 
        INNER JOIN sys_wf_node _wf ON _wf.name = _tit.state AND _wf.processname = _tt.processname    
        WHERE _ti.objid = a.objid AND _wf.tracktime = 1
        ORDER BY _tit.dtcreated DESC ) AS startdate,

      ( SELECT TOP 1 dtcreated FROM obo_app_taskitem_task WHERE state = 'end' 
        AND refid = a.objid ORDER BY dtcreated DESC ) AS enddate

   FROM (
   	SELECT * FROM obo_app_taskitem 
   	WHERE appid = $P{appid} 
   ) a
   INNER JOIN obo_app_taskitem_task t ON a.taskid = t.taskid 
   INNER JOIN obo_taskitem_type et ON a.typeid = et.objid 
   LEFT JOIN obo_section os ON et.sectionid = os.objid
   INNER JOIN sys_wf_node sn ON sn.processname = et.processname AND sn.name = t.state 
   INNER JOIN vw_obo_app app ON a.appid = app.objid  
   LEFT JOIN obo_app_taskitem ss ON ss.supersededid = a.objid 
   WHERE ss.objid IS NULL 
   ) z
ORDER BY z.type_sortindex

[getHasOpenTasks]
SELECT ti.objid, tp.title   
FROM obo_app_taskitem ti
INNER JOIN obo_taskitem_type tp ON ti.typeid = tp.objid 
INNER JOIN obo_app_taskitem_task tt ON ti.taskid = tt.taskid
LEFT JOIN obo_app_taskitem ss ON ss.supersededid = ti.objid  
WHERE ti.appid = $P{appid}
AND tp.parentprocessname = $P{parentprocessname}
AND tt.state <> 'end' 
AND ss.objid IS NULL 

#this is called by removeTaskitem  
[getSubTasks]
SELECT ti.objid, ti.typeid, tit.state AS task_state 
FROM obo_app_taskitem ti 
INNER JOIN obo_taskitem_type tp ON ti.typeid = tp.objid 
INNER JOIn obo_app_taskitem_task tit ON ti.taskid = tit.taskid 
LEFT JOIN obo_app_taskitem ss ON ss.supersededid = ti.objid 
WHERE ti.appid = $P{appid}
AND tp.parentprocessname = $P{parentprocessname} 
AND ss.objid IS NULL

[createNewTasks]
INSERT INTO obo_app_taskitem 
(objid,appid,typeid,revision, supersededid )  
SELECT  
     ('OTSKITM'+ convert(varchar(50), NEWID())) AS objid,
     $P{appid} AS appid,
     y.typeid,
     0 AS revision,
     NULL AS supersededid      
FROM 
  (SELECT tp.objid AS typeid
  FROM obo_taskitem_type tp
  WHERE tp.required = 1
  AND tp.parentprocessname = $P{parentprocessname}
  UNION 
  SELECT 
  tp.objid AS typeid
  FROM obo_taskitem_type tp
  WHERE tp.required = 0 
  AND tp.parentprocessname = $P{parentprocessname}
  AND EXISTS 
  (
      SELECT 1   
      FROM obo_app_doc od 
      INNER JOIN obo_doctype dt ON od.doctypeid = dt.objid
      WHERE od.appid = $P{appid}
      AND dt.sectionid = tp.sectionid 
  )
) y
WHERE NOT EXISTS (
  SELECT 1 FROM obo_app_taskitem 
  WHERE appid = $P{appid} AND typeid = y.typeid AND revision = 0     
) 
  
UNION 

SELECT 
   ('OTSKITM' + convert(varchar(50), NEWID())) AS objid,
   $P{appid} AS appid,
   ti.typeid,
   ISNULL(ti.revision,0) + 1 AS revision,
   ti.objid AS supersededid   
FROM obo_app_taskitem ti
INNER JOIN obo_taskitem_type tp ON ti.typeid = tp.objid 
LEFT JOIN obo_app_taskitem ss ON ss.supersededid = ti.objid
WHERE ti.appid = $P{appid}
AND tp.parentprocessname = $P{parentprocessname}
AND ss.objid IS NULL 
AND NOT(tp.sectionid IS NULL) 
AND EXISTS 
( SELECT 1 FROM obo_app_finding af 
  INNER JOIN obo_checklist_item cf ON af.checklistitemid = cf.objid 
  INNER JOIN obo_taskitem_type tit ON cf.parentid=tit.checklistid
  LEFT JOIN obo_app_finding af2 ON af2.supersededid = af.objid 
  WHERE  af.appid = ti.appid AND af.state=2 AND af2.objid IS NULL AND tit.sectionid = tp.sectionid ) 

UNION 

SELECT 
   ('OTSKITM' + convert(varchar(50), NEWID())) AS objid,
   $P{appid} AS appid,
   ti.typeid,
   ISNULL(ti.revision,0) + 1 AS revision,
   ti.objid AS supersededid   
FROM obo_app_taskitem ti
INNER JOIN obo_taskitem_type tp ON ti.typeid = tp.objid 
LEFT JOIN obo_app_taskitem ss ON ss.supersededid = ti.objid
WHERE ti.appid = $P{appid}
AND tp.parentprocessname = $P{parentprocessname}
AND ss.objid IS NULL 
AND tp.sectionid IS NULL
AND EXISTS 
( SELECT 1 FROM obo_app_finding af 
  INNER JOIN obo_checklist_item cf ON af.checklistitemid = cf.objid 
  INNER JOIN obo_taskitem_type tit ON cf.parentid=tit.checklistid
  INNER JOIN obo_section os ON tit.sectionid = os.objid 
  LEFT JOIN obo_app_finding af2 ON af2.supersededid = af.objid 
  WHERE  af.appid = ti.appid AND af.state=2 AND af2.objid IS NULL 
  AND os.org_objid IS NULL ) 




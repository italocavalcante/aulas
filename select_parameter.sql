set lines 200
set pages 1000
col name format a25
col value format a25
col update_comment format a50
col sid format a10
select name,value,update_comment from v$parameter where name in
('undo_tablespace','sga_target','sga_max_size','memory_target','memory_max_target',
'pga_aggregate_target','pga_aggregate_limit','db_name','db_unique_name'
,'cluster_database','undo_tablespace','log_archive_dest','log_archive_dest_1',
'db_create_file_dest','db_create_online_log_dest%','db_recovery_file_dest','job_queue_processes') order by name;

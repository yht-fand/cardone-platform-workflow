UPDATE "c1_wf_task_handle" SET END_DATE = NOW(), DATA_STATE_CODE = '0' WHERE
wf_task_handle_id = ANY(string_to_array(:wfTaskHandleIds, ','))
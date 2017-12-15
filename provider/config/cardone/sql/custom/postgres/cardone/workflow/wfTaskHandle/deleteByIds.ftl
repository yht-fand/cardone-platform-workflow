DELETE FROM "c1_wf_task_handle" WHERE
wf_task_handle_id = ANY(string_to_array(:wfTaskHandleIds, ','))
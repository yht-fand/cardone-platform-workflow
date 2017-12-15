DELETE FROM "c1_wf_task_handle_retry" WHERE
wf_task_handle_retry_id = ANY(string_to_array(:wfTaskHandleRetryIds, ','))
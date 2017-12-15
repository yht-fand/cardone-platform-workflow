UPDATE "c1_wf_task_handle_retry" SET END_DATE = NOW(), DATA_STATE_CODE = '0' WHERE
wf_task_handle_retry_id = ANY(string_to_array(:wfTaskHandleRetryIds, ','))
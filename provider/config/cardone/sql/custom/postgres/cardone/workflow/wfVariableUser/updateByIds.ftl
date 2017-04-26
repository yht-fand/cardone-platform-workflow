UPDATE c1_wf_variable_user SET END_DATE = NOW(), DATA_STATE_CODE = '0' WHERE
wf_variable_user_id = ANY(string_to_array(:wfVariableUserIds, ','))
DELETE FROM c1_wf_variable_user WHERE
wf_variable_user_id = ANY(string_to_array(:wfVariableUserIds, ','))
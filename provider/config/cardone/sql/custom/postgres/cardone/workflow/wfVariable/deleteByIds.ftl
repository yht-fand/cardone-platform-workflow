DELETE FROM c1_wf_variable WHERE
wf_variable_id = ANY(string_to_array(:wfVariableIds, ','))
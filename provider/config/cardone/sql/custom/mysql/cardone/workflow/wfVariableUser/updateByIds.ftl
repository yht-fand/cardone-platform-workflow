UPDATE c1_wf_variable_user SET END_DATE = NOW(), DATA_STATE_CODE = '0' WHERE INSTR(:wfVariableUserIds, WF_VARIABLE_USER_ID) > 0
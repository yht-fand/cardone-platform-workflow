SELECT t.WFTASKHANDLE_CODE, t.NAME FROM "c1_wf_task_handle" t
where t.state_code ='1' and t.data_state_code = '1'
<#if cardone.StringUtils.isBlank(notTerm) >
    <#if cardone.StringUtils.isNotBlank(term)>
    and (strpos(t.NAME, :term) > 0 OR strpos(t.WFTASKHANDLE_CODE, :term) > 0)
    </#if>
</#if>
ORDER BY t.ORDER_, t.WFTASKHANDLE_CODE
LIMIT 20
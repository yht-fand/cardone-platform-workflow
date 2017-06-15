SELECT d.WFVARIABLEUSER_CODE, d.NAME FROM c1_wf_variable_user d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE strpos(d.NAME, :term) > 0 OR strpos(d.WFVARIABLEUSER_CODE, :term) > 0
</#if>
ORDER BY d.ORDER_BY_, d.WFVARIABLEUSER_CODE
LIMIT 20
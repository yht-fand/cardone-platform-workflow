SELECT d.WFVARIABLE_CODE  ,d.NAME FROM c1_wf_variable d
<#if cardone.StringUtils.isNotBlank(term)>
WHERE strpos(d.NAME, :term) > 0 OR strpos(d.WFVARIABLE_CODE, :term) > 0
</#if>
ORDER BY d.ORDER_BY_, d.WFVARIABLE_CODE
LIMIT 20
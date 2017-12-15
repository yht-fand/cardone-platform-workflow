DELETE FROM "c1_wf_task_handle"
<#include "where.ftl">
<#if (prefixName && !(delete_all??))>
WHERE 1 = 2
</#if>
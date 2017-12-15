DELETE FROM "c1_wf_variable_user"
<#include "where.ftl">
<#if (prefixName && !(delete_all??))>
WHERE 1 = 2
</#if>
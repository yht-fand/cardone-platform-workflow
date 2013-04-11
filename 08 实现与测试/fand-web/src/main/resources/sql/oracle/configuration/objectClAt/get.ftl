SELECT
<#assign prefixName=' '>
<#if (get__id??)>
${prefixName} ID_ id
	<#assign prefixName=','>
</#if>
<#if (get__clobVa??)>
${prefixName} CLOB_VA_ clobVa
	<#assign prefixName=','>
</#if>
<#if prefixName == ' '>
  ID_ id
, CLOB_VA_ clobVa
</#if>
FROM FD_OBJECT_CL_AT
<#include "where_.ftl">
<#if (prefixName!) == 'WHERE' && (get__all??)>
WHERE 1 = 2
</#if>
SELECT
<#assign prefixName=' '>
<#if (find__id??)>
${prefixName} ID_ id
	<#assign prefixName=','>
</#if>
<#if (find__clobVa??)>
${prefixName} CLOB_VA_ clobVa
	<#assign prefixName=','>
</#if>
<#if prefixName == ' '>
  ID_ id
, CLOB_VA_ clobVa
</#if>
FROM FD_OBJECT_CL_AT
<#include "where_.ftl">
<#if (prefixName!) == 'WHERE' && (find__all??)>
WHERE 1 = 2
</#if>
<#assign prefixName='ORDER BY'>
<#if (order__by__id??)>
${prefixName} ID_ ${order__by__id_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__clobVa??)>
${prefixName} CLOB_VA_ ${order__by__clobVa_value}
	<#assign prefixName=','>
</#if>

SELECT
<#assign prefixName=' '>
<#if (get__id??)>
${prefixName} ID_ id
	<#assign prefixName=','>
</#if>
<#if (get__byteVa??)>
${prefixName} BYTE_VA_ byteVa
	<#assign prefixName=','>
</#if>
<#if prefixName == ' '>
  ID_ id
, BYTE_VA_ byteVa
</#if>
FROM FD_OBJECT_BL_AT
<#include "where_.ftl">
<#if (prefixName!) == 'WHERE' && (get__all??)>
WHERE 1 = 2
</#if>
SELECT
<#assign prefixName=' '>
<#if (find__id??)>
${prefixName} ID_ id
	<#assign prefixName=','>
</#if>
<#if (find__byteVa??)>
${prefixName} BYTE_VA_ byteVa
	<#assign prefixName=','>
</#if>
<#if prefixName == ' '>
  ID_ id
, BYTE_VA_ byteVa
</#if>
FROM FD_OBJECT_BL_AT
<#include "where_.ftl">
<#if (prefixName!) == 'WHERE' && (find__all??)>
WHERE 1 = 2
</#if>
<#assign prefixName='ORDER BY'>
<#if (order__by__id??)>
${prefixName} ID_ ${order__by__id_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__byteVa??)>
${prefixName} BYTE_VA_ ${order__by__byteVa_value}
	<#assign prefixName=','>
</#if>

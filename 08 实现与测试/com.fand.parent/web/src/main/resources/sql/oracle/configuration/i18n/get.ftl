SELECT
<#assign prefixName=' '>
<#if (get__id??)>
${prefixName} ID_ id
	<#assign prefixName=','>
</#if>
<#if (get__code??)>
${prefixName} CODE_ code
	<#assign prefixName=','>
</#if>
<#if prefixName == ' '>
  ID_ id
, CODE_ code
</#if>
FROM FD_I18N
<#include "where_.ftl">
<#if (prefixName!) == 'WHERE' && (get__all??)>
WHERE 1 = 2
</#if>
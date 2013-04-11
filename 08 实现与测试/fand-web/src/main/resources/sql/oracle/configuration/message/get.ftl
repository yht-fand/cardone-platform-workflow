SELECT
<#assign prefixName=' '>
<#if (get__id??)>
${prefixName} ID_ id
	<#assign prefixName=','>
</#if>
<#if (get__content??)>
${prefixName} CONTENT_ content
	<#assign prefixName=','>
</#if>
<#if (get__localeId??)>
${prefixName} LOCALE_ID_ localeId
	<#assign prefixName=','>
</#if>
<#if (get__code??)>
${prefixName} CODE_ code
	<#assign prefixName=','>
</#if>
<#if prefixName == ' '>
  ID_ id
, CONTENT_ content
, LOCALE_ID_ localeId
, CODE_ code
</#if>
FROM FD_MESSAGE
<#include "where_.ftl">
<#if (prefixName!) == 'WHERE' && (get__all??)>
WHERE 1 = 2
</#if>
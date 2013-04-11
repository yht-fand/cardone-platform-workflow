SELECT
<#assign prefixName=' '>
<#if (find__id??)>
${prefixName} ID_ id
	<#assign prefixName=','>
</#if>
<#if (find__content??)>
${prefixName} CONTENT_ content
	<#assign prefixName=','>
</#if>
<#if (find__localeId??)>
${prefixName} LOCALE_ID_ localeId
	<#assign prefixName=','>
</#if>
<#if (find__code??)>
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
<#if (prefixName!) == 'WHERE' && (find__all??)>
WHERE 1 = 2
</#if>
<#assign prefixName='ORDER BY'>
<#if (order__by__id??)>
${prefixName} ID_ ${order__by__id_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__content??)>
${prefixName} CONTENT_ ${order__by__content_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__localeId??)>
${prefixName} LOCALE_ID_ ${order__by__localeId_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__code??)>
${prefixName} CODE_ ${order__by__code_value}
	<#assign prefixName=','>
</#if>

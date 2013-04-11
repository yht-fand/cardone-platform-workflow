UPDATE FD_MESSAGE
<#assign prefixName='SET'>
<#if (save__id??)>
	<#if (save__id__value??)>
${prefixName} ID_ = :save__id__value
	<#else>
${prefixName} ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__content??)>
	<#if (save__content__value??)>
${prefixName} CONTENT_ = :save__content__value
	<#else>
${prefixName} CONTENT_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__localeId??)>
	<#if (save__localeId__value??)>
${prefixName} LOCALE_ID_ = :save__localeId__value
	<#else>
${prefixName} LOCALE_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__code??)>
	<#if (save__code__value??)>
${prefixName} CODE_ = :save__code__value
	<#else>
${prefixName} CODE_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#include "where_.ftl">
<#if (prefixName!) == 'WHERE' && (save__all??)>
WHERE 1 = 2
</#if>
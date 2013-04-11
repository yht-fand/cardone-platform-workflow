UPDATE FD_OBJECT_BL_AT
<#assign prefixName='SET'>
<#if (save__id??)>
	<#if (save__id__value??)>
${prefixName} ID_ = :save__id__value
	<#else>
${prefixName} ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__byteVa??)>
	<#if (save__byteVa__value??)>
${prefixName} BYTE_VA_ = :save__byteVa__value
	<#else>
${prefixName} BYTE_VA_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#include "where_.ftl">
<#if (prefixName!) == 'WHERE' && (save__all??)>
WHERE 1 = 2
</#if>
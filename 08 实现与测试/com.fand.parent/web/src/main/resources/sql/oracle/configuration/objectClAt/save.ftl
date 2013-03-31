UPDATE FD_OBJECT_CL_AT
<#assign prefixName='SET'>
<#if (save__id??)>
	<#if (save__id__value??)>
${prefixName} ID_ = :save__id__value
	<#else>
${prefixName} ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__clobVa??)>
	<#if (save__clobVa__value??)>
${prefixName} CLOB_VA_ = :save__clobVa__value
	<#else>
${prefixName} CLOB_VA_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#include "where_.ftl">
<#if (prefixName!) == 'WHERE' && (save__all??)>
WHERE 1 = 2
</#if>
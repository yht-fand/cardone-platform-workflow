UPDATE FD_OBJECT_BL_AT T
<#assign prefixName='SET'>
<#if (update__id??)>
	<#if (update__id__value??)>
${prefixName} T.ID_ = :update__id__value
	<#else>
${prefixName} T.ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__endTi??)>
	<#if (update__endTi__value??)>
${prefixName} T.END_TI_ = :update__endTi__value
	<#else>
${prefixName} T.END_TI_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__byteVa??)>
	<#if (update__byteVa__value??)>
${prefixName} T.BYTE_VA_ = :update__byteVa__value
	<#else>
${prefixName} T.BYTE_VA_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__beginTi??)>
	<#if (update__beginTi__value??)>
${prefixName} T.BEGIN_TI_ = :update__beginTi__value
	<#else>
${prefixName} T.BEGIN_TI_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#include "whereObjectBlAtBy1.ftl">
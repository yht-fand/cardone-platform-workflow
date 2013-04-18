UPDATE FD_MESSAGE T
<#assign prefixName='SET'>
<#if (update__id??)>
	<#if (update__id__value??)>
${prefixName} T.ID_ = :update__id__value
	<#else>
${prefixName} T.ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__content??)>
	<#if (update__content__value??)>
${prefixName} T.CONTENT_ = :update__content__value
	<#else>
${prefixName} T.CONTENT_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__localeId??)>
	<#if (update__localeId__value??)>
${prefixName} T.LOCALE_ID_ = :update__localeId__value
	<#else>
${prefixName} T.LOCALE_ID_ = NULL
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
<#if (update__code??)>
	<#if (update__code__value??)>
${prefixName} T.CODE_ = :update__code__value
	<#else>
${prefixName} T.CODE_ = NULL
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
<#include "whereMessageBy1.ftl">
SELECT
<#assign prefixName=' '>
<#if (select__id??)>
${prefixName} T.ID_ AS id
	<#assign prefixName=','>
</#if>
<#if (select__content??)>
${prefixName} T.CONTENT_ AS content
	<#assign prefixName=','>
</#if>
<#if (select__localeId??)>
${prefixName} T.LOCALE_ID_ AS localeId
	<#assign prefixName=','>
</#if>
<#if (select__endTi??)>
${prefixName} T.END_TI_ AS endTi
	<#assign prefixName=','>
</#if>
<#if (select__code??)>
${prefixName} T.CODE_ AS code
	<#assign prefixName=','>
</#if>
<#if (select__beginTi??)>
${prefixName} T.BEGIN_TI_ AS beginTi
	<#assign prefixName=','>
</#if>
<#if prefixName == ' '>
  T.ID_ AS id
, T.CONTENT_ AS content
, T.LOCALE_ID_ AS localeId
, T.END_TI_ AS endTi
, T.CODE_ AS code
, T.BEGIN_TI_ AS beginTi
</#if>
FROM FD_MESSAGE T
<#include "whereMessageBy1.ftl">
<#assign prefixName='ORDER BY'>
<#if (order__by__id??)>
${prefixName} T.ID_ ${order__by__id_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__content??)>
${prefixName} T.CONTENT_ ${order__by__content_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__localeId??)>
${prefixName} T.LOCALE_ID_ ${order__by__localeId_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__endTi??)>
${prefixName} T.END_TI_ ${order__by__endTi_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__code??)>
${prefixName} T.CODE_ ${order__by__code_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__beginTi??)>
${prefixName} T.BEGIN_TI_ ${order__by__beginTi_value}
	<#assign prefixName=','>
</#if>

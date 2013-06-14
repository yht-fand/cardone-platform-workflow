SELECT
<#assign prefixName=' '>
<#if (select__id??)>
${prefixName} T.ID_ AS id
	<#assign prefixName=','>
</#if>
<#if (select__dictionaryTyId??)>
${prefixName} T.DICTIONARY_TY_ID_ AS dictionaryTyId
	<#assign prefixName=','>
</#if>
<#if (select__order??)>
${prefixName} T.ORDER_ AS order
	<#assign prefixName=','>
</#if>
<#if (select__endTi??)>
${prefixName} T.END_TI_ AS endTi
	<#assign prefixName=','>
</#if>
<#if (select__name??)>
${prefixName} T.NAME_ AS name
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
, T.DICTIONARY_TY_ID_ AS dictionaryTyId
, T.ORDER_ AS order
, T.END_TI_ AS endTi
, T.NAME_ AS name
, T.CODE_ AS code
, T.BEGIN_TI_ AS beginTi
</#if>
FROM FD_DICTIONARY T
<#include "whereDictionaryBy1.ftl">
<#assign prefixName='ORDER BY'>
<#if (order__by__id??)>
${prefixName} T.ID_ ${order__by__id_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__dictionaryTyId??)>
${prefixName} T.DICTIONARY_TY_ID_ ${order__by__dictionaryTyId_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__order??)>
${prefixName} T.ORDER_ ${order__by__order_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__endTi??)>
${prefixName} T.END_TI_ ${order__by__endTi_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__name??)>
${prefixName} T.NAME_ ${order__by__name_value}
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

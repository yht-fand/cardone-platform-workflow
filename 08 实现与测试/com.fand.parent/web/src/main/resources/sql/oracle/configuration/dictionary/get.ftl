SELECT
<#assign prefixName=' '>
<#if (get__id??)>
${prefixName} ID_ id
	<#assign prefixName=','>
</#if>
<#if (get__dictionaryTyId??)>
${prefixName} DICTIONARY_TY_ID_ dictionaryTyId
	<#assign prefixName=','>
</#if>
<#if (get__name??)>
${prefixName} NAME_ name
	<#assign prefixName=','>
</#if>
<#if (get__orderNu??)>
${prefixName} ORDER_NU_ orderNu
	<#assign prefixName=','>
</#if>
<#if (get__code??)>
${prefixName} CODE_ code
	<#assign prefixName=','>
</#if>
<#if prefixName == ' '>
  ID_ id
, DICTIONARY_TY_ID_ dictionaryTyId
, NAME_ name
, ORDER_NU_ orderNu
, CODE_ code
</#if>
FROM FD_DICTIONARY
<#include "where_.ftl">
<#if (prefixName!) == 'WHERE' && (get__all??)>
WHERE 1 = 2
</#if>
SELECT
<#assign prefixName=' '>
<#if (get__id??)>
${prefixName} ID_ id
	<#assign prefixName=','>
</#if>
<#if (get__parentId??)>
${prefixName} PARENT_ID_ parentId
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
, PARENT_ID_ parentId
, NAME_ name
, ORDER_NU_ orderNu
, CODE_ code
</#if>
FROM FD_DICTIONARY_TY
<#include "where_.ftl">
<#if (prefixName!) == 'WHERE' && (get__all??)>
WHERE 1 = 2
</#if>
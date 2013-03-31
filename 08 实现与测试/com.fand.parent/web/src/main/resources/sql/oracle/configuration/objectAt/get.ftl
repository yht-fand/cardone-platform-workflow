SELECT
<#assign prefixName=' '>
<#if (get__id??)>
${prefixName} ID_ id
	<#assign prefixName=','>
</#if>
<#if (get__stringVa??)>
${prefixName} STRING_VA_ stringVa
	<#assign prefixName=','>
</#if>
<#if (get__doubleVa??)>
${prefixName} DOUBLE_VA_ doubleVa
	<#assign prefixName=','>
</#if>
<#if (get__objectTyId??)>
${prefixName} OBJECT_TY_ID_ objectTyId
	<#assign prefixName=','>
</#if>
<#if (get__dateVa??)>
${prefixName} DATE_VA_ dateVa
	<#assign prefixName=','>
</#if>
<#if (get__objectId??)>
${prefixName} OBJECT_ID_ objectId
	<#assign prefixName=','>
</#if>
<#if (get__code??)>
${prefixName} CODE_ code
	<#assign prefixName=','>
</#if>
<#if (get__typeId??)>
${prefixName} TYPE_ID_ typeId
	<#assign prefixName=','>
</#if>
<#if (get__longVa??)>
${prefixName} LONG_VA_ longVa
	<#assign prefixName=','>
</#if>
<#if (get__textVa??)>
${prefixName} TEXT_VA_ textVa
	<#assign prefixName=','>
</#if>
<#if prefixName == ' '>
  ID_ id
, STRING_VA_ stringVa
, DOUBLE_VA_ doubleVa
, OBJECT_TY_ID_ objectTyId
, DATE_VA_ dateVa
, OBJECT_ID_ objectId
, CODE_ code
, TYPE_ID_ typeId
, LONG_VA_ longVa
, TEXT_VA_ textVa
</#if>
FROM FD_OBJECT_AT
<#include "where_.ftl">
<#if (prefixName!) == 'WHERE' && (get__all??)>
WHERE 1 = 2
</#if>
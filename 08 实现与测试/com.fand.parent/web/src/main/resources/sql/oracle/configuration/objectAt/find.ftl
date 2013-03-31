SELECT
<#assign prefixName=' '>
<#if (find__id??)>
${prefixName} ID_ id
	<#assign prefixName=','>
</#if>
<#if (find__stringVa??)>
${prefixName} STRING_VA_ stringVa
	<#assign prefixName=','>
</#if>
<#if (find__doubleVa??)>
${prefixName} DOUBLE_VA_ doubleVa
	<#assign prefixName=','>
</#if>
<#if (find__objectTyId??)>
${prefixName} OBJECT_TY_ID_ objectTyId
	<#assign prefixName=','>
</#if>
<#if (find__dateVa??)>
${prefixName} DATE_VA_ dateVa
	<#assign prefixName=','>
</#if>
<#if (find__objectId??)>
${prefixName} OBJECT_ID_ objectId
	<#assign prefixName=','>
</#if>
<#if (find__code??)>
${prefixName} CODE_ code
	<#assign prefixName=','>
</#if>
<#if (find__typeId??)>
${prefixName} TYPE_ID_ typeId
	<#assign prefixName=','>
</#if>
<#if (find__longVa??)>
${prefixName} LONG_VA_ longVa
	<#assign prefixName=','>
</#if>
<#if (find__textVa??)>
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
<#if (prefixName!) == 'WHERE' && (find__all??)>
WHERE 1 = 2
</#if>
<#assign prefixName='ORDER BY'>
<#if (order__by__id??)>
${prefixName} ID_ ${order__by__id_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__stringVa??)>
${prefixName} STRING_VA_ ${order__by__stringVa_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__doubleVa??)>
${prefixName} DOUBLE_VA_ ${order__by__doubleVa_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__objectTyId??)>
${prefixName} OBJECT_TY_ID_ ${order__by__objectTyId_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__dateVa??)>
${prefixName} DATE_VA_ ${order__by__dateVa_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__objectId??)>
${prefixName} OBJECT_ID_ ${order__by__objectId_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__code??)>
${prefixName} CODE_ ${order__by__code_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__typeId??)>
${prefixName} TYPE_ID_ ${order__by__typeId_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__longVa??)>
${prefixName} LONG_VA_ ${order__by__longVa_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__textVa??)>
${prefixName} TEXT_VA_ ${order__by__textVa_value}
	<#assign prefixName=','>
</#if>

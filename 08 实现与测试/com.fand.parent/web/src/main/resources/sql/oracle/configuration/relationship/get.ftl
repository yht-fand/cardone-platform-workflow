SELECT
<#assign prefixName=' '>
<#if (get__object3Id??)>
${prefixName} OBJECT_3_ID_ object3Id
	<#assign prefixName=','>
</#if>
<#if (get__object6TyId??)>
${prefixName} OBJECT_6_TY_ID_ object6TyId
	<#assign prefixName=','>
</#if>
<#if (get__object1TyId??)>
${prefixName} OBJECT_1_TY_ID_ object1TyId
	<#assign prefixName=','>
</#if>
<#if (get__object4TyId??)>
${prefixName} OBJECT_4_TY_ID_ object4TyId
	<#assign prefixName=','>
</#if>
<#if (get__object7TyId??)>
${prefixName} OBJECT_7_TY_ID_ object7TyId
	<#assign prefixName=','>
</#if>
<#if (get__object4Id??)>
${prefixName} OBJECT_4_ID_ object4Id
	<#assign prefixName=','>
</#if>
<#if (get__object7Id??)>
${prefixName} OBJECT_7_ID_ object7Id
	<#assign prefixName=','>
</#if>
<#if (get__id??)>
${prefixName} ID_ id
	<#assign prefixName=','>
</#if>
<#if (get__object2TyId??)>
${prefixName} OBJECT_2_TY_ID_ object2TyId
	<#assign prefixName=','>
</#if>
<#if (get__object8TyId??)>
${prefixName} OBJECT_8_TY_ID_ object8TyId
	<#assign prefixName=','>
</#if>
<#if (get__object8Id??)>
${prefixName} OBJECT_8_ID_ object8Id
	<#assign prefixName=','>
</#if>
<#if (get__object6Id??)>
${prefixName} OBJECT_6_ID_ object6Id
	<#assign prefixName=','>
</#if>
<#if (get__object5Id??)>
${prefixName} OBJECT_5_ID_ object5Id
	<#assign prefixName=','>
</#if>
<#if (get__object5TyId??)>
${prefixName} OBJECT_5_TY_ID_ object5TyId
	<#assign prefixName=','>
</#if>
<#if (get__object3TyId??)>
${prefixName} OBJECT_3_TY_ID_ object3TyId
	<#assign prefixName=','>
</#if>
<#if (get__object1Id??)>
${prefixName} OBJECT_1_ID_ object1Id
	<#assign prefixName=','>
</#if>
<#if (get__object2Id??)>
${prefixName} OBJECT_2_ID_ object2Id
	<#assign prefixName=','>
</#if>
<#if (get__object9TyId??)>
${prefixName} OBJECT_9_TY_ID_ object9TyId
	<#assign prefixName=','>
</#if>
<#if (get__object9Id??)>
${prefixName} OBJECT_9_ID_ object9Id
	<#assign prefixName=','>
</#if>
<#if prefixName == ' '>
  OBJECT_3_ID_ object3Id
, OBJECT_6_TY_ID_ object6TyId
, OBJECT_1_TY_ID_ object1TyId
, OBJECT_4_TY_ID_ object4TyId
, OBJECT_7_TY_ID_ object7TyId
, OBJECT_4_ID_ object4Id
, OBJECT_7_ID_ object7Id
, ID_ id
, OBJECT_2_TY_ID_ object2TyId
, OBJECT_8_TY_ID_ object8TyId
, OBJECT_8_ID_ object8Id
, OBJECT_6_ID_ object6Id
, OBJECT_5_ID_ object5Id
, OBJECT_5_TY_ID_ object5TyId
, OBJECT_3_TY_ID_ object3TyId
, OBJECT_1_ID_ object1Id
, OBJECT_2_ID_ object2Id
, OBJECT_9_TY_ID_ object9TyId
, OBJECT_9_ID_ object9Id
</#if>
FROM FD_RELATIONSHIP
<#include "where_.ftl">
<#if (prefixName!) == 'WHERE' && (get__all??)>
WHERE 1 = 2
</#if>
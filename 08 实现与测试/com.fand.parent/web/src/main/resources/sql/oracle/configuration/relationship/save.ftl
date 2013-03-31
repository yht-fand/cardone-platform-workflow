UPDATE FD_RELATIONSHIP
<#assign prefixName='SET'>
<#if (save__object3Id??)>
	<#if (save__object3Id__value??)>
${prefixName} OBJECT_3_ID_ = :save__object3Id__value
	<#else>
${prefixName} OBJECT_3_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__object6TyId??)>
	<#if (save__object6TyId__value??)>
${prefixName} OBJECT_6_TY_ID_ = :save__object6TyId__value
	<#else>
${prefixName} OBJECT_6_TY_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__object1TyId??)>
	<#if (save__object1TyId__value??)>
${prefixName} OBJECT_1_TY_ID_ = :save__object1TyId__value
	<#else>
${prefixName} OBJECT_1_TY_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__object4TyId??)>
	<#if (save__object4TyId__value??)>
${prefixName} OBJECT_4_TY_ID_ = :save__object4TyId__value
	<#else>
${prefixName} OBJECT_4_TY_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__object7TyId??)>
	<#if (save__object7TyId__value??)>
${prefixName} OBJECT_7_TY_ID_ = :save__object7TyId__value
	<#else>
${prefixName} OBJECT_7_TY_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__object4Id??)>
	<#if (save__object4Id__value??)>
${prefixName} OBJECT_4_ID_ = :save__object4Id__value
	<#else>
${prefixName} OBJECT_4_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__object7Id??)>
	<#if (save__object7Id__value??)>
${prefixName} OBJECT_7_ID_ = :save__object7Id__value
	<#else>
${prefixName} OBJECT_7_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__id??)>
	<#if (save__id__value??)>
${prefixName} ID_ = :save__id__value
	<#else>
${prefixName} ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__object2TyId??)>
	<#if (save__object2TyId__value??)>
${prefixName} OBJECT_2_TY_ID_ = :save__object2TyId__value
	<#else>
${prefixName} OBJECT_2_TY_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__object8TyId??)>
	<#if (save__object8TyId__value??)>
${prefixName} OBJECT_8_TY_ID_ = :save__object8TyId__value
	<#else>
${prefixName} OBJECT_8_TY_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__object8Id??)>
	<#if (save__object8Id__value??)>
${prefixName} OBJECT_8_ID_ = :save__object8Id__value
	<#else>
${prefixName} OBJECT_8_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__object6Id??)>
	<#if (save__object6Id__value??)>
${prefixName} OBJECT_6_ID_ = :save__object6Id__value
	<#else>
${prefixName} OBJECT_6_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__object5Id??)>
	<#if (save__object5Id__value??)>
${prefixName} OBJECT_5_ID_ = :save__object5Id__value
	<#else>
${prefixName} OBJECT_5_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__object5TyId??)>
	<#if (save__object5TyId__value??)>
${prefixName} OBJECT_5_TY_ID_ = :save__object5TyId__value
	<#else>
${prefixName} OBJECT_5_TY_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__object3TyId??)>
	<#if (save__object3TyId__value??)>
${prefixName} OBJECT_3_TY_ID_ = :save__object3TyId__value
	<#else>
${prefixName} OBJECT_3_TY_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__object1Id??)>
	<#if (save__object1Id__value??)>
${prefixName} OBJECT_1_ID_ = :save__object1Id__value
	<#else>
${prefixName} OBJECT_1_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__object2Id??)>
	<#if (save__object2Id__value??)>
${prefixName} OBJECT_2_ID_ = :save__object2Id__value
	<#else>
${prefixName} OBJECT_2_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__object9TyId??)>
	<#if (save__object9TyId__value??)>
${prefixName} OBJECT_9_TY_ID_ = :save__object9TyId__value
	<#else>
${prefixName} OBJECT_9_TY_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (save__object9Id??)>
	<#if (save__object9Id__value??)>
${prefixName} OBJECT_9_ID_ = :save__object9Id__value
	<#else>
${prefixName} OBJECT_9_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#include "where_.ftl">
<#if (prefixName!) == 'WHERE' && (save__all??)>
WHERE 1 = 2
</#if>
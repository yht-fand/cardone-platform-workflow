UPDATE FD_RELATIONSHIP T
<#assign prefixName='SET'>
<#if (update__object3Id??)>
	<#if (update__object3Id__value??)>
${prefixName} T.OBJECT_3_ID_ = :update__object3Id__value
	<#else>
${prefixName} T.OBJECT_3_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__object6TyId??)>
	<#if (update__object6TyId__value??)>
${prefixName} T.OBJECT_6_TY_ID_ = :update__object6TyId__value
	<#else>
${prefixName} T.OBJECT_6_TY_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__object1TyId??)>
	<#if (update__object1TyId__value??)>
${prefixName} T.OBJECT_1_TY_ID_ = :update__object1TyId__value
	<#else>
${prefixName} T.OBJECT_1_TY_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__object4TyId??)>
	<#if (update__object4TyId__value??)>
${prefixName} T.OBJECT_4_TY_ID_ = :update__object4TyId__value
	<#else>
${prefixName} T.OBJECT_4_TY_ID_ = NULL
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
<#if (update__object7TyId??)>
	<#if (update__object7TyId__value??)>
${prefixName} T.OBJECT_7_TY_ID_ = :update__object7TyId__value
	<#else>
${prefixName} T.OBJECT_7_TY_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__object4Id??)>
	<#if (update__object4Id__value??)>
${prefixName} T.OBJECT_4_ID_ = :update__object4Id__value
	<#else>
${prefixName} T.OBJECT_4_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__object7Id??)>
	<#if (update__object7Id__value??)>
${prefixName} T.OBJECT_7_ID_ = :update__object7Id__value
	<#else>
${prefixName} T.OBJECT_7_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__id??)>
	<#if (update__id__value??)>
${prefixName} T.ID_ = :update__id__value
	<#else>
${prefixName} T.ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__object2TyId??)>
	<#if (update__object2TyId__value??)>
${prefixName} T.OBJECT_2_TY_ID_ = :update__object2TyId__value
	<#else>
${prefixName} T.OBJECT_2_TY_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__object8TyId??)>
	<#if (update__object8TyId__value??)>
${prefixName} T.OBJECT_8_TY_ID_ = :update__object8TyId__value
	<#else>
${prefixName} T.OBJECT_8_TY_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__object8Id??)>
	<#if (update__object8Id__value??)>
${prefixName} T.OBJECT_8_ID_ = :update__object8Id__value
	<#else>
${prefixName} T.OBJECT_8_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__object6Id??)>
	<#if (update__object6Id__value??)>
${prefixName} T.OBJECT_6_ID_ = :update__object6Id__value
	<#else>
${prefixName} T.OBJECT_6_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__object5Id??)>
	<#if (update__object5Id__value??)>
${prefixName} T.OBJECT_5_ID_ = :update__object5Id__value
	<#else>
${prefixName} T.OBJECT_5_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__object5TyId??)>
	<#if (update__object5TyId__value??)>
${prefixName} T.OBJECT_5_TY_ID_ = :update__object5TyId__value
	<#else>
${prefixName} T.OBJECT_5_TY_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__object3TyId??)>
	<#if (update__object3TyId__value??)>
${prefixName} T.OBJECT_3_TY_ID_ = :update__object3TyId__value
	<#else>
${prefixName} T.OBJECT_3_TY_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__object1Id??)>
	<#if (update__object1Id__value??)>
${prefixName} T.OBJECT_1_ID_ = :update__object1Id__value
	<#else>
${prefixName} T.OBJECT_1_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__object2Id??)>
	<#if (update__object2Id__value??)>
${prefixName} T.OBJECT_2_ID_ = :update__object2Id__value
	<#else>
${prefixName} T.OBJECT_2_ID_ = NULL
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
<#if (update__object9TyId??)>
	<#if (update__object9TyId__value??)>
${prefixName} T.OBJECT_9_TY_ID_ = :update__object9TyId__value
	<#else>
${prefixName} T.OBJECT_9_TY_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#if (update__object9Id??)>
	<#if (update__object9Id__value??)>
${prefixName} T.OBJECT_9_ID_ = :update__object9Id__value
	<#else>
${prefixName} T.OBJECT_9_ID_ = NULL
	</#if>
	<#assign prefixName=','>
</#if>
<#include "whereRelationshipBy1.ftl">
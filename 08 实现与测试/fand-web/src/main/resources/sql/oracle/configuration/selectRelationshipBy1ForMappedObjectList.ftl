SELECT
<#assign prefixName=' '>
<#if (select__object3Id??)>
${prefixName} T.OBJECT_3_ID_ AS object3Id
	<#assign prefixName=','>
</#if>
<#if (select__object6TyId??)>
${prefixName} T.OBJECT_6_TY_ID_ AS object6TyId
	<#assign prefixName=','>
</#if>
<#if (select__object1TyId??)>
${prefixName} T.OBJECT_1_TY_ID_ AS object1TyId
	<#assign prefixName=','>
</#if>
<#if (select__object4TyId??)>
${prefixName} T.OBJECT_4_TY_ID_ AS object4TyId
	<#assign prefixName=','>
</#if>
<#if (select__endTi??)>
${prefixName} T.END_TI_ AS endTi
	<#assign prefixName=','>
</#if>
<#if (select__object7TyId??)>
${prefixName} T.OBJECT_7_TY_ID_ AS object7TyId
	<#assign prefixName=','>
</#if>
<#if (select__object4Id??)>
${prefixName} T.OBJECT_4_ID_ AS object4Id
	<#assign prefixName=','>
</#if>
<#if (select__object7Id??)>
${prefixName} T.OBJECT_7_ID_ AS object7Id
	<#assign prefixName=','>
</#if>
<#if (select__id??)>
${prefixName} T.ID_ AS id
	<#assign prefixName=','>
</#if>
<#if (select__object2TyId??)>
${prefixName} T.OBJECT_2_TY_ID_ AS object2TyId
	<#assign prefixName=','>
</#if>
<#if (select__object8TyId??)>
${prefixName} T.OBJECT_8_TY_ID_ AS object8TyId
	<#assign prefixName=','>
</#if>
<#if (select__object8Id??)>
${prefixName} T.OBJECT_8_ID_ AS object8Id
	<#assign prefixName=','>
</#if>
<#if (select__object6Id??)>
${prefixName} T.OBJECT_6_ID_ AS object6Id
	<#assign prefixName=','>
</#if>
<#if (select__object5Id??)>
${prefixName} T.OBJECT_5_ID_ AS object5Id
	<#assign prefixName=','>
</#if>
<#if (select__object5TyId??)>
${prefixName} T.OBJECT_5_TY_ID_ AS object5TyId
	<#assign prefixName=','>
</#if>
<#if (select__object3TyId??)>
${prefixName} T.OBJECT_3_TY_ID_ AS object3TyId
	<#assign prefixName=','>
</#if>
<#if (select__object1Id??)>
${prefixName} T.OBJECT_1_ID_ AS object1Id
	<#assign prefixName=','>
</#if>
<#if (select__object2Id??)>
${prefixName} T.OBJECT_2_ID_ AS object2Id
	<#assign prefixName=','>
</#if>
<#if (select__beginTi??)>
${prefixName} T.BEGIN_TI_ AS beginTi
	<#assign prefixName=','>
</#if>
<#if (select__object9TyId??)>
${prefixName} T.OBJECT_9_TY_ID_ AS object9TyId
	<#assign prefixName=','>
</#if>
<#if (select__object9Id??)>
${prefixName} T.OBJECT_9_ID_ AS object9Id
	<#assign prefixName=','>
</#if>
<#if prefixName == ' '>
  T.OBJECT_3_ID_ AS object3Id
, T.OBJECT_6_TY_ID_ AS object6TyId
, T.OBJECT_1_TY_ID_ AS object1TyId
, T.OBJECT_4_TY_ID_ AS object4TyId
, T.END_TI_ AS endTi
, T.OBJECT_7_TY_ID_ AS object7TyId
, T.OBJECT_4_ID_ AS object4Id
, T.OBJECT_7_ID_ AS object7Id
, T.ID_ AS id
, T.OBJECT_2_TY_ID_ AS object2TyId
, T.OBJECT_8_TY_ID_ AS object8TyId
, T.OBJECT_8_ID_ AS object8Id
, T.OBJECT_6_ID_ AS object6Id
, T.OBJECT_5_ID_ AS object5Id
, T.OBJECT_5_TY_ID_ AS object5TyId
, T.OBJECT_3_TY_ID_ AS object3TyId
, T.OBJECT_1_ID_ AS object1Id
, T.OBJECT_2_ID_ AS object2Id
, T.BEGIN_TI_ AS beginTi
, T.OBJECT_9_TY_ID_ AS object9TyId
, T.OBJECT_9_ID_ AS object9Id
</#if>
FROM FD_RELATIONSHIP T
<#include "whereRelationshipBy1.ftl">
<#assign prefixName='ORDER BY'>
<#if (order__by__object3Id??)>
${prefixName} T.OBJECT_3_ID_ ${order__by__object3Id_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__object6TyId??)>
${prefixName} T.OBJECT_6_TY_ID_ ${order__by__object6TyId_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__object1TyId??)>
${prefixName} T.OBJECT_1_TY_ID_ ${order__by__object1TyId_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__object4TyId??)>
${prefixName} T.OBJECT_4_TY_ID_ ${order__by__object4TyId_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__endTi??)>
${prefixName} T.END_TI_ ${order__by__endTi_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__object7TyId??)>
${prefixName} T.OBJECT_7_TY_ID_ ${order__by__object7TyId_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__object4Id??)>
${prefixName} T.OBJECT_4_ID_ ${order__by__object4Id_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__object7Id??)>
${prefixName} T.OBJECT_7_ID_ ${order__by__object7Id_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__id??)>
${prefixName} T.ID_ ${order__by__id_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__object2TyId??)>
${prefixName} T.OBJECT_2_TY_ID_ ${order__by__object2TyId_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__object8TyId??)>
${prefixName} T.OBJECT_8_TY_ID_ ${order__by__object8TyId_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__object8Id??)>
${prefixName} T.OBJECT_8_ID_ ${order__by__object8Id_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__object6Id??)>
${prefixName} T.OBJECT_6_ID_ ${order__by__object6Id_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__object5Id??)>
${prefixName} T.OBJECT_5_ID_ ${order__by__object5Id_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__object5TyId??)>
${prefixName} T.OBJECT_5_TY_ID_ ${order__by__object5TyId_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__object3TyId??)>
${prefixName} T.OBJECT_3_TY_ID_ ${order__by__object3TyId_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__object1Id??)>
${prefixName} T.OBJECT_1_ID_ ${order__by__object1Id_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__object2Id??)>
${prefixName} T.OBJECT_2_ID_ ${order__by__object2Id_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__beginTi??)>
${prefixName} T.BEGIN_TI_ ${order__by__beginTi_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__object9TyId??)>
${prefixName} T.OBJECT_9_TY_ID_ ${order__by__object9TyId_value}
	<#assign prefixName=','>
</#if>
<#if (order__by__object9Id??)>
${prefixName} T.OBJECT_9_ID_ ${order__by__object9Id_value}
	<#assign prefixName=','>
</#if>

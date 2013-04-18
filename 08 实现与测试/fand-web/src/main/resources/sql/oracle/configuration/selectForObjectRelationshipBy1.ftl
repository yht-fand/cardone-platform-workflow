SELECT
<#switch (select__object__id!)>
	<#case "object3Id">
T.OBJECT_3_ID_ AS object3Id
	<#break>
	<#case "object6TyId">
T.OBJECT_6_TY_ID_ AS object6TyId
	<#break>
	<#case "object1TyId">
T.OBJECT_1_TY_ID_ AS object1TyId
	<#break>
	<#case "object4TyId">
T.OBJECT_4_TY_ID_ AS object4TyId
	<#break>
	<#case "endTi">
T.END_TI_ AS endTi
	<#break>
	<#case "object7TyId">
T.OBJECT_7_TY_ID_ AS object7TyId
	<#break>
	<#case "object4Id">
T.OBJECT_4_ID_ AS object4Id
	<#break>
	<#case "object7Id">
T.OBJECT_7_ID_ AS object7Id
	<#break>
	<#case "id">
T.ID_ AS id
	<#break>
	<#case "object2TyId">
T.OBJECT_2_TY_ID_ AS object2TyId
	<#break>
	<#case "object8TyId">
T.OBJECT_8_TY_ID_ AS object8TyId
	<#break>
	<#case "object8Id">
T.OBJECT_8_ID_ AS object8Id
	<#break>
	<#case "object6Id">
T.OBJECT_6_ID_ AS object6Id
	<#break>
	<#case "object5Id">
T.OBJECT_5_ID_ AS object5Id
	<#break>
	<#case "object5TyId">
T.OBJECT_5_TY_ID_ AS object5TyId
	<#break>
	<#case "object3TyId">
T.OBJECT_3_TY_ID_ AS object3TyId
	<#break>
	<#case "object1Id">
T.OBJECT_1_ID_ AS object1Id
	<#break>
	<#case "object2Id">
T.OBJECT_2_ID_ AS object2Id
	<#break>
	<#case "beginTi">
T.BEGIN_TI_ AS beginTi
	<#break>
	<#case "object9TyId">
T.OBJECT_9_TY_ID_ AS object9TyId
	<#break>
	<#case "object9Id">
T.OBJECT_9_ID_ AS object9Id
	<#break>
	<#default>
COUNT(1) AS COUNT_
</#switch>
FROM FD_RELATIONSHIP T
<#include "whereRelationshipBy1.ftl">
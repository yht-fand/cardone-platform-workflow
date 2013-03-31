SELECT
<#switch (read__field__id!)>
	<#case "object3Id">
OBJECT_3_ID_ object3Id
	<#break>
	<#case "object6TyId">
OBJECT_6_TY_ID_ object6TyId
	<#break>
	<#case "object1TyId">
OBJECT_1_TY_ID_ object1TyId
	<#break>
	<#case "object4TyId">
OBJECT_4_TY_ID_ object4TyId
	<#break>
	<#case "object7TyId">
OBJECT_7_TY_ID_ object7TyId
	<#break>
	<#case "object4Id">
OBJECT_4_ID_ object4Id
	<#break>
	<#case "object7Id">
OBJECT_7_ID_ object7Id
	<#break>
	<#case "id">
ID_ id
	<#break>
	<#case "object2TyId">
OBJECT_2_TY_ID_ object2TyId
	<#break>
	<#case "object8TyId">
OBJECT_8_TY_ID_ object8TyId
	<#break>
	<#case "object8Id">
OBJECT_8_ID_ object8Id
	<#break>
	<#case "object6Id">
OBJECT_6_ID_ object6Id
	<#break>
	<#case "object5Id">
OBJECT_5_ID_ object5Id
	<#break>
	<#case "object5TyId">
OBJECT_5_TY_ID_ object5TyId
	<#break>
	<#case "object3TyId">
OBJECT_3_TY_ID_ object3TyId
	<#break>
	<#case "object1Id">
OBJECT_1_ID_ object1Id
	<#break>
	<#case "object2Id">
OBJECT_2_ID_ object2Id
	<#break>
	<#case "object9TyId">
OBJECT_9_TY_ID_ object9TyId
	<#break>
	<#case "object9Id">
OBJECT_9_ID_ object9Id
	<#break>
	<#default>
COUNT(*) count
</#switch>
FROM FD_RELATIONSHIP
<#include "where_.ftl">
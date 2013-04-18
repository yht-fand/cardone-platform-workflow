INSERT
INTO
  FD_RELATIONSHIP T
  (
<#assign prefixName=' '>
<#if (insert__object3Id??) && (insert__object3Id__value??)>
  ${prefixName} OBJECT_3_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__object6TyId??) && (insert__object6TyId__value??)>
  ${prefixName} OBJECT_6_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__object1TyId??) && (insert__object1TyId__value??)>
  ${prefixName} OBJECT_1_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__object4TyId??) && (insert__object4TyId__value??)>
  ${prefixName} OBJECT_4_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__endTi??) && (insert__endTi__value??)>
  ${prefixName} END_TI_
	<#assign prefixName=','>
</#if>
<#if (insert__object7TyId??) && (insert__object7TyId__value??)>
  ${prefixName} OBJECT_7_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__object4Id??) && (insert__object4Id__value??)>
  ${prefixName} OBJECT_4_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__object7Id??) && (insert__object7Id__value??)>
  ${prefixName} OBJECT_7_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__id??) && (insert__id__value??)>
  ${prefixName} ID_
	<#assign prefixName=','>
</#if>
<#if (insert__object2TyId??) && (insert__object2TyId__value??)>
  ${prefixName} OBJECT_2_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__object8TyId??) && (insert__object8TyId__value??)>
  ${prefixName} OBJECT_8_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__object8Id??) && (insert__object8Id__value??)>
  ${prefixName} OBJECT_8_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__object6Id??) && (insert__object6Id__value??)>
  ${prefixName} OBJECT_6_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__object5Id??) && (insert__object5Id__value??)>
  ${prefixName} OBJECT_5_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__object5TyId??) && (insert__object5TyId__value??)>
  ${prefixName} OBJECT_5_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__object3TyId??) && (insert__object3TyId__value??)>
  ${prefixName} OBJECT_3_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__object1Id??) && (insert__object1Id__value??)>
  ${prefixName} OBJECT_1_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__object2Id??) && (insert__object2Id__value??)>
  ${prefixName} OBJECT_2_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__beginTi??) && (insert__beginTi__value??)>
  ${prefixName} BEGIN_TI_
	<#assign prefixName=','>
</#if>
<#if (insert__object9TyId??) && (insert__object9TyId__value??)>
  ${prefixName} OBJECT_9_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (insert__object9Id??) && (insert__object9Id__value??)>
  ${prefixName} OBJECT_9_ID_
	<#assign prefixName=','>
</#if>
  )
  VALUES
  (
<#assign prefixName=' '>
<#if (insert__object3Id??) && (insert__object3Id__value??)>
  ${prefixName} :insert__object3Id__value
	<#assign prefixName=','>
</#if>
<#if (insert__object6TyId??) && (insert__object6TyId__value??)>
  ${prefixName} :insert__object6TyId__value
	<#assign prefixName=','>
</#if>
<#if (insert__object1TyId??) && (insert__object1TyId__value??)>
  ${prefixName} :insert__object1TyId__value
	<#assign prefixName=','>
</#if>
<#if (insert__object4TyId??) && (insert__object4TyId__value??)>
  ${prefixName} :insert__object4TyId__value
	<#assign prefixName=','>
</#if>
<#if (insert__endTi??) && (insert__endTi__value??)>
  ${prefixName} :insert__endTi__value
	<#assign prefixName=','>
</#if>
<#if (insert__object7TyId??) && (insert__object7TyId__value??)>
  ${prefixName} :insert__object7TyId__value
	<#assign prefixName=','>
</#if>
<#if (insert__object4Id??) && (insert__object4Id__value??)>
  ${prefixName} :insert__object4Id__value
	<#assign prefixName=','>
</#if>
<#if (insert__object7Id??) && (insert__object7Id__value??)>
  ${prefixName} :insert__object7Id__value
	<#assign prefixName=','>
</#if>
<#if (insert__id??) && (insert__id__value??)>
  ${prefixName} :insert__id__value
	<#assign prefixName=','>
</#if>
<#if (insert__object2TyId??) && (insert__object2TyId__value??)>
  ${prefixName} :insert__object2TyId__value
	<#assign prefixName=','>
</#if>
<#if (insert__object8TyId??) && (insert__object8TyId__value??)>
  ${prefixName} :insert__object8TyId__value
	<#assign prefixName=','>
</#if>
<#if (insert__object8Id??) && (insert__object8Id__value??)>
  ${prefixName} :insert__object8Id__value
	<#assign prefixName=','>
</#if>
<#if (insert__object6Id??) && (insert__object6Id__value??)>
  ${prefixName} :insert__object6Id__value
	<#assign prefixName=','>
</#if>
<#if (insert__object5Id??) && (insert__object5Id__value??)>
  ${prefixName} :insert__object5Id__value
	<#assign prefixName=','>
</#if>
<#if (insert__object5TyId??) && (insert__object5TyId__value??)>
  ${prefixName} :insert__object5TyId__value
	<#assign prefixName=','>
</#if>
<#if (insert__object3TyId??) && (insert__object3TyId__value??)>
  ${prefixName} :insert__object3TyId__value
	<#assign prefixName=','>
</#if>
<#if (insert__object1Id??) && (insert__object1Id__value??)>
  ${prefixName} :insert__object1Id__value
	<#assign prefixName=','>
</#if>
<#if (insert__object2Id??) && (insert__object2Id__value??)>
  ${prefixName} :insert__object2Id__value
	<#assign prefixName=','>
</#if>
<#if (insert__beginTi??) && (insert__beginTi__value??)>
  ${prefixName} :insert__beginTi__value
	<#assign prefixName=','>
</#if>
<#if (insert__object9TyId??) && (insert__object9TyId__value??)>
  ${prefixName} :insert__object9TyId__value
	<#assign prefixName=','>
</#if>
<#if (insert__object9Id??) && (insert__object9Id__value??)>
  ${prefixName} :insert__object9Id__value
	<#assign prefixName=','>
</#if>
  )
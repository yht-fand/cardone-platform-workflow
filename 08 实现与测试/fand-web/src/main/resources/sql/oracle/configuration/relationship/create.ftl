INSERT
INTO
  FD_RELATIONSHIP
  (
<#assign prefixName=' '>
<#if (create__object3Id??) && (create__object3Id__value??)>
  ${prefixName} OBJECT_3_ID_
	<#assign prefixName=','>
</#if>
<#if (create__object6TyId??) && (create__object6TyId__value??)>
  ${prefixName} OBJECT_6_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (create__object1TyId??) && (create__object1TyId__value??)>
  ${prefixName} OBJECT_1_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (create__object4TyId??) && (create__object4TyId__value??)>
  ${prefixName} OBJECT_4_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (create__object7TyId??) && (create__object7TyId__value??)>
  ${prefixName} OBJECT_7_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (create__object4Id??) && (create__object4Id__value??)>
  ${prefixName} OBJECT_4_ID_
	<#assign prefixName=','>
</#if>
<#if (create__object7Id??) && (create__object7Id__value??)>
  ${prefixName} OBJECT_7_ID_
	<#assign prefixName=','>
</#if>
<#if (create__id??) && (create__id__value??)>
  ${prefixName} ID_
	<#assign prefixName=','>
</#if>
<#if (create__object2TyId??) && (create__object2TyId__value??)>
  ${prefixName} OBJECT_2_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (create__object8TyId??) && (create__object8TyId__value??)>
  ${prefixName} OBJECT_8_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (create__object8Id??) && (create__object8Id__value??)>
  ${prefixName} OBJECT_8_ID_
	<#assign prefixName=','>
</#if>
<#if (create__object6Id??) && (create__object6Id__value??)>
  ${prefixName} OBJECT_6_ID_
	<#assign prefixName=','>
</#if>
<#if (create__object5Id??) && (create__object5Id__value??)>
  ${prefixName} OBJECT_5_ID_
	<#assign prefixName=','>
</#if>
<#if (create__object5TyId??) && (create__object5TyId__value??)>
  ${prefixName} OBJECT_5_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (create__object3TyId??) && (create__object3TyId__value??)>
  ${prefixName} OBJECT_3_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (create__object1Id??) && (create__object1Id__value??)>
  ${prefixName} OBJECT_1_ID_
	<#assign prefixName=','>
</#if>
<#if (create__object2Id??) && (create__object2Id__value??)>
  ${prefixName} OBJECT_2_ID_
	<#assign prefixName=','>
</#if>
<#if (create__object9TyId??) && (create__object9TyId__value??)>
  ${prefixName} OBJECT_9_TY_ID_
	<#assign prefixName=','>
</#if>
<#if (create__object9Id??) && (create__object9Id__value??)>
  ${prefixName} OBJECT_9_ID_
	<#assign prefixName=','>
</#if>
  )
  VALUES
  (
<#assign prefixName=' '>
<#if (create__object3Id??) && (create__object3Id__value??)>
  ${prefixName} :create__object3Id__value
	<#assign prefixName=','>
</#if>
<#if (create__object6TyId??) && (create__object6TyId__value??)>
  ${prefixName} :create__object6TyId__value
	<#assign prefixName=','>
</#if>
<#if (create__object1TyId??) && (create__object1TyId__value??)>
  ${prefixName} :create__object1TyId__value
	<#assign prefixName=','>
</#if>
<#if (create__object4TyId??) && (create__object4TyId__value??)>
  ${prefixName} :create__object4TyId__value
	<#assign prefixName=','>
</#if>
<#if (create__object7TyId??) && (create__object7TyId__value??)>
  ${prefixName} :create__object7TyId__value
	<#assign prefixName=','>
</#if>
<#if (create__object4Id??) && (create__object4Id__value??)>
  ${prefixName} :create__object4Id__value
	<#assign prefixName=','>
</#if>
<#if (create__object7Id??) && (create__object7Id__value??)>
  ${prefixName} :create__object7Id__value
	<#assign prefixName=','>
</#if>
<#if (create__id??) && (create__id__value??)>
  ${prefixName} :create__id__value
	<#assign prefixName=','>
</#if>
<#if (create__object2TyId??) && (create__object2TyId__value??)>
  ${prefixName} :create__object2TyId__value
	<#assign prefixName=','>
</#if>
<#if (create__object8TyId??) && (create__object8TyId__value??)>
  ${prefixName} :create__object8TyId__value
	<#assign prefixName=','>
</#if>
<#if (create__object8Id??) && (create__object8Id__value??)>
  ${prefixName} :create__object8Id__value
	<#assign prefixName=','>
</#if>
<#if (create__object6Id??) && (create__object6Id__value??)>
  ${prefixName} :create__object6Id__value
	<#assign prefixName=','>
</#if>
<#if (create__object5Id??) && (create__object5Id__value??)>
  ${prefixName} :create__object5Id__value
	<#assign prefixName=','>
</#if>
<#if (create__object5TyId??) && (create__object5TyId__value??)>
  ${prefixName} :create__object5TyId__value
	<#assign prefixName=','>
</#if>
<#if (create__object3TyId??) && (create__object3TyId__value??)>
  ${prefixName} :create__object3TyId__value
	<#assign prefixName=','>
</#if>
<#if (create__object1Id??) && (create__object1Id__value??)>
  ${prefixName} :create__object1Id__value
	<#assign prefixName=','>
</#if>
<#if (create__object2Id??) && (create__object2Id__value??)>
  ${prefixName} :create__object2Id__value
	<#assign prefixName=','>
</#if>
<#if (create__object9TyId??) && (create__object9TyId__value??)>
  ${prefixName} :create__object9TyId__value
	<#assign prefixName=','>
</#if>
<#if (create__object9Id??) && (create__object9Id__value??)>
  ${prefixName} :create__object9Id__value
	<#assign prefixName=','>
</#if>
  )
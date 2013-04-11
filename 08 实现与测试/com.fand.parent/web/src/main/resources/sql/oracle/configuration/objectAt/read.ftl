SELECT
<#switch (read__field__id!)>
	<#case "id">
ID_ id
	<#break>
	<#case "stringVa">
STRING_VA_ stringVa
	<#break>
	<#case "doubleVa">
DOUBLE_VA_ doubleVa
	<#break>
	<#case "objectTyId">
OBJECT_TY_ID_ objectTyId
	<#break>
	<#case "dateVa">
DATE_VA_ dateVa
	<#break>
	<#case "objectId">
OBJECT_ID_ objectId
	<#break>
	<#case "code">
CODE_ code
	<#break>
	<#case "typeId">
TYPE_ID_ typeId
	<#break>
	<#case "longVa">
LONG_VA_ longVa
	<#break>
	<#case "textVa">
TEXT_VA_ textVa
	<#break>
	<#default>
COUNT(*) count
</#switch>
FROM FD_OBJECT_AT
<#include "where_.ftl">
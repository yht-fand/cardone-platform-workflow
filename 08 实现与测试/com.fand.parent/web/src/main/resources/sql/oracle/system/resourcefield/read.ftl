SELECT
<#switch (read__field__id!)>
	<#case "doubleVa">
DOUBLE_VA_ doubleVa
	<#break>
	<#case "endTi">
END_TI_ endTi
	<#break>
	<#case "orderNu">
ORDER_NU_ orderNu
	<#break>
	<#case "typeCode">
TYPE_CODE_ typeCode
	<#break>
	<#case "code">
CODE_ code
	<#break>
	<#case "resourceCo">
RESOURCE_CO_ resourceCo
	<#break>
	<#case "stringVa">
STRING_VA_ stringVa
	<#break>
	<#case "id">
ID_ id
	<#break>
	<#case "directoryCo">
DIRECTORY_CO_ directoryCo
	<#break>
	<#case "dateVa">
DATE_VA_ dateVa
	<#break>
	<#case "name">
NAME_ name
	<#break>
	<#case "beginTi">
BEGIN_TI_ beginTi
	<#break>
	<#case "longVa">
LONG_VA_ longVa
	<#break>
	<#case "versionNu">
VERSION_NU_ versionNu
	<#break>
	<#case "textVa">
TEXT_VA_ textVa
	<#break>
	<#case "partitionCo">
PARTITION_CO_ partitionCo
	<#break>
	<#default>
COUNT(*) count
</#switch>
FROM RESOURCE_FI
<#include "where_.ftl">
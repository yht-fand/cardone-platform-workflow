SELECT
<#switch (read__field__id!)>
	<#case "id">
ID_ id
	<#break>
	<#case "directoryCo">
DIRECTORY_CO_ directoryCo
	<#break>
	<#case "endTi">
END_TI_ endTi
	<#break>
	<#case "name">
NAME_ name
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
	<#case "parentCo">
PARENT_CO_ parentCo
	<#break>
	<#case "beginTi">
BEGIN_TI_ beginTi
	<#break>
	<#case "versionNu">
VERSION_NU_ versionNu
	<#break>
	<#case "partitionCo">
PARTITION_CO_ partitionCo
	<#break>
	<#default>
COUNT(*) count
</#switch>
FROM RESOURCE
<#include "where_.ftl">
SELECT
<#switch (read__field__id!)>
	<#case "id">
ID_ id
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
	<#case "code">
CODE_ code
	<#break>
	<#case "beginTi">
BEGIN_TI_ beginTi
	<#break>
	<#case "versionNu">
VERSION_NU_ versionNu
	<#break>
	<#default>
COUNT(*) count
</#switch>
FROM PARTITION
<#include "where_.ftl">
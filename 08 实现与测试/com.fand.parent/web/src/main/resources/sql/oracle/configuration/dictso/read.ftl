SELECT
<#switch (read__field__id!)>
	<#case "id">
ID_ id
	<#break>
	<#case "parentId">
PARENT_ID_ parentId
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
	<#default>
COUNT(*) count
</#switch>
FROM FD_DICT_SO
<#include "where_.ftl">
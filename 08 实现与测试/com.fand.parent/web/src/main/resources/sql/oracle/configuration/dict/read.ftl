SELECT
<#switch (read__field__id!)>
	<#case "id">
ID_ id
	<#break>
	<#case "name">
NAME_ name
	<#break>
	<#case "orderNu">
ORDER_NU_ orderNu
	<#break>
	<#case "dictSoId">
DICT_SO_ID_ dictSoId
	<#break>
	<#case "code">
CODE_ code
	<#break>
	<#default>
COUNT(*) count
</#switch>
FROM FD_DICT
<#include "where_.ftl">
SELECT
<#switch (read__field__id!)>
	<#case "id">
ID_ id
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
FROM FD_LOCALE
<#include "where_.ftl">
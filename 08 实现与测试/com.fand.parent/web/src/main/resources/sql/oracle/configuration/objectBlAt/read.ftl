SELECT
<#switch (read__field__id!)>
	<#case "id">
ID_ id
	<#break>
	<#case "byteVa">
BYTE_VA_ byteVa
	<#break>
	<#default>
COUNT(*) count
</#switch>
FROM FD_OBJECT_BL_AT
<#include "where_.ftl">
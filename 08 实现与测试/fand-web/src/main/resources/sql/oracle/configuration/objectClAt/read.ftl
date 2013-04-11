SELECT
<#switch (read__field__id!)>
	<#case "id">
ID_ id
	<#break>
	<#case "clobVa">
CLOB_VA_ clobVa
	<#break>
	<#default>
COUNT(*) count
</#switch>
FROM FD_OBJECT_CL_AT
<#include "where_.ftl">
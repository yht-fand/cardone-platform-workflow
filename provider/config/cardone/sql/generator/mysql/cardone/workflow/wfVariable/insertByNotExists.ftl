INSERT
INTO
c1_wf_variable
(<#assign prefixName = ' '>
<#if (insert_beginDate??) && (insert_beginDate_value??)>
${prefixName} `BEGIN_DATE`
<#assign prefixName = ','>
</#if>
<#if (insert_content??) && (insert_content_value??)>
${prefixName} `CONTENT`
<#assign prefixName = ','>
</#if>
<#if (insert_createdByCode??) && (insert_createdByCode_value??)>
${prefixName} `CREATED_BY_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_createdDate??) && (insert_createdDate_value??)>
${prefixName} `CREATED_DATE`
<#assign prefixName = ','>
</#if>
<#if (insert_dataStateCode??) && (insert_dataStateCode_value??)>
${prefixName} `DATA_STATE_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_departmentCode??) && (insert_departmentCode_value??)>
${prefixName} `DEPARTMENT_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_endDate??) && (insert_endDate_value??)>
${prefixName} `END_DATE`
<#assign prefixName = ','>
</#if>
<#if (insert_flagCode??) && (insert_flagCode_value??)>
${prefixName} `FLAG_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_flagObjectCode??) && (insert_flagObjectCode_value??)>
${prefixName} `FLAG_OBJECT_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_jsonData??) && (insert_jsonData_value??)>
${prefixName} `JSON_DATA`
<#assign prefixName = ','>
</#if>
<#if (insert_lastModifiedByCode??) && (insert_lastModifiedByCode_value??)>
${prefixName} `LAST_MODIFIED_BY_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_lastModifiedDate??) && (insert_lastModifiedDate_value??)>
${prefixName} `LAST_MODIFIED_DATE`
<#assign prefixName = ','>
</#if>
<#if (insert_order??) && (insert_order_by_value??)>
${prefixName} `ORDER_BY_`
<#assign prefixName = ','>
</#if>
<#if (insert_orgCode??) && (insert_orgCode_value??)>
${prefixName} `ORG_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_siteCode??) && (insert_siteCode_value??)>
${prefixName} `SITE_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_stateCode??) && (insert_stateCode_value??)>
${prefixName} `STATE_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_systemInfoCode??) && (insert_systemInfoCode_value??)>
${prefixName} `SYSTEM_INFO_CODE`
<#assign prefixName = ','>
</#if>
<#if (insert_version??) && (insert_version_value??)>
${prefixName} `VERSION_`
<#assign prefixName = ','>
</#if>
<#if (insert_wfKey??) && (insert_wfKey_value??)>
${prefixName} `WF_KEY`
<#assign prefixName = ','>
</#if>
<#if (insert_wfVariableId??) && (insert_wfVariableId_value??)>
${prefixName} `WF_VARIABLE_ID`
<#assign prefixName = ','>
</#if>
)
(SELECT
<#assign prefixName = ' '>
<#if (insert_beginDate??) && (insert_beginDate_value??)>
${prefixName} :insert_beginDate_value
<#assign prefixName = ','>
</#if>
<#if (insert_content??) && (insert_content_value??)>
${prefixName} :insert_content_value
<#assign prefixName = ','>
</#if>
<#if (insert_createdByCode??) && (insert_createdByCode_value??)>
${prefixName} :insert_createdByCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_createdDate??) && (insert_createdDate_value??)>
${prefixName} :insert_createdDate_value
<#assign prefixName = ','>
</#if>
<#if (insert_dataStateCode??) && (insert_dataStateCode_value??)>
${prefixName} :insert_dataStateCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_departmentCode??) && (insert_departmentCode_value??)>
${prefixName} :insert_departmentCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_endDate??) && (insert_endDate_value??)>
${prefixName} :insert_endDate_value
<#assign prefixName = ','>
</#if>
<#if (insert_flagCode??) && (insert_flagCode_value??)>
${prefixName} :insert_flagCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_flagObjectCode??) && (insert_flagObjectCode_value??)>
${prefixName} :insert_flagObjectCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_jsonData??) && (insert_jsonData_value??)>
${prefixName} :insert_jsonData_value
<#assign prefixName = ','>
</#if>
<#if (insert_lastModifiedByCode??) && (insert_lastModifiedByCode_value??)>
${prefixName} :insert_lastModifiedByCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_lastModifiedDate??) && (insert_lastModifiedDate_value??)>
${prefixName} :insert_lastModifiedDate_value
<#assign prefixName = ','>
</#if>
<#if (insert_order??) && (insert_order_by_value??)>
${prefixName} :insert_order_by_value
<#assign prefixName = ','>
</#if>
<#if (insert_orgCode??) && (insert_orgCode_value??)>
${prefixName} :insert_orgCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_siteCode??) && (insert_siteCode_value??)>
${prefixName} :insert_siteCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_stateCode??) && (insert_stateCode_value??)>
${prefixName} :insert_stateCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_systemInfoCode??) && (insert_systemInfoCode_value??)>
${prefixName} :insert_systemInfoCode_value
<#assign prefixName = ','>
</#if>
<#if (insert_version??) && (insert_version_value??)>
${prefixName} :insert_version_value
<#assign prefixName = ','>
</#if>
<#if (insert_wfKey??) && (insert_wfKey_value??)>
${prefixName} :insert_wfKey_value
<#assign prefixName = ','>
</#if>
<#if (insert_wfVariableId??) && (insert_wfVariableId_value??)>
${prefixName} :insert_wfVariableId_value
<#assign prefixName = ','>
</#if>
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM c1_wf_variable E
<#assign prefixName = 'WHERE'>
<#if (where_and_eq_beginDate??)>
<#if (where_and_eq_beginDate_value??)>
${prefixName} E.BEGIN_DATE = :where_and_eq_beginDate_value
<#else>
${prefixName} E.BEGIN_DATE IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_content??)>
<#if (where_and_eq_content_value??)>
${prefixName} E.CONTENT = :where_and_eq_content_value
<#else>
${prefixName} E.CONTENT IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_createdByCode??)>
<#if (where_and_eq_createdByCode_value??)>
${prefixName} E.CREATED_BY_CODE = :where_and_eq_createdByCode_value
<#else>
${prefixName} E.CREATED_BY_CODE IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_createdDate??)>
<#if (where_and_eq_createdDate_value??)>
${prefixName} E.CREATED_DATE = :where_and_eq_createdDate_value
<#else>
${prefixName} E.CREATED_DATE IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_dataStateCode??)>
<#if (where_and_eq_dataStateCode_value??)>
${prefixName} E.DATA_STATE_CODE = :where_and_eq_dataStateCode_value
<#else>
${prefixName} E.DATA_STATE_CODE IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_departmentCode??)>
<#if (where_and_eq_departmentCode_value??)>
${prefixName} E.DEPARTMENT_CODE = :where_and_eq_departmentCode_value
<#else>
${prefixName} E.DEPARTMENT_CODE IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_endDate??)>
<#if (where_and_eq_endDate_value??)>
${prefixName} E.END_DATE = :where_and_eq_endDate_value
<#else>
${prefixName} E.END_DATE IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_flagCode??)>
<#if (where_and_eq_flagCode_value??)>
${prefixName} E.FLAG_CODE = :where_and_eq_flagCode_value
<#else>
${prefixName} E.FLAG_CODE IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_flagObjectCode??)>
<#if (where_and_eq_flagObjectCode_value??)>
${prefixName} E.FLAG_OBJECT_CODE = :where_and_eq_flagObjectCode_value
<#else>
${prefixName} E.FLAG_OBJECT_CODE IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_jsonData??)>
<#if (where_and_eq_jsonData_value??)>
${prefixName} E.JSON_DATA = :where_and_eq_jsonData_value
<#else>
${prefixName} E.JSON_DATA IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_lastModifiedByCode??)>
<#if (where_and_eq_lastModifiedByCode_value??)>
${prefixName} E.LAST_MODIFIED_BY_CODE = :where_and_eq_lastModifiedByCode_value
<#else>
${prefixName} E.LAST_MODIFIED_BY_CODE IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_lastModifiedDate??)>
<#if (where_and_eq_lastModifiedDate_value??)>
${prefixName} E.LAST_MODIFIED_DATE = :where_and_eq_lastModifiedDate_value
<#else>
${prefixName} E.LAST_MODIFIED_DATE IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_order??)>
<#if (where_and_eq_order_by_value??)>
${prefixName} E.ORDER_BY_ = :where_and_eq_order_by_value
<#else>
${prefixName} E.ORDER_BY_ IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_orgCode??)>
<#if (where_and_eq_orgCode_value??)>
${prefixName} E.ORG_CODE = :where_and_eq_orgCode_value
<#else>
${prefixName} E.ORG_CODE IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_siteCode??)>
<#if (where_and_eq_siteCode_value??)>
${prefixName} E.SITE_CODE = :where_and_eq_siteCode_value
<#else>
${prefixName} E.SITE_CODE IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_stateCode??)>
<#if (where_and_eq_stateCode_value??)>
${prefixName} E.STATE_CODE = :where_and_eq_stateCode_value
<#else>
${prefixName} E.STATE_CODE IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_systemInfoCode??)>
<#if (where_and_eq_systemInfoCode_value??)>
${prefixName} E.SYSTEM_INFO_CODE = :where_and_eq_systemInfoCode_value
<#else>
${prefixName} E.SYSTEM_INFO_CODE IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_version??)>
<#if (where_and_eq_version_value??)>
${prefixName} E.VERSION_ = :where_and_eq_version_value
<#else>
${prefixName} E.VERSION_ IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_wfKey??)>
<#if (where_and_eq_wfKey_value??)>
${prefixName} E.WF_KEY = :where_and_eq_wfKey_value
<#else>
${prefixName} E.WF_KEY IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
<#if (where_and_eq_wfVariableId??)>
<#if (where_and_eq_wfVariableId_value??)>
${prefixName} E.WF_VARIABLE_ID = :where_and_eq_wfVariableId_value
<#else>
${prefixName} E.WF_VARIABLE_ID IS NULL
</#if>
<#assign prefixName = 'AND'>
</#if>
))

### 工作流(workflow)

#### ER 图

![工作流](workflow.png)

#### 表结构

##### 工作流变量（c1_wf_variable）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(19)|开始时间
CONTENT|YES|String(4095)|正文
CREATED_BY_CODE|YES|String(255)|创建人代码
CREATED_DATE|YES|Date(19)|创建时间
DATA_STATE_CODE|YES|String(255)|数据状态代码
DEPARTMENT_CODE|YES|String(255)|部门代码
END_DATE|YES|Date(19)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(255)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(19)|最后修改时间
ORG_CODE|YES|String(255)|组织代码
PERMISSION_CODES|YES|String(1023)|许可代码集合
ROLE_CODES|YES|String(1023)|角色代码集合
SITE_CODE|YES|String(255)|站点代码
STATE_CODE|YES|String(255)|状态代码
SYSTEM_INFO_CODE|YES|String(255)|系统信息代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(255)|工作流标识
WF_KEY|YES|String(255)|工作流键
WF_VARIABLE_ID|NO|String(255)|工作流变量标识

##### 工作流变量与用户（c1_wf_variable_user）

字段名|可为空|类型及范围|说明
---|---|---|---
BEGIN_DATE|YES|Date(19)|开始时间
CONTENT|YES|String(4095)|正文
CREATED_BY_CODE|YES|String(255)|创建人代码
CREATED_DATE|YES|Date(19)|创建时间
DATA_STATE_CODE|YES|String(255)|数据状态代码
DEPARTMENT_CODE|YES|String(255)|部门代码
END_DATE|YES|Date(19)|结束时间
LAST_MODIFIED_BY_CODE|YES|String(255)|最后修改人代码
LAST_MODIFIED_DATE|YES|Date(19)|最后修改时间
ORG_CODE|YES|String(255)|组织代码
PERMISSION_CODES|YES|String(1023)|许可代码集合
ROLE_CODES|YES|String(1023)|角色代码集合
SITE_CODE|YES|String(255)|站点代码
STATE_CODE|YES|String(255)|状态代码
SYSTEM_INFO_CODE|YES|String(255)|系统信息代码
USER_CODE|NO|String(255)|用户代码
VERSION_|YES|Long(10)|版本
WF_ID|YES|String(255)|工作流标识
WF_KEY|NO|String(255)|工作流键
WF_VARIABLE_USER_ID|NO|String(255)|工作流变量与用户标识

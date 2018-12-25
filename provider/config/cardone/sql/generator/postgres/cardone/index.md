
### 工作流(workflow)

#### ER 图

![工作流](workflow.png)

#### 表结构

##### 工作流变量（c1_wf_variable）

字段名|可为空|类型及范围|说明
---|---|---|---
batch_no|YES|String(255)|批次编号
begin_date|YES|Date(29)|开始日期
content|YES|String(4095)|正文
created_by_code|YES|String(255)|创建人编号
created_by_id|YES|String(255)|创建人标识
created_date|YES|Date(29)|创建日期
data_state_code|YES|String(255)|数据状态编号(数据字典)
department_code|YES|String(255)|部门编号
end_date|YES|Date(29)|结束日期
flag_code|YES|String(255)|标记编号(数据字典：工作流、同步、生成、录入、审批)
flag_object_code|YES|String(255)|标识对象编号(工作流：工作流标识、同步：批次号、生成：操作者编号、录入：操作者编号、审批：操作者编号)
json_data|YES|Object(2147483647)|json数据
last_modified_by_code|YES|String(255)|最后修改人编号
last_modified_by_id|YES|String(255)|最后修改人标识
last_modified_date|YES|Date(29)|最后修改日期
name|YES|String(255)|名称
order_by_|YES|Long(19)|排序
org_code|YES|String(255)|组织编号
personal_code|YES|String(255)|个人编号
personal_id|YES|String(255)|个人标识
site_code|YES|String(255)|站点编号
state_code|YES|String(255)|状态编号(数据字典)
system_info_code|YES|String(255)|系统信息编号
type_code|YES|String(255)|类别编号
version_|YES|Integer(10)|版本
wf_key|YES|String(255)|工作流键
wf_variable_id|NO|String(255)|工作流变量标识

##### 工作流变量与用户（c1_wf_variable_user）

字段名|可为空|类型及范围|说明
---|---|---|---
batch_no|YES|String(255)|批次编号
begin_date|YES|Date(29)|开始日期
created_by_code|YES|String(255)|创建人编号
created_by_id|YES|String(255)|创建人标识
created_date|YES|Date(29)|创建日期
data_state_code|YES|String(255)|数据状态编号(数据字典)
department_code|YES|String(255)|部门编号
end_date|YES|Date(29)|结束日期
flag_code|YES|String(255)|标记编号(数据字典：工作流、同步、生成、录入、审批)
flag_object_code|YES|String(255)|标识对象编号(工作流：工作流标识、同步：批次号、生成：操作者编号、录入：操作者编号、审批：操作者编号)
json_data|YES|Object(2147483647)|json数据
last_modified_by_code|YES|String(255)|最后修改人编号
last_modified_by_id|YES|String(255)|最后修改人标识
last_modified_date|YES|Date(29)|最后修改日期
order_by_|YES|Long(19)|排序
org_code|YES|String(255)|组织编号
personal_code|YES|String(255)|个人编号
personal_id|YES|String(255)|个人标识
site_code|YES|String(255)|站点编号
state_code|YES|String(255)|状态编号(数据字典)
system_info_code|YES|String(255)|系统信息编号
user_code|YES|String(255)|用户编号
user_id|YES|String(255)|用户标识
version_|YES|Integer(10)|版本
wf_key|NO|String(255)|工作流键
wf_variable_user_id|NO|String(255)|工作流变量与用户标识

##### 工作流任务处理（c1_wf_task_handle）

字段名|可为空|类型及范围|说明
---|---|---|---
batch_no|YES|String(255)|批次编号
begin_date|YES|Date(29)|开始日期
business_code|YES|String(255)|业务编号
business_id|YES|String(255)|业务标识
business_type_code|YES|String(255)|业务类型
created_by_code|YES|String(255)|创建人编号
created_by_id|YES|String(255)|创建人标识
created_date|YES|Date(29)|创建日期
data_state_code|YES|String(255)|数据状态编号(数据字典)
department_code|YES|String(255)|部门编号
end_date|YES|Date(29)|结束日期
flag_code|YES|String(255)|标记编号(数据字典：工作流、同步、生成、录入、审批)
flag_object_code|YES|String(255)|标识对象编号(工作流：工作流标识、同步：批次号、生成：操作者编号、录入：操作者编号、审批：操作者编号)
json_data|YES|Object(2147483647)|json数据
last_modified_by_code|YES|String(255)|最后修改人编号
last_modified_by_id|YES|String(255)|最后修改人标识
last_modified_date|YES|Date(26)|最后修改日期
order_by_|YES|Long(19)|排序
org_code|YES|String(255)|组织编号
personal_code|YES|String(255)|个人编号
personal_id|YES|String(255)|个人标识
site_code|YES|String(255)|站点编号
state_code|YES|String(255)|状态编号(数据字典)
system_info_code|YES|String(255)|系统信息编号
version_|YES|Integer(10)|版本
wf_task_handle_id|NO|String(255)|工作流任务处理标识

##### 工作流任务处理重试（c1_wf_task_handle_retry）

字段名|可为空|类型及范围|说明
---|---|---|---
batch_no|YES|String(255)|批次编号
begin_date|YES|Date(29)|开始日期
created_by_code|YES|String(255)|创建人编号
created_by_id|YES|String(255)|创建人标识
created_date|YES|Date(29)|创建日期
data_state_code|YES|String(255)|数据状态编号(数据字典)
department_code|YES|String(255)|部门编号
end_date|YES|Date(29)|结束日期
error_date|YES|Date(29)|错误时间
error_message|YES|String(1000)|错误信息
flag_code|YES|String(255)|标记编号(数据字典：工作流、同步、生成、录入、审批)
flag_object_code|YES|String(255)|标识对象编号(工作流：工作流标识、同步：批次号、生成：操作者编号、录入：操作者编号、审批：操作者编号)
handle_code|YES|String(255)|处理类型编号
json_data|YES|Object(2147483647)|json数据
last_modified_by_code|YES|String(255)|最后修改人编号
last_modified_by_id|YES|String(255)|最后修改人标识
last_modified_date|YES|Date(26)|最后修改日期
last_retry_date|YES|Date(29)|最近重试时间
order_by_|YES|Long(19)|排序
org_code|YES|String(255)|组织编号
personal_code|YES|String(255)|个人编号
personal_id|YES|String(255)|个人标识
retry_count|YES|Long(19)|重试次数
site_code|YES|String(255)|站点编号
state_code|YES|String(255)|状态编号(数据字典)
system_info_code|YES|String(255)|系统信息编号
version_|YES|Integer(10)|版本
wf_task_handle_id|YES|String(255)|工作流任务处理标识
wf_task_handle_retry_id|NO|String(255)|工作流任务处理重试标识

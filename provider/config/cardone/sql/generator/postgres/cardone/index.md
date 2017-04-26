
### 工作流(workflow)

#### ER 图

![工作流](workflow.png)

#### 表结构

##### 工作流变量（c1_wf_variable）

字段名|可为空|类型及范围|说明
---|---|---|---
begin_date|YES|Date(13)|开始时间
content|YES|String(4095)|正文
created_by_code|YES|String(255)|创建人代码
created_date|YES|Date(13)|创建时间
data_state_code|YES|String(255)|数据状态代码(数据字典)
department_code|YES|String(255)|部门代码
end_date|YES|Date(13)|结束时间
flag_code|YES|String(255)|标记代码(数据字典：工作流、同步、生成、录入、审批)
flag_object_code|YES|String(255)|标识对象代码(工作流：工作流标识、同步：批次号、生成：操作者编号、录入：操作者编号、审批：操作者编号)
json_data|YES|Object(2147483647)|JSON数据
last_modified_by_code|YES|String(255)|最后修改人代码
last_modified_date|YES|Date(13)|最后修改时间
order_|YES|Long(19)|排序
org_code|YES|String(255)|组织代码
site_code|YES|String(255)|站点代码
state_code|YES|String(255)|状态代码(数据字典)
system_info_code|YES|String(255)|系统信息代码
version_|YES|Integer(10)|版本
wf_key|YES|String(255)|工作流键
wf_variable_id|NO|String(255)|工作流变量标识

##### 工作流变量与用户（c1_wf_variable_user）

字段名|可为空|类型及范围|说明
---|---|---|---
begin_date|YES|Date(13)|开始时间
created_by_code|YES|String(255)|创建人代码
created_date|YES|Date(13)|创建时间
data_state_code|YES|String(255)|数据状态代码(数据字典)
department_code|YES|String(255)|部门代码
end_date|YES|Date(13)|结束时间
flag_code|YES|String(255)|标记代码(数据字典：工作流、同步、生成、录入、审批)
flag_object_code|YES|String(255)|标识对象代码(工作流：工作流标识、同步：批次号、生成：操作者编号、录入：操作者编号、审批：操作者编号)
json_data|YES|Object(2147483647)|JSON数据
last_modified_by_code|YES|String(255)|最后修改人代码
last_modified_date|YES|Date(13)|最后修改时间
order_|YES|Long(19)|排序
org_code|YES|String(255)|组织代码
site_code|YES|String(255)|站点代码
state_code|YES|String(255)|状态代码(数据字典)
system_info_code|YES|String(255)|系统信息代码
user_code|YES|String(255)|用户代码
version_|YES|Integer(10)|版本
wf_key|NO|String(255)|工作流键
wf_variable_user_id|NO|String(255)|工作流变量与用户标识

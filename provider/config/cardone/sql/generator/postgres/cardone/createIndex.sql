
-- 工作流(workflow)


-- 工作流变量（c1_wf_variable）

--批次编号
drop index IF EXISTS idx_c1_wf_variable_batch_no;
create index IF NOT EXISTS idx_c1_wf_variable_batch_no ON c1_wf_variable ("batch_no" varchar_pattern_ops);
--开始日期
drop index IF EXISTS idx_c1_wf_variable_begin_date;
create index IF NOT EXISTS idx_c1_wf_variable_begin_date ON c1_wf_variable ("begin_date");
--创建人代码
drop index IF EXISTS idx_c1_wf_variable_created_by_code;
create index IF NOT EXISTS idx_c1_wf_variable_created_by_code ON c1_wf_variable ("created_by_code" varchar_pattern_ops);
--创建日期
drop index IF EXISTS idx_c1_wf_variable_created_date;
create index IF NOT EXISTS idx_c1_wf_variable_created_date ON c1_wf_variable ("created_date");
--数据状态代码(数据字典)
drop index IF EXISTS idx_c1_wf_variable_data_state_code;
create index IF NOT EXISTS idx_c1_wf_variable_data_state_code ON c1_wf_variable ("data_state_code" varchar_pattern_ops);
--部门代码
drop index IF EXISTS idx_c1_wf_variable_department_code;
create index IF NOT EXISTS idx_c1_wf_variable_department_code ON c1_wf_variable ("department_code" varchar_pattern_ops);
--结束日期
drop index IF EXISTS idx_c1_wf_variable_end_date;
create index IF NOT EXISTS idx_c1_wf_variable_end_date ON c1_wf_variable ("end_date");
--标记代码(数据字典：工作流、同步、生成、录入、审批)
drop index IF EXISTS idx_c1_wf_variable_flag_code;
create index IF NOT EXISTS idx_c1_wf_variable_flag_code ON c1_wf_variable ("flag_code" varchar_pattern_ops);
--最后修改人代码
drop index IF EXISTS idx_c1_wf_variable_last_modified_by_code;
create index IF NOT EXISTS idx_c1_wf_variable_last_modified_by_code ON c1_wf_variable ("last_modified_by_code" varchar_pattern_ops);
--最后修改日期
drop index IF EXISTS idx_c1_wf_variable_last_modified_date;
create index IF NOT EXISTS idx_c1_wf_variable_last_modified_date ON c1_wf_variable ("last_modified_date");
--排序
drop index IF EXISTS idx_c1_wf_variable_order_by_;
create index IF NOT EXISTS idx_c1_wf_variable_order_by_ ON c1_wf_variable ("order_by_");
--组织代码
drop index IF EXISTS idx_c1_wf_variable_org_code;
create index IF NOT EXISTS idx_c1_wf_variable_org_code ON c1_wf_variable ("org_code" varchar_pattern_ops);
--个人代码
drop index IF EXISTS idx_c1_wf_variable_personal_code;
create index IF NOT EXISTS idx_c1_wf_variable_personal_code ON c1_wf_variable ("personal_code" varchar_pattern_ops);
--站点代码
drop index IF EXISTS idx_c1_wf_variable_site_code;
create index IF NOT EXISTS idx_c1_wf_variable_site_code ON c1_wf_variable ("site_code" varchar_pattern_ops);
--状态代码(数据字典)
drop index IF EXISTS idx_c1_wf_variable_state_code;
create index IF NOT EXISTS idx_c1_wf_variable_state_code ON c1_wf_variable ("state_code" varchar_pattern_ops);
--系统信息代码
drop index IF EXISTS idx_c1_wf_variable_system_info_code;
create index IF NOT EXISTS idx_c1_wf_variable_system_info_code ON c1_wf_variable ("system_info_code" varchar_pattern_ops);
--工作流键
drop index IF EXISTS idx_c1_wf_variable_wf_key;
create index IF NOT EXISTS idx_c1_wf_variable_wf_key ON c1_wf_variable ("wf_key" varchar_pattern_ops);
--工作流变量标识
drop index IF EXISTS idx_c1_wf_variable_wf_variable_id;
create index IF NOT EXISTS idx_c1_wf_variable_wf_variable_id ON c1_wf_variable ("wf_variable_id" varchar_pattern_ops);

-- 工作流变量与用户（c1_wf_variable_user）

--批次编号
drop index IF EXISTS idx_c1_wf_variable_user_batch_no;
create index IF NOT EXISTS idx_c1_wf_variable_user_batch_no ON c1_wf_variable_user ("batch_no" varchar_pattern_ops);
--开始日期
drop index IF EXISTS idx_c1_wf_variable_user_begin_date;
create index IF NOT EXISTS idx_c1_wf_variable_user_begin_date ON c1_wf_variable_user ("begin_date");
--创建人代码
drop index IF EXISTS idx_c1_wf_variable_user_created_by_code;
create index IF NOT EXISTS idx_c1_wf_variable_user_created_by_code ON c1_wf_variable_user ("created_by_code" varchar_pattern_ops);
--创建日期
drop index IF EXISTS idx_c1_wf_variable_user_created_date;
create index IF NOT EXISTS idx_c1_wf_variable_user_created_date ON c1_wf_variable_user ("created_date");
--数据状态代码(数据字典)
drop index IF EXISTS idx_c1_wf_variable_user_data_state_code;
create index IF NOT EXISTS idx_c1_wf_variable_user_data_state_code ON c1_wf_variable_user ("data_state_code" varchar_pattern_ops);
--部门代码
drop index IF EXISTS idx_c1_wf_variable_user_department_code;
create index IF NOT EXISTS idx_c1_wf_variable_user_department_code ON c1_wf_variable_user ("department_code" varchar_pattern_ops);
--结束日期
drop index IF EXISTS idx_c1_wf_variable_user_end_date;
create index IF NOT EXISTS idx_c1_wf_variable_user_end_date ON c1_wf_variable_user ("end_date");
--标记代码(数据字典：工作流、同步、生成、录入、审批)
drop index IF EXISTS idx_c1_wf_variable_user_flag_code;
create index IF NOT EXISTS idx_c1_wf_variable_user_flag_code ON c1_wf_variable_user ("flag_code" varchar_pattern_ops);
--最后修改人代码
drop index IF EXISTS idx_c1_wf_variable_user_last_modified_by_code;
create index IF NOT EXISTS idx_c1_wf_variable_user_last_modified_by_code ON c1_wf_variable_user ("last_modified_by_code" varchar_pattern_ops);
--最后修改日期
drop index IF EXISTS idx_c1_wf_variable_user_last_modified_date;
create index IF NOT EXISTS idx_c1_wf_variable_user_last_modified_date ON c1_wf_variable_user ("last_modified_date");
--排序
drop index IF EXISTS idx_c1_wf_variable_user_order_by_;
create index IF NOT EXISTS idx_c1_wf_variable_user_order_by_ ON c1_wf_variable_user ("order_by_");
--组织代码
drop index IF EXISTS idx_c1_wf_variable_user_org_code;
create index IF NOT EXISTS idx_c1_wf_variable_user_org_code ON c1_wf_variable_user ("org_code" varchar_pattern_ops);
--个人代码
drop index IF EXISTS idx_c1_wf_variable_user_personal_code;
create index IF NOT EXISTS idx_c1_wf_variable_user_personal_code ON c1_wf_variable_user ("personal_code" varchar_pattern_ops);
--站点代码
drop index IF EXISTS idx_c1_wf_variable_user_site_code;
create index IF NOT EXISTS idx_c1_wf_variable_user_site_code ON c1_wf_variable_user ("site_code" varchar_pattern_ops);
--状态代码(数据字典)
drop index IF EXISTS idx_c1_wf_variable_user_state_code;
create index IF NOT EXISTS idx_c1_wf_variable_user_state_code ON c1_wf_variable_user ("state_code" varchar_pattern_ops);
--系统信息代码
drop index IF EXISTS idx_c1_wf_variable_user_system_info_code;
create index IF NOT EXISTS idx_c1_wf_variable_user_system_info_code ON c1_wf_variable_user ("system_info_code" varchar_pattern_ops);
--用户代码
drop index IF EXISTS idx_c1_wf_variable_user_user_code;
create index IF NOT EXISTS idx_c1_wf_variable_user_user_code ON c1_wf_variable_user ("user_code" varchar_pattern_ops);
--工作流键
drop index IF EXISTS idx_c1_wf_variable_user_wf_key;
create index IF NOT EXISTS idx_c1_wf_variable_user_wf_key ON c1_wf_variable_user ("wf_key" varchar_pattern_ops);
--工作流变量与用户标识
drop index IF EXISTS idx_c1_wf_variable_user_wf_variable_user_id;
create index IF NOT EXISTS idx_c1_wf_variable_user_wf_variable_user_id ON c1_wf_variable_user ("wf_variable_user_id" varchar_pattern_ops);



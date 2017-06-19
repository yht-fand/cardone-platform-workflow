package top.cardone.api.vx.workflow.wfVariableUser

import org.apache.commons.lang3.StringUtils
import top.cardone.workflow.service.WfVariableUserService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class modifyModal implements java.io.Serializable {
    def input(input) {
        ["wfVariableUserId": input.wfVariableUserId]
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.wfVariableUserId)) {
//          throw new CodeException("wfVariableUserId required", "工作流变量与用户标识必填")
//      }
    }

    def func(input) {
		ApplicationContextHolder.getBean(WfVariableUserService.class).findOneByWfVariableUserId(input)
    }

    def output(output) {
        def newOutput = [:]

		newOutput?.batchNo = output?.batch_no
		newOutput?.beginDate = output?.begin_date
		newOutput?.createdByCode = output?.created_by_code
		newOutput?.createdDate = output?.created_date
		newOutput?.dataStateCode = output?.data_state_code
		newOutput?.departmentCode = output?.department_code
		newOutput?.endDate = output?.end_date
		newOutput?.flagCode = output?.flag_code
		newOutput?.flagObjectCode = output?.flag_object_code
		newOutput?.jsonData = output?.json_data
		newOutput?.lastModifiedByCode = output?.last_modified_by_code
		newOutput?.lastModifiedDate = output?.last_modified_date
		newOutput?.orderBy = output?.order_by_
		newOutput?.orgCode = output?.org_code
		newOutput?.personalCode = output?.personal_code
		newOutput?.siteCode = output?.site_code
		newOutput?.stateCode = output?.state_code
		newOutput?.systemInfoCode = output?.system_info_code
		newOutput?.userCode = output?.user_code
		newOutput?.version = output?.version_
		newOutput?.wfKey = output?.wf_key
		newOutput?.wfVariableUserId = output?.wf_variable_user_id

        newOutput
    }
}
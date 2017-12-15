package top.cardone.api.vx.workflow.wfVariable

import org.apache.commons.lang3.StringUtils
import top.cardone.workflow.service.WfVariableService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class modifyModal implements java.io.Serializable {
    def input(input) {
        ["wfVariableId": input.wfVariableId]
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.wfVariableId)) {
//          throw new CodeException("wfVariableId required", "工作流变量标识必填")
//      }
    }

    def func(input) {
		ApplicationContextHolder.getBean(WfVariableService.class).findOneByWfVariableId(input)
    }

    def output(output) {
        def newOutput = [:]

		newOutput?.batchNo = output?.batch_no
		newOutput?.beginDate = output?.begin_date
		newOutput?.content = output?.content
		newOutput?.createdByCode = output?.created_by_code
		newOutput?.createdById = output?.created_by_id
		newOutput?.createdDate = output?.created_date
		newOutput?.dataStateCode = output?.data_state_code
		newOutput?.departmentCode = output?.department_code
		newOutput?.endDate = output?.end_date
		newOutput?.flagCode = output?.flag_code
		newOutput?.flagObjectCode = output?.flag_object_code
		newOutput?.jsonData = output?.json_data
		newOutput?.lastModifiedByCode = output?.last_modified_by_code
		newOutput?.lastModifiedById = output?.last_modified_by_id
		newOutput?.lastModifiedDate = output?.last_modified_date
		newOutput?.orderBy = output?.order_by_
		newOutput?.orgCode = output?.org_code
		newOutput?.personalCode = output?.personal_code
		newOutput?.personalId = output?.personal_id
		newOutput?.siteCode = output?.site_code
		newOutput?.stateCode = output?.state_code
		newOutput?.systemInfoCode = output?.system_info_code
		newOutput?.version = output?.version_
		newOutput?.wfKey = output?.wf_key
		newOutput?.wfVariableId = output?.wf_variable_id

        newOutput
    }
}
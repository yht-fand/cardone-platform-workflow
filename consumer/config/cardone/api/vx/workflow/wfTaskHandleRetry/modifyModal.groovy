package top.cardone.api.vx.workflow.wfTaskHandleRetry

import org.apache.commons.lang3.StringUtils
import top.cardone.workflow.service.WfTaskHandleRetryService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class modifyModal implements java.io.Serializable {
    def input(input) {
        ["wfTaskHandleRetryId": input.wfTaskHandleRetryId]
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.wfTaskHandleRetryId)) {
//          throw new CodeException("wfTaskHandleRetryId required", "工作流任务处理重试标识必填")
//      }
    }

    def func(input) {
		ApplicationContextHolder.getBean(WfTaskHandleRetryService.class).findOneByWfTaskHandleRetryId(input)
    }

    def output(output) {
        def newOutput = [:]

		newOutput?.batchNo = output?.batch_no
		newOutput?.beginDate = output?.begin_date
		newOutput?.createdByCode = output?.created_by_code
		newOutput?.createdById = output?.created_by_id
		newOutput?.createdDate = output?.created_date
		newOutput?.dataStateCode = output?.data_state_code
		newOutput?.departmentCode = output?.department_code
		newOutput?.endDate = output?.end_date
		newOutput?.errorDate = output?.error_date
		newOutput?.errorMessage = output?.error_message
		newOutput?.flagCode = output?.flag_code
		newOutput?.flagObjectCode = output?.flag_object_code
		newOutput?.handleCode = output?.handle_code
		newOutput?.jsonData = output?.json_data
		newOutput?.lastModifiedByCode = output?.last_modified_by_code
		newOutput?.lastModifiedById = output?.last_modified_by_id
		newOutput?.lastModifiedDate = output?.last_modified_date
		newOutput?.lastRetryDate = output?.last_retry_date
		newOutput?.orderBy = output?.order_by_
		newOutput?.orgCode = output?.org_code
		newOutput?.personalCode = output?.personal_code
		newOutput?.personalId = output?.personal_id
		newOutput?.retryCount = output?.retry_count
		newOutput?.siteCode = output?.site_code
		newOutput?.stateCode = output?.state_code
		newOutput?.systemInfoCode = output?.system_info_code
		newOutput?.version = output?.version_
		newOutput?.wfTaskHandleId = output?.wf_task_handle_id
		newOutput?.wfTaskHandleRetryId = output?.wf_task_handle_retry_id

        newOutput
    }
}
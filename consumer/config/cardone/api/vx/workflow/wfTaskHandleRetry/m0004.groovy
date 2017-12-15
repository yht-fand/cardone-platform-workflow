package top.cardone.api.vx.workflow.wfTaskHandleRetry

import org.apache.commons.lang3.StringUtils
import top.cardone.workflow.service.WfTaskHandleRetryService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class m0004 implements java.io.Serializable {
    def input(input) {
        def newInput = [:]

		newInput?.batchNo = input?.batchNo
		newInput?.beginDate = input?.beginDate
		newInput?.createdByCode = input?.createdByCode
		newInput?.createdById = input?.createdById
		newInput?.createdDate = input?.createdDate
		newInput?.dataStateCode = input?.dataStateCode
		newInput?.departmentCode = input?.departmentCode
		newInput?.endDate = input?.endDate
		newInput?.errorDate = input?.errorDate
		newInput?.errorMessage = input?.errorMessage
		newInput?.flagCode = input?.flagCode
		newInput?.flagObjectCode = input?.flagObjectCode
		newInput?.handleCode = input?.handleCode
		newInput?.jsonData = input?.jsonData
		newInput?.lastModifiedByCode = input?.lastModifiedByCode
		newInput?.lastModifiedById = input?.lastModifiedById
		newInput?.lastModifiedDate = input?.lastModifiedDate
		newInput?.lastRetryDate = input?.lastRetryDate
		newInput?.orderBy = input?.orderBy
		newInput?.orgCode = input?.orgCode
		newInput?.personalCode = input?.personalCode
		newInput?.personalId = input?.personalId
		newInput?.retryCount = input?.retryCount
		newInput?.siteCode = input?.siteCode
		newInput?.stateCode = input?.stateCode
		newInput?.systemInfoCode = input?.systemInfoCode
		newInput?.version = input?.version
		newInput?.wfTaskHandleId = input?.wfTaskHandleId
		newInput?.wfTaskHandleRetryId = input?.wfTaskHandleRetryId

        newInput
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.wfTaskHandleRetryCode)) {
//          throw new CodeException("wfTaskHandleRetryCode required", "工作流任务处理重试编号必填")
//      }
//
//      if (StringUtils.length(input?.wfTaskHandleRetryCode) < 4) {
//          throw new CodeException("wfTaskHandleRetryCode minlength", "工作流任务处理重试编号需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.wfTaskHandleRetryCode) > 255) {
//          throw new CodeException("wfTaskHandleRetryCode maxlength", "工作流任务处理重试编号需小于{0}个字符", 255)
//      }
//
//      if (StringUtils.isBlank(input?.name)) {
//          throw new CodeException("name required", "工作流任务处理重试名称必填")
//      }
//
//      if (StringUtils.length(input?.name) < 4) {
//          throw new CodeException("name minlength", "工作流任务处理重试名称需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.name) > 255) {
//          throw new CodeException("name maxlength", "工作流任务处理重试名称需小于{0}个字符", 255)
//      }
		
		def readOne = ['wfTaskHandleRetryCode': input.wfTaskHandleRetryCode, "dataStateCode": "1"]

		def count = ApplicationContextHolder.getBean(WfTaskHandleRetryService.class).readOne(Integer.class, readOne)

		if (count > 0) {
			throw new CodeException("wfTaskHandleRetryCode already exists", "工作流任务处理重试编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(WfTaskHandleRetryService.class).findOne(input)
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
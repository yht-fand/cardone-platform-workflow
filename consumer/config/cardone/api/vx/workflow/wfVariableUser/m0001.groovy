package top.cardone.api.vx.workflow.wfVariableUser

import org.apache.commons.lang3.StringUtils
import top.cardone.workflow.service.WfVariableUserService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class m0001 implements java.io.Serializable {
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
		newInput?.flagCode = input?.flagCode
		newInput?.flagObjectCode = input?.flagObjectCode
		newInput?.jsonData = input?.jsonData
		newInput?.lastModifiedByCode = input?.lastModifiedByCode
		newInput?.lastModifiedById = input?.lastModifiedById
		newInput?.lastModifiedDate = input?.lastModifiedDate
		newInput?.orderBy = input?.orderBy
		newInput?.orgCode = input?.orgCode
		newInput?.personalCode = input?.personalCode
		newInput?.personalId = input?.personalId
		newInput?.siteCode = input?.siteCode
		newInput?.stateCode = input?.stateCode
		newInput?.systemInfoCode = input?.systemInfoCode
		newInput?.userCode = input?.userCode
		newInput?.userId = input?.userId
		newInput?.version = input?.version
		newInput?.wfKey = input?.wfKey
		newInput?.wfVariableUserId = input?.wfVariableUserId

        newInput
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.wfVariableUserCode)) {
//          throw new CodeException("wfVariableUserCode required", "工作流变量与用户编号必填")
//      }
//
//      if (StringUtils.length(input?.wfVariableUserCode) < 4) {
//          throw new CodeException("wfVariableUserCode minlength", "工作流变量与用户编号需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.wfVariableUserCode) > 255) {
//          throw new CodeException("wfVariableUserCode maxlength", "工作流变量与用户编号需小于{0}个字符", 255)
//      }
//
//      if (StringUtils.isBlank(input?.name)) {
//          throw new CodeException("name required", "工作流变量与用户名称必填")
//      }
//
//      if (StringUtils.length(input?.name) < 4) {
//          throw new CodeException("name minlength", "工作流变量与用户名称需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.name) > 255) {
//          throw new CodeException("name maxlength", "工作流变量与用户名称需小于{0}个字符", 255)
//      }
		
		def readOne = ['wfVariableUserCode': input.wfVariableUserCode, "dataStateCode": "1"]

		def count = ApplicationContextHolder.getBean(WfVariableUserService.class).readOne(Integer.class, readOne)

		if (count > 0) {
			throw new CodeException("wfVariableUserCode already exists", "工作流变量与用户编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(WfVariableUserService.class).findOne(input)
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
		newOutput?.userCode = output?.user_code
		newOutput?.userId = output?.user_id
		newOutput?.version = output?.version_
		newOutput?.wfKey = output?.wf_key
		newOutput?.wfVariableUserId = output?.wf_variable_user_id

        newOutput
    }
}
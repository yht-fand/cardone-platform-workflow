package top.cardone.api.vx.workflow.wfVariableUser

import org.apache.commons.lang3.StringUtils
import top.cardone.workflow.service.WfVariableUserService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class u0002 implements java.io.Serializable {
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

        newInput.flagCode = StringUtils.defaultIfBlank(input.flagCode, "input")

        newInput
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.wfVariableUserId)) {
//          throw new CodeException("wfVariableUserId required", "工作流变量与用户标识必填")
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

		def readOne = ["wfVariableUserCode": input.wfVariableUserCode, "object_id": "wfVariableUserId", "dataStateCode": "1"]

		def dbWfVariableUserId = ApplicationContextHolder.getBean(WfVariableUserService.class).readOne(String.class, readOne)

		if (!StringUtils.equals(dbWfVariableUserId, input.wfVariableUserId)) {
			throw new CodeException("wfVariableUserId already exists", "工作流变量与用户编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(WfVariableUserService.class).updateCache(input)
    }

    def output(output) {
		['updateCount': output]        
    }
}
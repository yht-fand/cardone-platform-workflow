package top.cardone.api.vx.workflow.wfTaskHandle

import org.apache.commons.lang3.StringUtils
import top.cardone.workflow.service.WfTaskHandleService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class u0004 implements java.io.Serializable {
    def input(input) {
        def newInput = [:]

		newInput?.batchNo = input?.batchNo
		newInput?.beginDate = input?.beginDate
		newInput?.businessCode = input?.businessCode
		newInput?.businessId = input?.businessId
		newInput?.businessTypeCode = input?.businessTypeCode
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
		newInput?.version = input?.version
		newInput?.wfTaskHandleId = input?.wfTaskHandleId

        newInput.flagCode = StringUtils.defaultIfBlank(input.flagCode, "input")

        newInput
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.wfTaskHandleId)) {
//          throw new CodeException("wfTaskHandleId required", "工作流任务处理标识必填")
//      }
//
//      if (StringUtils.isBlank(input?.name)) {
//          throw new CodeException("name required", "工作流任务处理名称必填")
//      }
//
//      if (StringUtils.length(input?.name) < 4) {
//          throw new CodeException("name minlength", "工作流任务处理名称需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.name) > 255) {
//          throw new CodeException("name maxlength", "工作流任务处理名称需小于{0}个字符", 255)
//      }

		def readOne = ["wfTaskHandleCode": input.wfTaskHandleCode, "object_id": "wfTaskHandleId", "dataStateCode": "1"]

		def dbWfTaskHandleId = ApplicationContextHolder.getBean(WfTaskHandleService.class).readOne(String.class, readOne)

		if (!StringUtils.equals(dbWfTaskHandleId, input.wfTaskHandleId)) {
			throw new CodeException("wfTaskHandleId already exists", "工作流任务处理编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(WfTaskHandleService.class).updateCache(input)
    }

    def output(output) {
		['updateCount': output]        
    }
}
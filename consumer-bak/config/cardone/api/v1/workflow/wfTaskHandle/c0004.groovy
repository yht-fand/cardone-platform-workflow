package top.cardone.api.vx.workflow.wfTaskHandle

import org.apache.commons.lang3.StringUtils
import top.cardone.workflow.service.WfTaskHandleService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class c0004 implements java.io.Serializable {
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
//      if (StringUtils.isBlank(input?.wfTaskHandleCode)) {
//          throw new CodeException("wfTaskHandleCode required", "工作流任务处理编号必填")
//      }
//
//      if (StringUtils.length(input?.wfTaskHandleCode) < 4) {
//          throw new CodeException("wfTaskHandleCode minlength", "工作流任务处理编号需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.wfTaskHandleCode) > 255) {
//          throw new CodeException("wfTaskHandleCode maxlength", "工作流任务处理编号需小于{0}个字符", 255)
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
		
		def readOne = ['wfTaskHandleCode': input.wfTaskHandleCode, "dataStateCode": "1"]

		def count = ApplicationContextHolder.getBean(WfTaskHandleService.class).readOne(Integer.class, readOne)

		if (count > 0) {
			throw new CodeException("wfTaskHandleCode already exists", "工作流任务处理编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(WfTaskHandleService.class).insertByNotExistsCache(input)
    }

    def output(output) {
		['insertCount': output]        
    }
}
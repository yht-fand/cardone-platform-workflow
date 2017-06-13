package api.vx.workflow.wfVariable

import org.apache.commons.lang3.StringUtils
import top.cardone.workflow.service.WfVariableService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class u0003 {
    def input(input) {
        def newInput = [:]

		newInput['batchNo'] = input['batchNo']
		newInput['beginDate'] = input['beginDate']
		newInput['content'] = input['content']
		newInput['createdByCode'] = input['createdByCode']
		newInput['createdDate'] = input['createdDate']
		newInput['dataStateCode'] = input['dataStateCode']
		newInput['departmentCode'] = input['departmentCode']
		newInput['endDate'] = input['endDate']
		newInput['flagCode'] = input['flagCode']
		newInput['flagObjectCode'] = input['flagObjectCode']
		newInput['jsonData'] = input['jsonData']
		newInput['lastModifiedByCode'] = input['lastModifiedByCode']
		newInput['lastModifiedDate'] = input['lastModifiedDate']
		newInput['orderBy'] = input['orderBy']
		newInput['orgCode'] = input['orgCode']
		newInput['personalCode'] = input['personalCode']
		newInput['siteCode'] = input['siteCode']
		newInput['stateCode'] = input['stateCode']
		newInput['systemInfoCode'] = input['systemInfoCode']
		newInput['version'] = input['version']
		newInput['wfKey'] = input['wfKey']
		newInput['wfVariableId'] = input['wfVariableId']

        newInput
    }

    def validation(input) {
//      if (StringUtils.isBlank(input?.wfVariableId)) {
//          throw new CodeException("wfVariableId required", "工作流变量标识必填")
//      }
//
//      if (StringUtils.isBlank(input?.name)) {
//          throw new CodeException("name required", "工作流变量名称必填")
//      }
//
//      if (StringUtils.length(input?.name) < 4) {
//          throw new CodeException("name minlength", "工作流变量名称需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.name) > 255) {
//          throw new CodeException("name maxlength", "工作流变量名称需小于{0}个字符", 255)
//      }

		def readOne = ["wfVariableCode": input.wfVariableCode, "object_id": "wfVariableId"]

		String dbWfVariableId = ApplicationContextHolder.getBean(WfVariableService.class).readOne(String.class, readOne)

		if ((dbWfVariableId != null) && !StringUtils.equals(dbWfVariableId, input.wfVariableId)) {
			throw new CodeException("wfVariableId already exists", "工作流变量编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(WfVariableService.class).updateCache(input)
    }

    def output(output) {
		['updateCount': output]
    }
}
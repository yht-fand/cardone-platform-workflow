package api.vx.workflow.wfVariable

import org.apache.commons.lang3.StringUtils
import top.cardone.workflow.service.WfVariableService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class m0004 {
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
//      if (StringUtils.isBlank(input?.wfVariableCode)) {
//          throw new CodeException("wfVariableCode required", "工作流变量编号必填")
//      }
//
//      if (StringUtils.length(input?.wfVariableCode) < 4) {
//          throw new CodeException("wfVariableCode minlength", "工作流变量编号需{0}个字符以上", 4)
//      }
//
//      if (StringUtils.length(input?.wfVariableCode) > 255) {
//          throw new CodeException("wfVariableCode maxlength", "工作流变量编号需小于{0}个字符", 255)
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
		
		def readOne = ['wfVariableCode': input.wfVariableCode]

		def count = ApplicationContextHolder.getBean(WfVariableService.class).readOne(Integer.class, readOne)

		if (count > 0) {
			throw new CodeException("wfVariableCode already exists", "工作流变量编号已经存在")
		}
    }

    def func(input) {
		ApplicationContextHolder.getBean(WfVariableService.class).findOne(input)
    }

    def output(output) {
        def newOutput = [:]

		newOutput['batchNo'] = output['batch_no']
		newOutput['beginDate'] = output['begin_date']
		newOutput['content'] = output['content']
		newOutput['createdByCode'] = output['created_by_code']
		newOutput['createdDate'] = output['created_date']
		newOutput['dataStateCode'] = output['data_state_code']
		newOutput['departmentCode'] = output['department_code']
		newOutput['endDate'] = output['end_date']
		newOutput['flagCode'] = output['flag_code']
		newOutput['flagObjectCode'] = output['flag_object_code']
		newOutput['jsonData'] = output['json_data']
		newOutput['lastModifiedByCode'] = output['last_modified_by_code']
		newOutput['lastModifiedDate'] = output['last_modified_date']
		newOutput['orderBy'] = output['order_by_']
		newOutput['orgCode'] = output['org_code']
		newOutput['personalCode'] = output['personal_code']
		newOutput['siteCode'] = output['site_code']
		newOutput['stateCode'] = output['state_code']
		newOutput['systemInfoCode'] = output['system_info_code']
		newOutput['version'] = output['version_']
		newOutput['wfKey'] = output['wf_key']
		newOutput['wfVariableId'] = output['wf_variable_id']

        newOutput
    }
}
package top.cardone.api.vx.workflow.wfVariableUser

import org.apache.commons.lang3.StringUtils
import top.cardone.workflow.service.WfVariableUserService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class r0002 implements java.io.Serializable {
    def input(input) {
        input
    }

    def validation(input) {
    }

    def func(input) {
		ApplicationContextHolder.getBean(WfVariableUserService.class).findListByKeyword(input)
    }

    def output(output) {
        def newOutput = []
		
        for (def outputItem : output) {
			newOutput.add(['label': outputItem['name'], 'value': outputItem['c1_wf_variable_user_code']])
        }

        newOutput
    }
}
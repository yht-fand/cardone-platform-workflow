package top.cardone.api.vx.workflow.wfTaskHandle

import org.apache.commons.lang3.StringUtils
import top.cardone.workflow.service.WfTaskHandleService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class r0002 implements java.io.Serializable {
    def input(input) {
        input
    }

    def validation(input) {
    }

    def func(input) {
		ApplicationContextHolder.getBean(WfTaskHandleService.class).findListByKeyword(input)
    }

    def output(output) {
        def newOutput = []
		
        for (def outputItem : output) {
			newOutput.add(['label': outputItem['name'], 'value': outputItem['c1_wf_task_handle_code']])
        }

        newOutput
    }
}
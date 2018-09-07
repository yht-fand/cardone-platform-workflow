package top.cardone.api.vx.workflow.wfVariable

import org.apache.commons.lang3.StringUtils
import top.cardone.workflow.service.WfVariableService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class d0003 implements java.io.Serializable {
    def input(input) {
        def wfVariableIds = input?.wfVariableIds?.split(",")

        if (!wfVariableIds) {
            throw new CodeException("wfVariableIds required", "工作流变量标识集合必填")
        }

        def wfVariableIdList = []

        for (def wfVariableId : wfVariableIds) {
            wfVariableIdList.add(["wfVariableId": wfVariableId, "flagCode": "input", "dataStateCode": "0", "endDate": new Date()])
        }

        ["wfVariableIds": wfVariableIdList]
    }

    def validation(input) {
    }

    def func(input) {
        ApplicationContextHolder.getBean(WfVariableService.class).updateListCache(input?.wfVariableIds)
    }

    def output(output) {
        ['deleteCounts': output]
    }
}
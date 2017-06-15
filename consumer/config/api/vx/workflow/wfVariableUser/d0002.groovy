package api.vx.workflow.wfVariableUser

import org.apache.commons.lang3.StringUtils
import top.cardone.workflow.service.WfVariableUserService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class d0001 implements java.io.Serializable {
    def input(input) {
        def wfVariableUserIds = input?.wfVariableUserIds?.split(",")

        if (!wfVariableUserIds) {
            throw new CodeException("wfVariableUserIds required", "工作流变量与用户标识集合必填")
        }

        def wfVariableUserIdList = []

        for (def wfVariableUserId : wfVariableUserIds) {
            wfVariableUserIdList.add(["wfVariableUserId": wfVariableUserId, "flagCode": "input", "dataStateCode": "0", "endDate": new Date()])
        }

        ["wfVariableUserIds": wfVariableUserIdList]
    }

    def validation(input) {
    }

    def func(input) {
        ['deleteCounts': ApplicationContextHolder.getBean(WfVariableUserService.class).deleteListCache(input?.wfVariableUserIds)]
    }

    def output(output) {
        output
    }
}
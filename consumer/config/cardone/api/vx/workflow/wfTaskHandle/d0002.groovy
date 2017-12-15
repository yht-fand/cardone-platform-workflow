package top.cardone.api.vx.workflow.wfTaskHandle

import org.apache.commons.lang3.StringUtils
import top.cardone.workflow.service.WfTaskHandleService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class d0002 implements java.io.Serializable {
    def input(input) {
        def wfTaskHandleIds = input?.wfTaskHandleIds?.split(",")

        if (!wfTaskHandleIds) {
            throw new CodeException("wfTaskHandleIds required", "工作流任务处理标识集合必填")
        }

        def wfTaskHandleIdList = []

        for (def wfTaskHandleId : wfTaskHandleIds) {
            wfTaskHandleIdList.add(["wfTaskHandleId": wfTaskHandleId, "flagCode": "input", "dataStateCode": "0", "endDate": new Date()])
        }

        ["wfTaskHandleIds": wfTaskHandleIdList]
    }

    def validation(input) {
    }

    def func(input) {
        ApplicationContextHolder.getBean(WfTaskHandleService.class).updateListCache(input?.wfTaskHandleIds)
    }

    def output(output) {
        ['deleteCounts': output]
    }
}
package top.cardone.api.vx.workflow.wfTaskHandleRetry

import org.apache.commons.lang3.StringUtils
import top.cardone.workflow.service.WfTaskHandleRetryService
import top.cardone.context.ApplicationContextHolder
import top.cardone.core.CodeException

class d0003 implements java.io.Serializable {
    def input(input) {
        def wfTaskHandleRetryIds = input?.wfTaskHandleRetryIds?.split(",")

        if (!wfTaskHandleRetryIds) {
            throw new CodeException("wfTaskHandleRetryIds required", "工作流任务处理重试标识集合必填")
        }

        def wfTaskHandleRetryIdList = []

        for (def wfTaskHandleRetryId : wfTaskHandleRetryIds) {
            wfTaskHandleRetryIdList.add(["wfTaskHandleRetryId": wfTaskHandleRetryId, "flagCode": "input", "dataStateCode": "0", "endDate": new Date()])
        }

        ["wfTaskHandleRetryIds": wfTaskHandleRetryIdList]
    }

    def validation(input) {
    }

    def func(input) {
        ApplicationContextHolder.getBean(WfTaskHandleRetryService.class).updateListCache(input?.wfTaskHandleRetryIds)
    }

    def output(output) {
        ['deleteCounts': output]
    }
}
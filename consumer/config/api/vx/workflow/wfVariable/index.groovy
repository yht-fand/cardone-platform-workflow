package top.cardone.api.vx.workflow.wfVariable

import org.apache.commons.lang3.time.DateFormatUtils
import org.apache.shiro.SecurityUtils

import java.time.LocalDateTime
import java.time.ZoneId

class index implements java.io.Serializable {
    def input(input) {
        input
    }

    def validation(input) {

    }

    def func(input) {
        input
    }

    def output(output) {
        output.permission_add = SecurityUtils.getSubject().hasRole('administrator') || SecurityUtils.getSubject().isPermitted('workflow:wfVariable:add')
        output.permission_modify = SecurityUtils.getSubject().hasRole('administrator') || SecurityUtils.getSubject().isPermitted('workflow:wfVariable:modify')
        output.permission_delete = SecurityUtils.getSubject().hasRole('administrator') || SecurityUtils.getSubject().isPermitted('workflow:wfVariable:delete')
        output.permission_impData = SecurityUtils.getSubject().hasRole('administrator') || SecurityUtils.getSubject().isPermitted('workflow:wfVariable:impData')
        output.permission_expData = SecurityUtils.getSubject().hasRole('administrator') || SecurityUtils.getSubject().isPermitted('workflow:wfVariable:expData')
        output.permission_downloadExcelTemplate = SecurityUtils.getSubject().hasRole('administrator') || SecurityUtils.getSubject().isPermitted('workflow:wfVariable:downloadExcelTemplate')

        output.startTime = DateFormatUtils.format(Date.from(LocalDateTime.now().plusDays(-6).atZone(ZoneId.systemDefault()).toInstant()), DateFormatUtils.ISO_8601_EXTENDED_DATE_FORMAT.getPattern())
        output.endTime = DateFormatUtils.format(Date.from(LocalDateTime.now().plusDays(1).atZone(ZoneId.systemDefault()).toInstant()), DateFormatUtils.ISO_8601_EXTENDED_DATE_FORMAT.getPattern())

        output
    }
}
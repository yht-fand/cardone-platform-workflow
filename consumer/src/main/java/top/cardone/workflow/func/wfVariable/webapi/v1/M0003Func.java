package top.cardone.workflow.func.wfVariable.webapi.v1;

import org.springframework.stereotype.Component;
import top.cardone.workflow.service.WfVariableService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 工作流变量 - 复合
 */
@Component("/web-api/v1/configuration/wfVariable/m0003.json")
public class M0003Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        return ApplicationContextHolder.getBean(WfVariableService.class).findOne(map);
    }
}
package top.cardone.workflow.func.wfVariable.webapi.v1;

import org.springframework.stereotype.Component;
import top.cardone.workflow.service.WfVariableService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 工作流变量 - 删除
 */
@Component("/web-api/v1/configuration/wfVariable/d0001.json")
public class D0001Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        return ApplicationContextHolder.getBean(WfVariableService.class).delete(map);
    }
}

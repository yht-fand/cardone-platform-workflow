package top.cardone.workflow.func.wfVariableUser.webapi.v1;

import org.springframework.stereotype.Component;
import top.cardone.workflow.service.WfVariableUserService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 工作流变量与用户 - 创建
 */
@Component("/web-api/v1/configuration/wfVariableUser/c0004.json")
public class C0004Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        return ApplicationContextHolder.getBean(WfVariableUserService.class).save(map);
    }
}

package top.cardone.workflow.func.wfVariableUser.webapi.v1;

import org.springframework.stereotype.Component;
import top.cardone.workflow.service.WfVariableUserService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 工作流变量与用户 - 复合
 */
@Component("/web-api/v1/configuration/wfVariableUser/m0002.json")
public class M0002Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        return ApplicationContextHolder.getBean(WfVariableUserService.class).findOne(map);
    }
}
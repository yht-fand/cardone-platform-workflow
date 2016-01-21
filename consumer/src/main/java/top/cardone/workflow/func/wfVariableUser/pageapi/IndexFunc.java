package top.cardone.workflow.func.wfVariableUser.pageapi;

import org.springframework.stereotype.Component;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 工作流变量与用户 - 索引
 */
@Component("/workflow/wfVariableUser/index.json")
public class IndexFunc implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        return null;
    }
}
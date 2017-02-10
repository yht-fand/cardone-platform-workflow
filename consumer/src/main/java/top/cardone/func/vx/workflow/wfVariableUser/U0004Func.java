package top.cardone.func.vx.workflow.wfVariableUser;

import top.cardone.workflow.service.WfVariableUserService;
import com.google.common.collect.Table;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import top.cardone.cache.Cache;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.context.util.TableUtils;
import top.cardone.core.util.func.Func1;

import java.util.Map;

/**
 * 工作流变量与用户 - 修改
 */
@Log4j2
@Component("/vx/workflow/wfVariableUser/u0004.json")
public class U0004Func implements Func1<Object, Map<String, Object>> {
    @Value("${app.root}/config/api/vx/workflow/wfVariableUser/u0004.input.json")
    private String inputJson;

    private void validate(Map<String, Object> inputMap) {
    }

    @Override
    public Object func(Map<String, Object> inputMap) {
        Table<String, String, String> inputTable;

        if (log.isDebugEnabled()) {
            inputTable = TableUtils.newTable(inputJson);
        } else {
            inputTable = ApplicationContextHolder.getBean(Cache.class).get("inputTable", inputJson, () -> TableUtils.newTable(inputJson));
        }

        Map<String, Object> newInputMap = top.cardone.context.util.MapUtils.newHashMap(inputMap, inputTable);

        validate(newInputMap);

        return ApplicationContextHolder.getBean(WfVariableUserService.class).updateCache(newInputMap);
    }
}
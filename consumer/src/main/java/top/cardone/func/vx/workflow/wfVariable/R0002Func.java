package top.cardone.func.vx.workflow.wfVariable;

import top.cardone.workflow.service.WfVariableService;
import com.google.common.collect.Table;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Component;
import top.cardone.cache.Cache;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.context.util.TableUtils;
import top.cardone.core.util.func.Func1;
import top.cardone.data.support.PageSupport;

import java.util.List;
import java.util.Map;

/**
 * 工作流变量 - 查询
 */
@Log4j2
@Component("/vx/workflow/wfVariable/r0002.json")
public class R0002Func implements Func1<Object, Map<String, Object>> {
    @Value("${app.root}/config/api/vx/workflow/wfVariable/r0002.input.json")
    private String inputJson;

    @Value("${app.root}/config/api/vx/workflow/wfVariable/r0002.output.json")
    private String outputJson;

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

        Page<Map<String, Object>> wfVariablePage = ApplicationContextHolder.getBean(WfVariableService.class).page(newInputMap);

        Table<String, String, String> outputTable;

        if (log.isDebugEnabled()) {
            outputTable = TableUtils.newTable(outputJson);
        } else {
            outputTable = ApplicationContextHolder.getBean(Cache.class).get("outputTable", outputJson, () -> TableUtils.newTable(outputJson));
        }

        List<Map<String, Object>> newContent = top.cardone.context.util.ListUtils.newArrayList(wfVariablePage.getContent(), outputTable);

        return ApplicationContextHolder.getBean(PageSupport.class).newMap(newContent, inputMap, wfVariablePage.getTotalElements());
    }
}
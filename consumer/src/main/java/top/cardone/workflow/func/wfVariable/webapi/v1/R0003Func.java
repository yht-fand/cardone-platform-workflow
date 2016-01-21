package top.cardone.workflow.func.wfVariable.webapi.v1;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Component;
import top.cardone.workflow.dto.WfVariableDto;
import top.cardone.workflow.service.WfVariableService;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;
import top.cardone.data.support.PageSupport;

import java.util.List;
import java.util.Map;

/**
 * 工作流变量 - 查询分页
 */
@Component("/web-api/v1/configuration/wfVariable/r0003.json")
public class R0003Func implements Func1<Object, Map<String, Object>> {
    @Override
    public Object func(Map<String, Object> map) {
        Page<WfVariableDto> wfVariableDtoPage = ApplicationContextHolder.getBean(WfVariableService.class).page(WfVariableDto.class, map);

        return ApplicationContextHolder.func(PageSupport.class, pageSupport -> pageSupport.newMap(this.toMapList(wfVariableDtoPage.getContent()), map, wfVariableDtoPage.getTotalElements()));
    }

    private List<Map<String, Object>> toMapList(List<WfVariableDto> wfVariableDtoList) {
        List<Map<String, Object>> mapList = Lists.newArrayList();

        for (WfVariableDto wfVariableDto : wfVariableDtoList) {
            mapList.add(this.toMap(wfVariableDto));
        }

        return mapList;
    }

    private Map<String, Object> toMap(WfVariableDto wfVariableDto) {
        Map<String, Object> map = Maps.newHashMap();

        map.put("beginDate", wfVariableDto.getBeginDate());
        map.put("content", wfVariableDto.getContent());
        map.put("createdByCode", wfVariableDto.getCreatedByCode());
        map.put("createdDate", wfVariableDto.getCreatedDate());
        map.put("dataStateCode", wfVariableDto.getDataStateCode());
        map.put("departmentCode", wfVariableDto.getDepartmentCode());
        map.put("endDate", wfVariableDto.getEndDate());
        map.put("lastModifiedByCode", wfVariableDto.getLastModifiedByCode());
        map.put("lastModifiedDate", wfVariableDto.getLastModifiedDate());
        map.put("orgCode", wfVariableDto.getOrgCode());
        map.put("permissionCodes", wfVariableDto.getPermissionCodes());
        map.put("roleCodes", wfVariableDto.getRoleCodes());
        map.put("stateCode", wfVariableDto.getStateCode());
        map.put("version", wfVariableDto.getVersion());
        map.put("wfId", wfVariableDto.getWfId());
        map.put("wfKey", wfVariableDto.getWfKey());
        map.put("wfVariableId", wfVariableDto.getWfVariableId());

        return map;
    }
}
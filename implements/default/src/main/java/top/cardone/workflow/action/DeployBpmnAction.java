package top.cardone.workflow.action;

import lombok.Setter;
import lombok.extern.log4j.Log4j2;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.springframework.core.io.Resource;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.action.Action0;

import java.io.File;
import java.io.IOException;
import java.util.Date;

/**
 * Created by Administrator on 2016/9/13.
 */
@Log4j2
public class DeployBpmnAction implements Action0 {
	@Setter
	private Resource[] bpmnFiles;

	@Setter
	private boolean redeploy = false;

	@Override
	public void action() {
		if (ArrayUtils.isEmpty(bpmnFiles)) {
			return;
		}

		for (Resource bpmnFile : bpmnFiles) {
			if (!bpmnFile.exists()) {
				continue;
			}

			try {
				String lockFilePath = bpmnFile.getFile().getPath() + ".lock";

				File lockFile = new File(lockFilePath);

				if (!redeploy && lockFile.exists()) {
					continue;
				}

				ApplicationContextHolder.getBean(org.activiti.engine.RepositoryService.class).createDeployment().addInputStream(bpmnFile.getFilename(), bpmnFile.getInputStream())
						.deploy();

				FileUtils.write(lockFile, DateFormatUtils.format(new Date(), DateFormatUtils.ISO_DATETIME_FORMAT.getPattern()));
			} catch (IOException e) {
				log.error(e.getMessage(), e);
			}
		}
	}
}

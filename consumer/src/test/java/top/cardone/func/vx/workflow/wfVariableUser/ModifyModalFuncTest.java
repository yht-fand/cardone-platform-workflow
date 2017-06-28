package top.cardone.func.vx.workflow.wfVariableUser;

import com.google.common.base.Charsets;
import top.cardone.ConsumerApplication;
import lombok.extern.log4j.Log4j2;
import lombok.val;
import org.apache.commons.io.FileUtils;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.core.io.Resource;
import org.springframework.core.task.TaskExecutor;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.scheduling.support.TaskUtils;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.StopWatch;
import top.cardone.context.ApplicationContextHolder;
import top.cardone.core.util.func.Func1;

import java.io.IOException;

@Log4j2
@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = ConsumerApplication.class, value = {"spring.profiles.active=test"}, webEnvironment = SpringBootTest.WebEnvironment.DEFINED_PORT)
public class ModifyModalFuncTest {
    @Value("http://localhost:${server.port:8765}${server.context-path:}/vx/workflow/wfVariableUser/modifyModal.json")
    private String funcUrl;

    @Value("${app.root}/src/test/resources/top/cardone/func/vx/workflow/wfVariableUser/ModifyModalFuncTest.func.input.json")
    private Resource funcInputResource;

    @Value("${app.root}/src/test/resources/top/cardone/func/vx/workflow/wfVariableUser/ModifyModalFuncTest.func.output.json")
    private Resource funcOutputResource;

    private HttpHeaders headers;

    @Before
    public void setup() {
        headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
        headers.set("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
        headers.set("token", (String) ApplicationContextHolder.getBean(Func1.class, "readCredentialsForAesFunc").func("admin"));
        headers.set("username", "admin");

        if (!funcInputResource.exists()) {
            try {
                FileUtils.write(funcInputResource.getFile(), "{}", Charsets.UTF_8);
            } catch (IOException e) {
                log.debug(e);
            }
        }
    }

    @Test
    public void func() throws Exception {
        this.func(100);
    }

    private void func(int count) throws Exception {
        String input = FileUtils.readFileToString(funcInputResource.getFile(), Charsets.UTF_8);

        HttpEntity<String> httpEntity = new HttpEntity<>(input, headers);

        Runnable runnable = () -> {
            val sw = new StopWatch();

            sw.start(funcUrl);

            String output = new org.springframework.boot.test.web.client.TestRestTemplate().postForObject(funcUrl, httpEntity, String.class);

            sw.stop();

            if (sw.getTotalTimeMillis() > 500) {
                log.error(sw.prettyPrint());
            } else if (log.isDebugEnabled()) {
                log.debug(sw.prettyPrint());
            }

            try {
                FileUtils.write(funcOutputResource.getFile(), output, Charsets.UTF_8);
            } catch (IOException e) {
                log.debug(e);
            }
        };

        for (int i = 0; i < count; i++) {
            ApplicationContextHolder.getBean(TaskExecutor.class).execute(TaskUtils.decorateTaskWithErrorHandler(() -> {
                for (int j = 0; j < count; j++) {
                    ApplicationContextHolder.getBean(TaskExecutor.class).execute(TaskUtils.decorateTaskWithErrorHandler(runnable, null, true));
                }
            }, null, true));
        }

        Thread.sleep(500 * count * count);
    }
}
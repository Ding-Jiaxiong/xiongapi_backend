package com.dingjiaxiong.project.service;

import com.dingjiaxiong.xiongapi_common.service.InnerUserInterfaceInfoService;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;


/**
 * 用户接口信息服务测试
 *
 * @author Ding Jiaxiong
 */
@SpringBootTest
public class UserInterfaceInfoServiceTest {

    @Resource
    private InnerUserInterfaceInfoService innerUserInterfaceInfoService;

    @Test
    public void invokeCount() {
        boolean b = innerUserInterfaceInfoService.invokeCount(1L, 1L);
        Assertions.assertTrue(b);
    }
}
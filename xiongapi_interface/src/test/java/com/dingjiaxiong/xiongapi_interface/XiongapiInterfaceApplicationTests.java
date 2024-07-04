package com.dingjiaxiong.xiongapi_interface;

import com.dingjiaxiong.xiongapi_client_sdk.client.XiongApiClient;
import com.dingjiaxiong.xiongapi_client_sdk.model.User;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;

@SpringBootTest
class XiongapiInterfaceApplicationTests {

    @Resource
    private XiongApiClient xiongApiClient;


    @Test
    void contextLoads() throws UnsupportedEncodingException {

        String jiaxiong = xiongApiClient.getNameByGet("jiaxiong");
        User user = new User();
        user.setUsername("家雄");
        String usernameByPost = xiongApiClient.getUsernameByPost(user);

        System.out.println(jiaxiong);
        System.out.println(usernameByPost);
    }

}

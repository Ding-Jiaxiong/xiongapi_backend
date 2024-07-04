package com.dingjiaxiong.xiongapi_interface;

import com.dingjiaxiong.xiongapi_client_sdk.client.XiongApiClient;
import com.dingjiaxiong.xiongapi_client_sdk.model.User;

import java.io.UnsupportedEncodingException;

public class Main {

    public static void main(String[] args) throws UnsupportedEncodingException {

        String accessKey = "jiaxiong";
        String secretKey = "abcdefgh";

        XiongApiClient xiongApiClient = new XiongApiClient(accessKey, secretKey);

        String r1 = xiongApiClient.getNameByGet("Ding Jiaxiong");
        String r2 = xiongApiClient.getNameByPost("Ding Jiaxiong");

        User user = new User();
        user.setUsername("家雄");
        String r3 = xiongApiClient.getUsernameByPost(user);

        System.out.println(r1);
        System.out.println(r2);
        System.out.println(r3);

    }

}

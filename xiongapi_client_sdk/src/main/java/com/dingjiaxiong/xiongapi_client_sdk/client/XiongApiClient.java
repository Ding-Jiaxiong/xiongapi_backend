package com.dingjiaxiong.xiongapi_client_sdk.client;

import cn.hutool.core.util.RandomUtil;
import cn.hutool.http.HttpRequest;
import cn.hutool.http.HttpResponse;
import cn.hutool.http.HttpUtil;
import cn.hutool.json.JSONUtil;
import com.dingjiaxiong.xiongapi_client_sdk.model.User;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import static com.dingjiaxiong.xiongapi_client_sdk.utils.SignUtils.genSign;


/**
 * 调用第三方接口的客户端
 *
 * @author Ding Jiaxiong
 */

public class XiongApiClient {

    private static final String GATEWAY_HOST = "http://localhost:8090";

    private String accessKey;

    private String secretKey;

    public XiongApiClient(String accessKey, String secretKey) {
        this.accessKey = accessKey;
        this.secretKey = secretKey;
    }

    public String getNameByGet(String name) {

        //可以单独传入http参数，这样参数会自动做URL编码，拼接在URL中
        HashMap<String, Object> paramMap = new HashMap<>();
        paramMap.put("name", name);

        String result = HttpUtil.get(GATEWAY_HOST + "/api/name/", paramMap);
        System.out.println(result);

        return result;
    }


    public String getNameByPost(String name) {

        //可以单独传入http参数，这样参数会自动做URL编码，拼接在URL中
        HashMap<String, Object> paramMap = new HashMap<>();
        paramMap.put("name", name);

        String result = HttpUtil.post(GATEWAY_HOST + "/api/name/", paramMap);
        System.out.println(result);

        return result;

    }

    private Map<String, String> getHeaderMap(String body) throws UnsupportedEncodingException {
        Map<String, String> hashMap = new HashMap<>();

        hashMap.put("accessKey", accessKey);

        // 不能直接发送给后端
//        hashMap.put("secretKey", secretKey);
        hashMap.put("nonce", RandomUtil.randomNumbers(4));

        String encodebody = URLEncoder.encode(body, "UTF-8");

        hashMap.put("body", encodebody);
        hashMap.put("timestamp", String.valueOf(System.currentTimeMillis() / 1000));
        hashMap.put("sign", genSign(encodebody, secretKey));

        return hashMap;
    }


    public String getUsernameByPost(User user) throws UnsupportedEncodingException {

        String json = JSONUtil.toJsonStr(user);
        HttpResponse httpResponse = HttpRequest.post(GATEWAY_HOST + "/api/name/user")
                .addHeaders(getHeaderMap(json))
                .body(json)
                .execute();

        System.out.println(httpResponse.getStatus());
        String result = httpResponse.body();
        System.out.println(result);

        return result;
    }

}

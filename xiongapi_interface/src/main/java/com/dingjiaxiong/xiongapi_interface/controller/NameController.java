package com.dingjiaxiong.xiongapi_interface.controller;

import com.dingjiaxiong.xiongapi_client_sdk.model.User;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

import static com.dingjiaxiong.xiongapi_client_sdk.utils.SignUtils.genSign;


/**
 * 名称API
 *
 * @author Ding Jiaxiong
 */

@RestController
@RequestMapping("/name")
public class NameController {

    @GetMapping("/get")
    public String getNameByGet(String name, HttpServletRequest request) {

        System.out.println(request.getHeader("jiaxiong"));

        return "GET 你的名字是" + name;
    }

    @PostMapping("/post")
    public String getNameByPost(@RequestParam String name) {
        return "POST 你的名字是" + name;
    }

    @PostMapping("/user")
    public String getUsernameByPost(@RequestBody User user, HttpServletRequest request) {

//        String accessKey = request.getHeader("accessKey");
//        String nonce = request.getHeader("nonce");
//        String timestamp = request.getHeader("timestamp");
//        String sign = request.getHeader("sign");
//        String body = request.getHeader("body");
//
//        if (!accessKey.equals("jiaxiong")) { // 实际情况应该是去数据库中查是否已分配给用户
//            throw new RuntimeException("无权限");
//        }
//
//        if (Long.parseLong(nonce) > 10000) {
//            throw new RuntimeException("无权限");
//        }
//
//        // todo 时间和当前时间不能超过 5 分钟
////        if (timestamp) {
////
////        }
//
//        // todo 实际情况中是从数据库中查出 secretKey【因为这个东西本身就是我们开发的】
//        String serverSign = genSign(body, "abcdefgh");
//        if (!sign.equals(serverSign)) {
//            throw new RuntimeException("无权限");
//        }

        String result = "POST 用户名字是" + user.getUsername();
        return result;
    }
}

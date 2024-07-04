package com.dingjiaxiong.xiongapi_common.service;


import com.dingjiaxiong.xiongapi_common.model.entity.InterfaceInfo;

/**
 * 内部接口信息服务
 *
 * @author Ding Jiaxiong
 */
public interface InnerInterfaceInfoService {

    /**
     * 从数据库中查询模拟接口是否存在（请求路径、请求方法、请求参数）
     */
    InterfaceInfo getInterfaceInfo(String path, String method);
}

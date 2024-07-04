package com.dingjiaxiong.project.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.dingjiaxiong.xiongapi_common.model.entity.UserInterfaceInfo;

import java.util.List;

/**
* @author DingJiaxiong
* @description 针对表【user_interface_info(用户调用接口关系)】的数据库操作Mapper
* @createDate 2024-07-04 11:10:41
* @Entity com.dingjiaxiong.project.model.entity.UserInterfaceInfo
*/
public interface UserInterfaceInfoMapper extends BaseMapper<UserInterfaceInfo> {

    List<UserInterfaceInfo> listTopInvokeInterfaceInfo(int limit);

}





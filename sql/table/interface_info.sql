-- 接口信息
create table if not exists xiongapi.`interface_info`
(
    `id`             bigint                             not null auto_increment comment '主键' primary key,
    `name`           varchar(256)                       not null comment '名称',
    `description`    varchar(256)                       null comment '描述',
    `url`            varchar(512)                       not null comment '接口地址',

    `requestParams`  text                               not null comment '请求参数',

    `requestHeader`  text                               null comment '请求头',
    `responseHeader` text                               null comment '响应头',
    `status`         int      default 0                 not null comment '接口状态(0-关闭，1-开启)',
    `method`         varchar(256)                       not null comment '请求类型',
    `userId`         bigint                             not null comment '创建人',
    `createTime`     datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    `updateTime`     datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `isDelete`       tinyint  default 0                 not null comment '是否删除(0-未删，1-已删)'
) comment '接口信息';


-- 用户调用接口关系表
create table if not exists xiongapi.`user_interface_info`
(
    `id` bigint not null auto_increment comment '主键' primary key,
    `userId` bigint not null comment '调用用户 id',
    `interfaceInfoId` bigint not null comment '接口 id',
    `totalNum` int default 0 not null comment '总调用次数',
    `leftNum` int default 0 not null comment '剩余调用次数',
    `status` int default 0 not null comment '0-正常，1-禁用',
    `createTime` datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    `updateTime` datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `isDelete` tinyint default 0 not null comment '是否删除(0-未删, 1-已删)'
) comment '用户调用接口关系';


insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('杨风华', '东南农业大学', 'www.iva-spinka.io', '泉州', '覃涛', 0, '孔梓晨', 6490);
insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('唐智宸', '北科技大学', 'www.barney-borer.org', '南充', '谢昊焱', 0, '萧熠彤', 4165);
insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('夏昊然', '东经贸大学', 'www.mireya-lynch.co', '宁波', '段瑾瑜', 0, '姚烨华', 4);
insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('贾峻熙', '东经贸大学', 'www.lazaro-hickle.io', '珠海', '李煜城', 0, '姚琪', 907094);
insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('邱博文', '东大学', 'www.meghann-baumbach.com', '苏州', '王乐驹', 0, '郭子轩', 7615434);
insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('秦文博', '北理工大学', 'www.nathalie-koch.info', '攀枝花', '夏烨华', 0, '沈远航', 191379877);
insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('刘思', '西北艺术大学', 'www.del-bogisich.co', '荣成', '许炎彬', 0, '任伟诚', 0);
insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('彭明辉', '南科技大学', 'www.palma-dare.com', '拉萨', '邹潇然', 0, '丁哲瀚', 83649);
insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('曾修杰', '西北农业大学', 'www.kaitlyn-hermiston.biz', '沧州', '莫浩然', 0, '尹峻熙', 6);
insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('萧金鑫', '西大学', 'www.leeanne-little.co', '南宁', '贾聪健', 0, '薛子骞', 4539789735);
insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('姚伟泽', '东北科技大学', 'www.normand-baumbach.name', '锦州', '方子骞', 0, '马潇然', 71);
insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('曹鸿煊', '西北农业大学', 'www.noble-stark.name', '大庆', '邓钰轩', 0, '赵浩', 9);
insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('曾子涵', '东北体育大学', 'www.georgia-shanahan.io', '昆山', '贾哲瀚', 0, '萧哲瀚', 51);
insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('吕雨泽', '西体育大学', 'www.christian-pfeffer.com', '乳山', '任瑞霖', 0, '段思源', 153);
insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('崔昊天', '中国经贸大学', 'www.kathline-feest.info', '肇庆', '段明', 0, '夏锦程', 6389);
insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('韩伟泽', '西南体育大学', 'www.keiko-nitzsche.biz', '淮安', '王展鹏', 0, '吴天翊', 78);
insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('曹博涛', '中国科技大学', 'www.johnathon-heathcote.biz', '南昌', '于嘉懿', 0, '郝晋鹏', 62380);
insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('曹修杰', '北技术大学', 'www.juliana-mraz.co', '德阳', '萧钰轩', 0, '马智辉', 879);
insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('洪昊然', '东南经贸大学', 'www.lala-christiansen.com', '常州', '邵志泽', 0, '田明辉', 593);
insert into xiongapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                       `method`, `userId`)
values ('王熠彤', '东北艺术大学', 'www.kendal-franecki.info', '长治', '吴明杰', 0, '许昊天', 3612918898);
nfo` (`id`, `name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values (19, '钱明哲', '东南艺术大学', 'www.randy-turcotte.org', '三门峡', '高天磊', 0, '田哲瀚', 2);

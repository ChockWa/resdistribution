create table sys_wechat_group(
   id varchar(36) not null comment 'id',
   name varchar(30) null comment '群名称',
   wechat_count int(8) null comment '微信数量',
   create_time datetime null comment '创建时间',
   primary key (id)
)ENGINE = InnoDB CHARACTER SET = utf8 COMMENT = '微信群表';

create table sys_wechat(
   wechat_number varcahr(64) not null comment '微信号',
   group_id varchar(36) null comment '所属群id',
   status int(3) null comment '状态0-未发放1-已发放2-已领取',
   user_phone varchar(16) null comment '领取的用户手机号',
   create_time datetime null comment '创建时间',
   primary key (wechat_number)
)ENGINE = InnoDB CHARACTER SET = utf8 COMMENT = '微信表';

create table sys_import_log(
   id bigint(20) auto_increment not null,
   group_id varchar(36) null comment '所属群id',
   duplicate_wechat_count int(8) null comment '重复微信数量',
   invalid_wechat_count int(8) null comment '无效微信数量',
   success_wechat_count int(8) null comment '成功微信数量',
   primary key (id)
)ENGINE = InnoDB CHARACTER SET = utf8 COMMENT = '微信导入日志表';

create table sys_first_login_log(
   user_phone varchar(16) null comment '用户手机号',
   create_time datetime null comment '创建时间',
   primary key (user_phone)
)ENGINE = InnoDB CHARACTER SET = utf8 COMMENT = '首次登录记录表';
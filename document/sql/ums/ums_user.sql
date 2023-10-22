-- 借阅信息
create table if not exists `bms_user`
(
`id` bigint not null primary key comment '用户id',
`username` varchar(32) not null comment '用户名',
`password` bigint not null comment '密码',
`major_id` bigint not null comment '专业id',
`class` int not null comment '班级',
`sex` varchar(4) not null comment '性别',
`telephone` varchar(64) not null comment '手机号'
) comment '借阅人信息';



insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (1, '邹鹏飞', 123456, 0, 6, '女', '14547964851');
insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (2, '方锦程', 123456, 0, 3, '女', '15237124219');
insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (3, '王智宸', 123456, 4, 4, '女', '15892548280');
insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (4, '白泽洋', 123456, 0, 3, '男', '15731023185');
insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (5, '黎耀杰', 123456, 6, 5, '男', '17145960024');
insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (6, '赵志泽', 123456, 6, 6, '女', '17383780223');
insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (7, '阎健柏', 123456, 20, 2, '女', '17722179738');
insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (8, '陶思聪', 123456, 1, 3, '男', '17715416895');
insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (9, '赵晓啸', 123456, 20, 1, '男', '17070339548');
insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (10, '谭明轩', 123456, 1, 6, '女', '17107130991');
insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (11, '孙梓晨', 123456, 3, 6, '男', '15321948653');
insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (12, '马明哲', 123456, 9, 6, '女', '17317367285');
insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (13, '何擎宇', 123456, 20, 3, '男', '17896544296');
insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (14, '曾炫明', 123456, 1, 4, '男', '15551098188');
insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (15, '尹鸿涛', 123456, 8, 4, '女', '17757734529');
insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (16, '侯懿轩', 123456, 20, 2, '男', '15740760253');
insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (17, '王立轩', 123456, 2, 2, '女', '15367986168');
insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (18, '王志泽', 123456, 0, 1, '女', '15171809389');
insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (19, '陶智宸', 123456, 0, 2, '男', '17344515343');
insert into `bms_user` (`id`, `username`, `password`, `major_id`, `class`, `sex`, `telephone`) values (20, '唐旭尧', 123456, 0, 1, '男', '17550067422');
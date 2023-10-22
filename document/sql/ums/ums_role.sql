-- 角色表
create table if not exists `ums_role`
(
`id` bigint not null auto_increment comment '角色id' primary key,
`name` varchar(32) not null comment '角色名',
`role_key` varchar(32) not null comment '角色关键字'
) comment '角色表';

insert into `ums_role` (`id`, `name`, `role_key`, `status`) values (1, '6', '吴修杰', 0);
insert into `ums_role` (`id`, `name`, `role_key`, `status`) values (2, '6', '梁晓博', 0);
insert into `ums_role` (`id`, `name`, `role_key`, `status`) values (3, '6', '孟智辉', 0);
insert into `ums_role` (`id`, `name`, `role_key`, `status`) values (4, '6', '曾晟睿', 0);
insert into `ums_role` (`id`, `name`, `role_key`, `status`) values (5, '6', '徐胤祥', 0);
insert into `ums_role` (`id`, `name`, `role_key`, `status`) values (6, '6', '姜子涵', 0);
insert into `ums_role` (`id`, `name`, `role_key`, `status`) values (7, '6', '莫鹭洋', 0);
insert into `ums_role` (`id`, `name`, `role_key`, `status`) values (8, '6', '覃楷瑞', 0);
insert into `ums_role` (`id`, `name`, `role_key`, `status`) values (9, '6', '丁凯瑞', 0);
insert into `ums_role` (`id`, `name`, `role_key`, `status`) values (10, '6', '陶烨霖', 0);
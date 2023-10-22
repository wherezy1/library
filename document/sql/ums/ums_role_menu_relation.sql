-- 角色权限表
create table if not exists `ums_role_menu_relation`
(
`role_id` bigint not null comment '角色id',
`menu_id` bigint not null comment '权限id'
) comment '角色权限表';

insert into `ums_role_menu_relation` (`role_id`, `menu_id`) values (0, 0);
insert into `ums_role_menu_relation` (`role_id`, `menu_id`) values (10, 10);
insert into `ums_role_menu_relation` (`role_id`, `menu_id`) values (0, 0);
insert into `ums_role_menu_relation` (`role_id`, `menu_id`) values (10, 3);
insert into `ums_role_menu_relation` (`role_id`, `menu_id`) values (10, 5);
insert into `ums_role_menu_relation` (`role_id`, `menu_id`) values (6, 0);
insert into `ums_role_menu_relation` (`role_id`, `menu_id`) values (4, 10);
insert into `ums_role_menu_relation` (`role_id`, `menu_id`) values (6, 0);
insert into `ums_role_menu_relation` (`role_id`, `menu_id`) values (10, 0);
insert into `ums_role_menu_relation` (`role_id`, `menu_id`) values (9, 10);
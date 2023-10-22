-- 用户角色表
create table if not exists `ums_user_role_relation`
(
`user_id` bigint not null comment '用户id',
`role_id` bigint not null comment '角色id'
) comment '用户角色表';

insert into `ums_user_role_relation` (`user_id`, `role_id`) values (10, 10);
insert into `ums_user_role_relation` (`user_id`, `role_id`) values (2, 0);
insert into `ums_user_role_relation` (`user_id`, `role_id`) values (5, 4);
insert into `ums_user_role_relation` (`user_id`, `role_id`) values (0, 0);
insert into `ums_user_role_relation` (`user_id`, `role_id`) values (1, 7);
insert into `ums_user_role_relation` (`user_id`, `role_id`) values (0, 6);
insert into `ums_user_role_relation` (`user_id`, `role_id`) values (5, 0);
insert into `ums_user_role_relation` (`user_id`, `role_id`) values (0, 0);
insert into `ums_user_role_relation` (`user_id`, `role_id`) values (0, 0);
insert into `ums_user_role_relation` (`user_id`, `role_id`) values (0, 1);
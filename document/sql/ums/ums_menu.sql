-- 权限表
create table if not exists `ums_menu`
(
`id` bigint not null auto_increment comment '权限id' primary key,
`menu` varchar(32) not null comment '菜单名',
`permission` varchar(32) not null comment '权限'
) comment '权限表';

insert into `ums_menu` (`id`, `menu`, `permission`) values (1, '图书', 'sys:book:delete');
insert into `ums_menu` (`id`, `menu`, `permission`) values (2, '图书', 'sys:book:delete');
insert into `ums_menu` (`id`, `menu`, `permission`) values (3, '图书', 'sys:book:delete');
insert into `ums_menu` (`id`, `menu`, `permission`) values (4, '图书', 'sys:book:delete');
insert into `ums_menu` (`id`, `menu`, `permission`) values (5, '图书', 'sys:book:delete');
insert into `ums_menu` (`id`, `menu`, `permission`) values (6, '图书', 'sys:book:delete');
insert into `ums_menu` (`id`, `menu`, `permission`) values (7, '图书', 'sys:book:delete');
insert into `ums_menu` (`id`, `menu`, `permission`) values (8, '图书', 'sys:book:delete');
insert into `ums_menu` (`id`, `menu`, `permission`) values (9, '图书', 'sys:book:delete');
insert into `ums_menu` (`id`, `menu`, `permission`) values (10, '图书', 'sys:book:delete');
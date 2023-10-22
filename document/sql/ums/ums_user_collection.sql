-- 用户书籍收藏表
create table if not exists `ums_user_collection`
(
`user_id` bigint not null comment '用户id',
`book_id` bigint not null comment '书籍id'
) comment '用户书籍收藏表';


insert into `ums_user_collection` (`user_id`, `book_id`) values (9, 6);
insert into `ums_user_collection` (`user_id`, `book_id`) values (2, 20);
insert into `ums_user_collection` (`user_id`, `book_id`) values (3, 1);
insert into `ums_user_collection` (`user_id`, `book_id`) values (1, 4);
insert into `ums_user_collection` (`user_id`, `book_id`) values (0, 2);
insert into `ums_user_collection` (`user_id`, `book_id`) values (2, 0);
insert into `ums_user_collection` (`user_id`, `book_id`) values (4, 3);
insert into `ums_user_collection` (`user_id`, `book_id`) values (5, 2);
insert into `ums_user_collection` (`user_id`, `book_id`) values (4, 20);
insert into `ums_user_collection` (`user_id`, `book_id`) values (6, 20);
insert into `ums_user_collection` (`user_id`, `book_id`) values (0, 20);
insert into `ums_user_collection` (`user_id`, `book_id`) values (1, 3);
insert into `ums_user_collection` (`user_id`, `book_id`) values (8, 3);
insert into `ums_user_collection` (`user_id`, `book_id`) values (20, 8);
insert into `ums_user_collection` (`user_id`, `book_id`) values (4, 4);
insert into `ums_user_collection` (`user_id`, `book_id`) values (4, 1);
insert into `ums_user_collection` (`user_id`, `book_id`) values (1, 2);
insert into `ums_user_collection` (`user_id`, `book_id`) values (3, 20);
insert into `ums_user_collection` (`user_id`, `book_id`) values (20, 0);
insert into `ums_user_collection` (`user_id`, `book_id`) values (1, 2);
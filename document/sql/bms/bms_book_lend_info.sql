{"dbName":"","tableName":"bms_book_lend_info","tableComment":"借阅信息","mockNum":50,"fieldList":[{"fieldName":"id","comment":"","fieldType":"bigint","mockType":"递增","mockParams":1,"notNull":true,"primaryKey":true,"autoIncrement":false},{"fieldName":"book_id","comment":"","fieldType":"bigint","mockType":"规则","mockParams":"([1-2]|\\d|20)","notNull":true,"primaryKey":false,"autoIncrement":false},{"fieldName":"user_id","comment":"","fieldType":"bigint","mockType":"规则","mockParams":"([1-2]|\\d|20)","notNull":true,"primaryKey":false,"autoIncrement":false},{"fieldName":"lend_time","comment":"节约时间","fieldType":"varchar(32)","mockType":"随机","mockParams":"日期","notNull":true,"primaryKey":false,"autoIncrement":false},{"fieldName":"return_time","comment":"","fieldType":"varchar32)","mockType":"随机","mockParams":"日期","notNull":true,"primaryKey":false,"autoIncrement":false}]}




-- 借阅信息
create table if not exists `bms_book_lend_info`
(
`id` bigint not null primary key,
`book_id` bigint not null comment '借阅书籍',
`user_id` bigint not null comment '借阅人',
`lend_time` varchar(32) not null comment '借阅时间',
`return_time` varchar(32) not null comment '归还时间'
) comment '借阅信息';




insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (1, 8, 1, '2022-12-18 01:05:00', '2022-12-27 12:19:26');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (2, 2, 0, '2022-05-18 08:44:41', '2022-11-02 12:50:03');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (3, 6, 8, '2022-04-01 09:44:33', '2022-03-04 04:09:48');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (4, 20, 4, '2022-07-29 22:15:13', '2022-02-06 00:46:36');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (5, 20, 2, '2022-04-25 16:46:03', '2022-04-17 10:13:36');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (6, 9, 20, '2022-08-08 04:00:02', '2022-01-13 13:04:15');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (7, 1, 1, '2022-06-21 17:14:30', '2022-02-05 13:54:51');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (8, 20, 20, '2022-07-11 06:07:07', '2022-12-18 17:35:02');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (9, 0, 2, '2022-07-23 15:08:35', '2022-03-10 15:14:32');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (10, 20, 6, '2022-09-24 03:21:04', '2022-09-24 12:58:07');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (11, 7, 2, '2022-09-05 00:53:14', '2022-03-12 07:32:14');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (12, 7, 6, '2022-11-11 02:33:25', '2022-06-17 19:54:14');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (13, 20, 8, '2022-03-26 21:14:37', '2022-11-11 13:39:09');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (14, 2, 1, '2022-01-01 04:44:02', '2022-05-22 07:00:19');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (15, 5, 5, '2022-03-21 14:09:57', '2022-10-21 09:11:32');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (16, 1, 0, '2022-01-30 03:30:55', '2022-08-14 22:50:49');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (17, 2, 2, '2022-09-30 16:27:19', '2022-09-18 10:09:44');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (18, 2, 1, '2022-03-30 03:32:59', '2022-08-30 08:55:19');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (19, 9, 7, '2022-11-21 22:36:10', '2022-07-22 22:27:46');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (20, 3, 20, '2022-01-25 22:04:37', '2022-07-26 13:24:31');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (21, 2, 2, '2022-08-19 17:12:50', '2022-02-20 19:41:01');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (22, 1, 4, '2022-11-15 23:24:46', '2022-08-14 17:28:40');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (23, 20, 20, '2022-10-01 21:33:45', '2022-05-22 04:22:09');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (24, 6, 20, '2022-03-21 10:05:29', '2022-09-26 02:52:49');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (25, 2, 1, '2022-05-24 07:06:24', '2022-10-04 18:41:06');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (26, 1, 2, '2022-04-16 01:26:14', '2022-12-19 13:32:35');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (27, 8, 0, '2022-11-27 16:16:32', '2022-12-06 01:13:17');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (28, 6, 1, '2022-12-10 15:31:11', '2022-05-26 21:33:18');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (29, 6, 2, '2022-07-10 05:32:08', '2022-12-25 15:12:40');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (30, 20, 2, '2022-12-11 09:39:11', '2022-02-28 04:20:18');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (31, 0, 1, '2022-03-05 15:49:10', '2022-04-09 11:55:53');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (32, 0, 0, '2022-09-17 09:45:40', '2022-10-16 16:40:12');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (33, 20, 2, '2022-01-17 23:37:41', '2022-07-19 01:15:14');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (34, 8, 20, '2022-02-12 14:16:49', '2022-07-16 17:08:19');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (35, 1, 6, '2022-04-16 01:10:04', '2022-01-05 12:48:07');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (36, 20, 4, '2022-08-23 08:59:59', '2022-01-12 13:13:42');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (37, 20, 4, '2022-12-03 03:29:06', '2022-06-19 11:59:45');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (38, 0, 5, '2022-06-24 20:12:40', '2022-08-01 16:23:09');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (39, 1, 4, '2022-02-04 13:07:53', '2022-06-15 14:49:18');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (40, 2, 6, '2022-12-28 00:22:02', '2022-11-01 10:12:45');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (41, 2, 4, '2022-07-08 16:39:27', '2022-10-05 17:09:40');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (42, 6, 2, '2022-08-08 04:13:50', '2022-04-25 07:29:58');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (43, 7, 8, '2022-09-18 17:39:13', '2022-02-18 14:27:54');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (44, 4, 7, '2022-12-27 16:55:11', '2022-06-28 02:31:45');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (45, 6, 0, '2022-09-14 07:37:34', '2022-06-07 08:23:46');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (46, 20, 20, '2022-12-28 14:10:06', '2022-04-29 08:49:26');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (47, 20, 1, '2022-08-17 01:26:52', '2022-02-08 06:10:03');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (48, 20, 2, '2022-01-08 15:07:31', '2022-02-07 13:04:46');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (49, 20, 2, '2022-11-07 16:21:45', '2022-11-03 11:13:07');
insert into `bms_book_lend_info` (`id`, `book_id`, `user_id`, `lend_time`, `return_time`) values (50, 2, 6, '2022-06-21 04:48:16', '2022-07-30 13:35:28');

-- 图书标准spu表
create table if not exists homework.`bms_book_spu`
(
`id` bigint not null auto_increment comment '书籍编号' primary key,
`book_name` varchar(32) not null comment '书籍名',
`writer_id` bigint not null comment '作者id',
`publisher` varchar(64) not null comment '出版商',
`input_time` varchar(32) not null comment '购入时间',
`decribe` varchar(256) not null comment '书籍描述',
`image` varchar(32) not null comment '图片'
) comment '图书标准spu表';


insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (1, '精益求精', 1, '东南技术大学', '2022-09-04 01:59:58', '答案', '1');
insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (2, '理所当然', 1, '西北大学', '2022-09-04 03:01:12', '发如雪', '2');
insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (3, '名不虚传', 8, '南技术大学', '2022-11-18 02:43:54', '反方向的钟', '3');
insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (4, '名副其实', 11, '东艺术大学', '2022-06-23 17:29:07', '花海', '4');
insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (5, '人满为患', 1, '东南艺术大学', '2022-02-15 04:44:32', '盛夏', '5');
insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (6, '举足轻重', 6, '中国科技大学', '2022-05-11 00:26:56', '反方向的钟', '6');
insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (7, '刻不容缓', 10, '东北技术大学', '2022-09-10 22:39:18', '漠河舞厅', '7');
insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (8, '三位一体', 5, '北理工大学', '2022-12-05 19:34:36', '像我这样的人', '8');
insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (9, '议论纷纷', 22, '北理工大学', '2022-06-15 22:11:21', '晴天', '9');
insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (10, '随时随地', 16, '南技术大学', '2022-05-29 06:47:17', '本草纲目', '10');
insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (11, '实事求是', 3, '西南大学', '2022-02-24 19:16:30', '火红的萨日朗', '11');
insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (12, '持之以恒', 2, '东艺术大学', '2022-05-19 19:19:34', '本草纲目', '12');
insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (13, '明察暗访', 2, '西南理工大学', '2022-06-02 13:03:55', '模特', '13');
insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (14, '不可思议', 12, '东北技术大学', '2022-02-03 11:19:23', '坏女孩', '14');
insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (15, '各式各样', 5, '南艺术大学', '2022-09-30 19:33:44', '无问', '15');
insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (16, '沸沸扬扬', 13, '西南大学', '2022-03-17 04:14:30', '发如雪', '16');
insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (17, '大势所趋', 14, '南体育大学', '2022-11-13 18:09:56', '发如雪', '17');
insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (18, '厉行节约', 16, '北技术大学', '2022-12-27 22:51:58', '无问', '18');
insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (19, '在所难免', 17, '西技术大学', '2022-04-21 16:05:40', '本草纲目', '19');
insert into homework.`bms_book_spu` (`id`, `book_name`, `writer_id`, `publisher`, `input_time`, `decribe`, `image`) values (20, '燃眉之急', 18, '北科技大学', '2022-09-26 01:28:59', '无问', '20');


-- 书籍作者
create table if not exists `bms_book_writer`
(
`id` bigint not null comment '用户名',
`writer` varchar(256) not null comment '用户名'
) comment '书籍作者';

insert into `bms_book_writer` (`id`, `writer`) values (1, '赖梓晨');
insert into `bms_book_writer` (`id`, `writer`) values (2, '谢文轩');
insert into `bms_book_writer` (`id`, `writer`) values (3, '李泽洋');
insert into `bms_book_writer` (`id`, `writer`) values (4, '洪峻熙');
insert into `bms_book_writer` (`id`, `writer`) values (5, '高果');
insert into `bms_book_writer` (`id`, `writer`) values (6, '叶弘文');
insert into `bms_book_writer` (`id`, `writer`) values (7, '赵雪松');
insert into `bms_book_writer` (`id`, `writer`) values (8, '韩绍齐');
insert into `bms_book_writer` (`id`, `writer`) values (9, '夏苑博');
insert into `bms_book_writer` (`id`, `writer`) values (10, '梁明杰');
insert into `bms_book_writer` (`id`, `writer`) values (11, '贾旭尧');
insert into `bms_book_writer` (`id`, `writer`) values (12, '万越彬');
insert into `bms_book_writer` (`id`, `writer`) values (13, '范智渊');
insert into `bms_book_writer` (`id`, `writer`) values (14, '张炎彬');
insert into `bms_book_writer` (`id`, `writer`) values (15, '范烨霖');
insert into `bms_book_writer` (`id`, `writer`) values (16, '余鑫鹏');
insert into `bms_book_writer` (`id`, `writer`) values (17, '雷子轩');
insert into `bms_book_writer` (`id`, `writer`) values (18, '李立辉');
insert into `bms_book_writer` (`id`, `writer`) values (19, '覃博文');
insert into `bms_book_writer` (`id`, `writer`) values (20, '尹思');
	
-- 书籍分类
create table if not exists `bms_book_category`
(
`id` bigint not null primary key,
`category` varchar(32) not null
) comment '书籍分类';



insert into `bms_book_category` (`id`, `category`) values (1, '软件工程');
insert into `bms_book_category` (`id`, `category`) values (2, '计算机科学与技术');
insert into `bms_book_category` (`id`, `category`) values (3, '大数据科学与技术');
insert into `bms_book_category` (`id`, `category`) values (4, '计算机科学与技术');
insert into `bms_book_category` (`id`, `category`) values (5, '计算机科学与技术');
insert into `bms_book_category` (`id`, `category`) values (6, '计算机科学与技术');
insert into `bms_book_category` (`id`, `category`) values (7, '软件工程');
insert into `bms_book_category` (`id`, `category`) values (8, '软件工程');
insert into `bms_book_category` (`id`, `category`) values (9, '计算机科学与技术');
insert into `bms_book_category` (`id`, `category`) values (10, '大数据科学与技术');
insert into `bms_book_category` (`id`, `category`) values (11, '软件工程');
insert into `bms_book_category` (`id`, `category`) values (12, '软件工程');
insert into `bms_book_category` (`id`, `category`) values (13, '软件工程');
insert into `bms_book_category` (`id`, `category`) values (14, '软件工程');
insert into `bms_book_category` (`id`, `category`) values (15, '软件工程');
insert into `bms_book_category` (`id`, `category`) values (16, '大数据科学与技术');
insert into `bms_book_category` (`id`, `category`) values (17, '软件工程');
insert into `bms_book_category` (`id`, `category`) values (18, '大数据科学与技术');
insert into `bms_book_category` (`id`, `category`) values (19, '计算机科学与技术');
insert into `bms_book_category` (`id`, `category`) values (20, '软件工程');


-- 书籍分类关系表
create table if not exists `bms_book_category_relation`
(
`book_id` bigint not null,
`category_id` bigint not null
) comment '书籍分类关系表';


insert into `bms_book_category_relation` (`book_id`, `category_id`) values (1, 0);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (3, 0);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (7, 0);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (0, 8);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (4, 5);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (20, 0);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (0, 20);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (8, 5);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (1, 4);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (5, 20);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (4, 1);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (8, 1);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (0, 20);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (20, 20);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (20, 0);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (1, 6);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (1, 6);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (1, 0);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (1, 1);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (9, 20);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (3, 0);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (20, 2);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (20, 9);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (20, 1);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (3, 1);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (20, 1);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (2, 20);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (0, 2);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (7, 1);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (20, 4);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (3, 0);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (20, 1);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (20, 6);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (6, 0);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (2, 20);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (20, 20);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (1, 7);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (3, 0);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (5, 2);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (20, 1);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (3, 1);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (20, 2);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (2, 0);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (2, 2);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (8, 1);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (1, 1);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (6, 0);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (4, 9);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (2, 20);
insert into `bms_book_category_relation` (`book_id`, `category_id`) values (20, 0);


-- 借阅信息
create table if not exists `bms_book_lend_info`
(
`id` bigint not null primary key,
`book_id` bigint not null,
`user_id` bigint not null,
`lend_time` varchar(32) not null comment '节约时间',
`return_time` varchar32) not null
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


-- 借阅信息
create table if not exists `bms_user`
(
`id` bigint not null primary key,
`username` varchar(32) not null,
`password` bigint not null,
`major_id` bigint not null comment '节约时间',
`class` int not null,
`sex` varchar(4) not null,
`telephone` varchar(64) not null
) comment '借阅信息';



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



-- `bms_department`
create table if not exists `bms_department`
(
`id` bigint not null,
`department` varchar(32) not null
) comment '`bms_department`';


insert into `bms_department` (`id`, `department`) values (1, '北京邮电大学');
insert into `bms_department` (`id`, `department`) values (2, '山西医科大学');
insert into `bms_department` (`id`, `department`) values (3, '上海工程技术大学');
insert into `bms_department` (`id`, `department`) values (4, '海南医学院');
insert into `bms_department` (`id`, `department`) values (5, '山西师范大学');
insert into `bms_department` (`id`, `department`) values (6, '华中农业大学');
insert into `bms_department` (`id`, `department`) values (7, '吉首大学');
insert into `bms_department` (`id`, `department`) values (8, '广西工学院');
insert into `bms_department` (`id`, `department`) values (9, '中南民族大学');
insert into `bms_department` (`id`, `department`) values (10, '中南民族大学');
insert into `bms_department` (`id`, `department`) values (11, '江西财经大学');
insert into `bms_department` (`id`, `department`) values (12, '湖南科技大学');
insert into `bms_department` (`id`, `department`) values (13, '湘潭大学');
insert into `bms_department` (`id`, `department`) values (14, '重庆邮电学院');
insert into `bms_department` (`id`, `department`) values (15, '华中师范大学');
insert into `bms_department` (`id`, `department`) values (16, '集美大学');
insert into `bms_department` (`id`, `department`) values (17, '南昌大学');
insert into `bms_department` (`id`, `department`) values (18, '皖西学院');
insert into `bms_department` (`id`, `department`) values (19, '上海交通大学');
insert into `bms_department` (`id`, `department`) values (20, '中国科学技术大学');



-- `bms_department_major_relation`
create table if not exists `bms_department_major_relation`
(
`department_id` bigint not null,
`major_id` bigint not null
) comment '`bms_department_major_relation`';


insert into `bms_department_major_relation` (`department_id`, `major_id`) values (1, 20);
insert into `bms_department_major_relation` (`department_id`, `major_id`) values (2, 2);
insert into `bms_department_major_relation` (`department_id`, `major_id`) values (4, 5);
insert into `bms_department_major_relation` (`department_id`, `major_id`) values (4, 20);
insert into `bms_department_major_relation` (`department_id`, `major_id`) values (1, 4);
insert into `bms_department_major_relation` (`department_id`, `major_id`) values (7, 20);
insert into `bms_department_major_relation` (`department_id`, `major_id`) values (1, 8);
insert into `bms_department_major_relation` (`department_id`, `major_id`) values (20, 6);
insert into `bms_department_major_relation` (`department_id`, `major_id`) values (1, 8);
insert into `bms_department_major_relation` (`department_id`, `major_id`) values (0, 20);
insert into `bms_department_major_relation` (`department_id`, `major_id`) values (7, 20);
insert into `bms_department_major_relation` (`department_id`, `major_id`) values (6, 0);
insert into `bms_department_major_relation` (`department_id`, `major_id`) values (9, 4);
insert into `bms_department_major_relation` (`department_id`, `major_id`) values (1, 4);
insert into `bms_department_major_relation` (`department_id`, `major_id`) values (20, 0);
insert into `bms_department_major_relation` (`department_id`, `major_id`) values (1, 20);
insert into `bms_department_major_relation` (`department_id`, `major_id`) values (9, 5);
insert into `bms_department_major_relation` (`department_id`, `major_id`) values (7, 20);
insert into `bms_department_major_relation` (`department_id`, `major_id`) values (2, 1);
insert into `bms_department_major_relation` (`department_id`, `major_id`) values (9, 5);


-- `bms_major`
create table if not exists `bms_major`
(
`id` bigint not null primary key,
`major` varchar(32) not null
) comment '`bms_major`';


insert into `bms_major` (`id`, `major`) values (1, '计算机科学与技术');
insert into `bms_major` (`id`, `major`) values (2, '计算机科学与技术');
insert into `bms_major` (`id`, `major`) values (3, '计算机科学与技术');
insert into `bms_major` (`id`, `major`) values (4, '大数据科学与技术');
insert into `bms_major` (`id`, `major`) values (5, '大数据科学与技术');
insert into `bms_major` (`id`, `major`) values (6, '大数据科学与技术');
insert into `bms_major` (`id`, `major`) values (7, '大数据科学与技术');
insert into `bms_major` (`id`, `major`) values (8, '软件工程');
insert into `bms_major` (`id`, `major`) values (9, '大数据科学与技术');
insert into `bms_major` (`id`, `major`) values (10, '大数据科学与技术');
insert into `bms_major` (`id`, `major`) values (11, '软件工程');
insert into `bms_major` (`id`, `major`) values (12, '大数据科学与技术');
insert into `bms_major` (`id`, `major`) values (13, '软件工程');
insert into `bms_major` (`id`, `major`) values (14, '大数据科学与技术');
insert into `bms_major` (`id`, `major`) values (15, '计算机科学与技术');
insert into `bms_major` (`id`, `major`) values (16, '大数据科学与技术');
insert into `bms_major` (`id`, `major`) values (17, '计算机科学与技术');
insert into `bms_major` (`id`, `major`) values (18, '大数据科学与技术');
insert into `bms_major` (`id`, `major`) values (19, '大数据科学与技术');
insert into `bms_major` (`id`, `major`) values (20, '大数据科学与技术');


{"dbName":"homework","tableName":"bms_book_spu","tableComment":"图书标准spu表","mockNum":20,"fieldList":[{"fieldName":"id","comment":"书籍编号","fieldType":"bigint","mockType":"递增","mockParams":1,"notNull":true,"primaryKey":true,"autoIncrement":true},{"fieldName":"book_name","comment":"书籍名","fieldType":"varchar(32)","mockType":"词库","mockParams":37,"notNull":true,"primaryKey":false,"autoIncrement":false},{"fieldName":"writer_id","comment":"作者id","fieldType":"bigint","mockType":"规则","mockParams":"([1-9]|[1-9]\\d|100)","notNull":true,"primaryKey":false,"autoIncrement":false},{"fieldName":"publisher","comment":"出版商","fieldType":"varchar(64)","mockType":"随机","mockParams":"大学","notNull":true,"primaryKey":false,"autoIncrement":false},{"fieldName":"input_time","comment":"购入时间","fieldType":"varchar(32)","mockType":"随机","mockParams":"日期","notNull":true,"primaryKey":false,"autoIncrement":false},{"fieldName":"decribe","comment":"书籍描述","fieldType":"varchar(256)","mockType":"词库","mockParams":13,"notNull":true,"primaryKey":false,"autoIncrement":false},{"fieldName":"image","comment":"图片","fieldType":"varchar(32)","mockType":"递增","mockParams":1,"notNull":true,"primaryKey":false,"autoIncrement":false}]}


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
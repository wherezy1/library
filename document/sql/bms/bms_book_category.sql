
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
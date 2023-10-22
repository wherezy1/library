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
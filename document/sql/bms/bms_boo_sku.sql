-- 书籍sku库存信息
create table if not exists homework.`bms_book_sku`
(
`id` bigint not null comment '库存id' primary key,
`book_id` bigint not null comment '书籍id',
`stock` bigint not null comment '库存'
) comment '书籍sku库存信息';


insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (1, 1, 64);
insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (2, 2, 19);
insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (3, 3, 74);
insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (4, 4, 2);
insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (5, 5, 60);
insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (6, 6, 81);
insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (7, 7, 86);
insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (8, 8, 10);
insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (9, 9, 10);
insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (10, 10, 1);
insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (11, 11, 19);
insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (12, 12, 1);
insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (13, 13, 6);
insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (14, 14, 55);
insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (15, 15, 19);
insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (16, 16, 75);
insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (17, 17, 10);
insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (18, 18, 81);
insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (19, 19, 34);
insert into homework.`bms_book_sku` (`id`, `book_id`, `stock`) values (20, 20, 1);
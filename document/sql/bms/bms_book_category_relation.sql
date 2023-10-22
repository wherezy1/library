
{"dbName":"","tableName":"bms_book_category_relation","tableComment":"书籍分类关系表","mockNum":50,"fieldList":[{"fieldName":"book_id","comment":"","fieldType":"bigint","mockType":"规则","mockParams":"([1-2]|\\d|20)","notNull":true,"primaryKey":false,"autoIncrement":false},{"fieldName":"category_id","comment":"","fieldType":"bigint","mockType":"规则","mockParams":"([1-2]|\\d|20)","notNull":true,"primaryKey":false,"autoIncrement":false}]}


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
-- `bms_department`
create table if not exists `bms_department`
(
`id` bigint not null primary key comment '院系id',
`department` varchar(32) not null comment '院系'
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
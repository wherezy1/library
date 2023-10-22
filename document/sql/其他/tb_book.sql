
{"dbName":"homework","tableName":"tb_book","tableComment":"书籍信息","mockNum":null,"fieldList":[{"fieldName":"id","fieldType":"bigint","defaultValue":null,"notNull":true,"comment":"书籍编号","primaryKey":true,"autoIncrement":false,"mockType":"递增","mockParams":1,"onUpdate":null},{"fieldName":"book_name","fieldType":"varchar(64)","defaultValue":null,"notNull":true,"comment":"书籍名称","primaryKey":false,"autoIncrement":false,"mockType":"词库","mockParams":11,"onUpdate":null},{"fieldName":"writer","fieldType":"varchar(32)","defaultValue":null,"notNull":true,"comment":"作者","primaryKey":false,"autoIncrement":false,"mockType":"随机","mockParams":"人名","onUpdate":null},{"fieldName":"publisher","fieldType":"varchar(128)","defaultValue":null,"notNull":true,"comment":"出版商","primaryKey":false,"autoIncrement":false,"mockType":"词库","mockParams":36,"onUpdate":null},{"fieldName":"buy_date","fieldType":"varchar(64)","defaultValue":null,"notNull":true,"comment":"购买日期","primaryKey":false,"autoIncrement":false,"mockType":"随机","mockParams":"日期","onUpdate":null},{"fieldName":"lended_number","fieldType":"bigint","defaultValue":null,"notNull":false,"comment":"借阅次数","primaryKey":false,"autoIncrement":false,"mockType":"规则","mockParams":"([1-9]|[1-9)\\d|100)","onUpdate":null},{"fieldName":"has_lend","fieldType":"int","defaultValue":null,"notNull":true,"comment":"是否借出","primaryKey":false,"autoIncrement":false,"mockType":"词库","mockParams":59,"onUpdate":null},{"fieldName":"describe","fieldType":"verchar(256)","defaultValue":null,"notNull":false,"comment":"书籍描述信息","primaryKey":false,"autoIncrement":false,"mockType":"词库","mockParams":37,"onUpdate":null}]}



-- 书籍信息
create table if not exists homework.`tb_book`
(
`id` bigint not null comment '书籍编号' primary key,
`book_name` varchar(64) not null comment '书籍名称',
`writer` varchar(32) not null comment '作者',
`publisher` varchar(128) not null comment '出版商',
`buy_date` varchar(64) not null comment '购买日期',
`lended_number` bigint null comment '借阅次数',
`has_lend` int not null comment '是否借出',
`describe` text null comment '书籍描述信息'
) comment '书籍信息';


insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (1, '大雪', '程烨霖', '厦门大学', '2022-07-16 05:43:49', 29, 1, '脱颖而出');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (2, '小满', '毛智辉', '厦门大学', '2022-02-08 20:47:39', 1, 0, '风口浪尖');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (3, '雨水', '孙越彬', '武汉工业学院', '2022-10-06 21:05:21', 9, 1, '排忧解难');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (4, '惊蛰', '戴琪', '南昌大学', '2022-04-13 07:44:45', 1, 0, '前所未有');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (5, '惊蛰', '贾昊强', '山西中医学院', '2022-08-18 12:30:11', 100, 1, '供不应求');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (6, '冬至', '萧鸿涛', '上海外国语大学', '2022-08-21 20:23:42', 1, 1, '奋发有为');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (7, '秋分', '曾天翊', '上海交通大学', '2022-10-20 16:43:59', 19, 1, '实事求是');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (8, '雨水', '袁鸿煊', '中国协和医科大学', '2022-10-15 16:49:08', 1, 1, '图文并茂');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (9, '白露', '陆胤祥', '中国矿业大学', '2022-04-04 19:48:14', 1, 1, '立竿见影');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (10, '立冬', '黄煜祺', '上海师范大学', '2022-06-10 22:19:28', 24, 0, '千家万户');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (11, '大暑', '傅明哲', '沈阳大学', '2022-11-27 15:12:20', 1, 1, '淋漓尽致');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (12, '白露', '李博文', '右江民族医学院', '2022-12-24 08:50:48', 77, 1, '所作所为');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (13, '白露', '卢鸿涛', '长沙理工大学', '2022-04-07 14:49:37', 15, 0, '刻不容缓');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (14, '惊蛰', '戴雨泽', '北京交通大学', '2022-07-31 12:23:05', 19, 1, '相辅相成');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (15, '惊蛰', '孟天宇', '东华大学', '2022-01-06 03:36:58', 77, 0, '比比皆是');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (16, '小寒', '赵炫明', '上海应用技术学院', '2022-04-17 05:06:45', 1, 0, '无家可归');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (17, '立春', '曹越彬', '南昌工程学院', '2022-01-02 03:39:17', 61, 1, '明察暗访');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (18, '夏至', '尹昊强', '江西师范大学', '2022-10-09 08:56:54', 21, 1, '由来已久');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (19, '大寒', '顾建辉', '对外经济贸易大学', '2022-07-19 08:27:59', 1, 0, '由来已久');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (20, '春分', '万博文', '内蒙古财经学院', '2022-10-04 15:41:24', 31, 0, '马不停蹄');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (21, '大暑', '贾昊焱', '湖北美术学院', '2022-08-07 21:38:13', 15, 0, '显而易见');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (22, '清明', '李明辉', '青岛港湾职业技术学院', '2022-01-18 04:18:35', 1, 0, '行之有效');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (23, '夏至', '李健雄', '湘潭大学', '2022-01-25 10:50:07', 41, 0, '不绝于耳');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (24, '处暑', '马子骞', '南京理工大学', '2022-06-26 18:34:31', 19, 0, '铺天盖地');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (25, '春分', '洪思源', '石家庄铁道学院', '2022-01-12 13:09:02', 5, 1, '精心设计');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (26, '惊蛰', '万明', '天津科技大学', '2022-10-06 15:46:13', 49, 0, '再接再厉');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (27, '立春', '韦浩然', '山东师范大学', '2022-11-12 16:30:45', 16, 0, '再接再厉');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (28, '谷雨', '李熠彤', '安徽师范大学', '2022-03-28 15:42:21', 11, 0, '源远流长');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (29, '立春', '林天宇', '内蒙古科技大学', '2022-11-26 09:31:47', 49, 0, '明察暗访');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (30, '寒露', '邹鹭洋', '内蒙古医学院', '2022-05-18 10:25:21', 1, 1, '不言而喻');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (31, '惊蛰', '戴琪', '南开大学', '2022-04-05 21:12:35', 60, 1, '各式各样');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (32, '小雪', '苏瑾瑜', '广西师范大学', '2022-06-28 13:45:56', 1, 1, '络绎不绝');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (33, '清明', '许建辉', '山西农业大学', '2022-07-06 21:42:44', 40, 1, '不可思议');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (34, '夏至', '黄鹏', '安徽工业大学', '2022-02-09 04:33:43', 68, 1, '五花八门');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (35, '清明', '何明轩', '沈阳农业大学', '2022-01-02 11:24:09', 1, 0, '紧锣密鼓');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (36, '小满', '顾伟泽', '中国海洋大学', '2022-05-29 11:22:32', 1, 1, '迫在眉睫');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (37, '秋分', '黎思源', '华北电力大学', '2022-01-22 19:24:37', 10, 0, '万无一失');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (38, '立秋', '陈天磊', '内蒙古师范大学', '2022-05-15 00:47:32', 14, 0, '铺张浪费');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (39, '秋分', '夏嘉懿', '上海大学', '2022-10-12 02:34:06', 38, 1, '铺张浪费');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (40, '大雪', '周熠彤', '桂林电子工业学院', '2022-08-25 22:35:17', 91, 1, '坚定不移');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (41, '霜降', '孙远航', '东华理工学院', '2022-10-13 10:42:48', 32, 0, '源远流长');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (42, '秋分', '赖金鑫', '华中师范大学', '2022-06-01 08:33:18', 25, 1, '独一无二');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (43, '霜降', '徐荣轩', '浙江理工大学', '2022-03-25 16:13:03', 11, 0, '一见钟情');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (44, '霜降', '白致远', '沈阳大学', '2022-04-02 00:04:06', 50, 1, '潜移默化');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (45, '大暑', '汪子骞', '沈阳大学', '2022-06-17 01:44:39', 1, 0, '雪上加霜');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (46, '立冬', '钟鸿涛', '山西财经大学', '2022-11-19 13:12:33', 17, 1, '一视同仁');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (47, '处暑', '萧天磊', '安徽师范大学', '2022-03-26 00:14:29', 1, 0, '日新月异');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (48, '雨水', '贺远航', '中国医科大学', '2022-03-22 03:36:35', 100, 0, '风口浪尖');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (49, '小暑', '万烨伟', '湖北美术学院', '2022-10-13 20:03:06', 1, 1, '讨价还价');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (50, '白露', '唐昊强', '河北工程学院', '2022-02-19 11:52:13', 39, 1, '有所作为');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (51, '芒种', '李晓博', '河北大学', '2022-11-29 17:46:27', 10, 1, '余波未平');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (52, '惊蛰', '邵建辉', '河南师范大学', '2022-01-24 00:17:44', 29, 1, '对症下药');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (53, '夏至', '陆果', '武汉音乐学院', '2022-10-13 11:04:14', 51, 0, '马不停蹄');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (54, '冬至', '苏金鑫', '安徽农业大学', '2022-09-26 22:04:05', 8, 0, '大势所趋');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (55, '霜降', '黄伟诚', '山东中医药大学', '2022-02-18 05:38:32', 59, 0, '脱颖而出');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (56, '立冬', '韦雨泽', '北京中医药大学', '2022-08-07 19:20:45', 9, 0, '万无一失');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (57, '立冬', '冯越泽', '北京邮电大学', '2022-01-15 02:20:46', 3, 0, '数以万计');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (58, '春分', '金擎苍', '湖南科技大学', '2022-02-07 05:56:06', 46, 0, '后顾之忧');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (59, '清明', '莫峻熙', '华东政法学院', '2022-01-09 22:59:24', 12, 1, '名不虚传');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (60, '小寒', '钟聪健', '广东工业大学', '2022-05-08 02:37:01', 100, 1, '长治久安');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (61, '寒露', '赖晓博', '郑州航空工业管理学院', '2022-11-04 06:29:55', 5, 0, '五花八门');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (62, '雨水', '邓睿渊', '安徽师范大学', '2022-03-27 20:27:15', 1, 1, '全力以赴');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (63, '立冬', '韦伟祺', '辽宁工程技术大学', '2022-09-06 15:03:39', 1, 0, '不可忽视');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (64, '处暑', '龚君浩', '湖南农业大学', '2022-10-04 22:57:54', 16, 1, '不得而知');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (65, '大雪', '罗明哲', '沈阳大学', '2022-07-28 17:44:37', 92, 1, '错综复杂');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (66, '小暑', '邹烨霖', '海南大学', '2022-02-03 03:22:01', 14, 0, '厉行节约');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (67, '雨水', '梁子默', '广州中医药大学', '2022-07-19 04:45:31', 11, 0, '博大精深');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (68, '寒露', '丁鹏', '燕山大学', '2022-03-13 23:11:04', 62, 0, '有条不紊');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (69, '立冬', '余思聪', '安徽理工大学', '2022-01-18 03:13:28', 46, 1, '势在必行');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (70, '秋分', '覃立轩', '广西大学', '2022-11-27 16:57:31', 8, 0, '安居乐业');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (71, '清明', '姜志泽', '河南工业大学', '2022-06-25 12:01:06', 100, 1, '耳目一新');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (72, '谷雨', '龙胤祥', '湖南农业大学', '2022-09-28 06:56:59', 36, 1, '心有余悸');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (73, '寒露', '傅鑫磊', '内蒙古农业大学', '2022-01-12 00:02:28', 1, 1, '自强不息');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (74, '处暑', '钟立轩', '湖北师范学院', '2022-04-28 08:41:57', 1, 1, '心有余悸');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (75, '秋分', '邵晓博', '华中科技大学', '2022-01-06 00:19:26', 1, 1, '见义勇为');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (76, '雨水', '朱文', '西南师范大学', '2022-01-07 00:43:46', 1, 1, '所作所为');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (77, '春分', '陶鹏煊', '福建工程学院', '2022-09-25 12:39:53', 100, 0, '图文并茂');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (78, '立夏', '武聪健', '江汉大学', '2022-06-24 22:01:03', 25, 1, '千家万户');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (79, '霜降', '林志泽', '福建医科大学', '2022-08-20 18:44:04', 4, 0, '家喻户晓');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (80, '小暑', '杜晋鹏', '山东中医药大学', '2022-06-22 20:45:25', 1, 1, '无独有偶');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (81, '处暑', '曹雨泽', '杭州电子科技大学', '2022-01-31 12:07:19', 8, 1, '独一无二');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (82, '谷雨', '贾明', '广西大学', '2022-03-19 13:16:38', 90, 1, '琳琅满目');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (83, '冬至', '郑嘉懿', '福建工程学院', '2022-08-19 13:14:37', 1, 1, '出人意料');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (84, '秋分', '周雨泽', '河南科技大学', '2022-05-14 15:14:52', 31, 0, '不了了之');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (85, '小满', '谢峻熙', '天津医科大学', '2022-06-17 05:13:53', 13, 1, '举世瞩目');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (86, '大暑', '谢晓博', '海南医学院', '2022-03-12 02:46:28', 81, 1, '可乘之机');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (87, '大寒', '赵明杰', '上海对外贸易学院', '2022-05-05 20:20:54', 72, 1, '脱颖而出');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (88, '大寒', '史天翊', '中山大学', '2022-09-18 19:06:03', 100, 1, '深入人心');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (89, '立夏', '郑志泽', '暨南大学', '2022-11-21 15:18:43', 1, 1, '明察暗访');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (90, '白露', '宋懿轩', '天津理工大学', '2022-08-16 15:19:52', 1, 0, '不约而同');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (91, '芒种', '谢楷瑞', '中山大学', '2022-06-23 06:59:34', 1, 1, '见义勇为');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (92, '小寒', '贺梓晨', '南昌大学', '2022-01-23 04:01:11', 79, 0, '一模一样');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (93, '谷雨', '于航', '南华大学', '2022-07-16 21:43:10', 70, 0, '理所当然');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (94, '夏至', '邵懿轩', '桂林医学院', '2022-06-22 10:53:25', 100, 1, '归根结底');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (95, '白露', '田懿轩', '武汉科技大学', '2022-10-09 00:02:02', 1, 0, '先发制人');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (96, '小寒', '周煜城', '福州大学', '2022-07-23 02:19:15', 78, 0, '沸沸扬扬');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (97, '立春', '钱伟诚', '中国计量学院', '2022-09-13 05:18:52', 25, 1, '根深蒂固');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (98, '大寒', '周胤祥', '吉首大学', '2022-05-24 14:40:42', 33, 1, '行之有效');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (99, '春分', '邵笑愚', '内蒙古农业大学', '2022-04-20 09:23:18', 72, 0, '先发制人');
insert into homework.`tb_book` (`id`, `book_name`, `writer`, `publisher`, `buy_date`, `lended_number`, `has_lend`, `describe`) values (100, '立冬', '彭立果', '上海音乐学院', '2022-04-10 18:54:29', 19, 0, '翻天覆地');
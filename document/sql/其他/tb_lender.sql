{"dbName":"homework","tableName":"tb_lender","tableComment":"借阅人","mockNum":null,"fieldList":[{"fieldName":"id","fieldType":"bigint","defaultValue":null,"notNull":true,"comment":"用户id","primaryKey":true,"autoIncrement":true,"mockType":"递增","mockParams":1,"onUpdate":null},{"fieldName":"username","fieldType":"varchar(32)","defaultValue":null,"notNull":true,"comment":"用户名","primaryKey":false,"autoIncrement":false,"mockType":"随机","mockParams":"人名","onUpdate":null},{"fieldName":"sex","fieldType":"varchar(32)","defaultValue":null,"notNull":true,"comment":"性别","primaryKey":false,"autoIncrement":false,"mockType":"词库","mockParams":41,"onUpdate":null},{"fieldName":"depno","fieldType":"bigint","defaultValue":null,"notNull":true,"comment":"科别代号","primaryKey":false,"autoIncrement":false,"mockType":"固定","mockParams":"","onUpdate":null},{"fieldName":"depname","fieldType":"varchar(32)","defaultValue":null,"notNull":true,"comment":"科别名","primaryKey":false,"autoIncrement":false,"mockType":"词库","mockParams":55,"onUpdate":null},{"fieldName":"grade","fieldType":"varchar(32)","defaultValue":null,"notNull":true,"comment":"年级","primaryKey":false,"autoIncrement":false,"mockType":"固定","mockParams":"20级","onUpdate":null},{"fieldName":"class","fieldType":"varchar(64)","defaultValue":null,"notNull":true,"comment":"班级","primaryKey":false,"autoIncrement":false,"mockType":"固定","mockParams":"软件工程01班","onUpdate":null},{"fieldName":"telephone","fieldType":"varchar(32)","defaultValue":null,"notNull":false,"comment":"电话号码","primaryKey":false,"autoIncrement":false,"mockType":"不模拟","mockParams":null,"onUpdate":null},{"fieldName":"address","fieldType":"varchar(64)","defaultValue":null,"notNull":false,"comment":"地址","primaryKey":false,"autoIncrement":false,"mockType":"不模拟","mockParams":null,"onUpdate":null}]}
-- 借阅人
create table if not exists homework.`tb_lender`
(
`id` bigint not null auto_increment comment '用户id' primary key,
`username` varchar(32) not null comment '用户名',
`sex` varchar(32) not null comment '性别',
`depno` bigint not null comment '科别代号',
`depname` varchar(32) not null comment '科别名',
`grade` varchar(32) not null comment '年级',
`class` varchar(64) not null comment '班级',
`telephone` varchar(32) null comment '电话号码',
`address` varchar(64) null comment '地址'
) comment '借阅人';

insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (1, '吴耀杰', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '18394445097', '海口');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (2, '段伟宸', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15053782693', '阳泉');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (3, '任雨泽', '女', 6, '软件工程', '20级', '软件工程01班', '15533576414', '合肥');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (4, '杜鹏飞', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '15371591105', '鄂尔多斯');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (5, '苏钰轩', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '17707216456', '丽水');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (6, '魏炫明', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '17191324307', '胶州');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (7, '陶思淼', '女', 6, '软件工程', '20级', '软件工程01班', '15780443203', '桂林');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (8, '侯智宸', '女', 6, '软件工程', '20级', '软件工程01班', '17635269471', '三门峡');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (9, '江航', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15246570166', '蓬莱');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (10, '武浩', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '17195632485', '海口');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (11, '曾浩宇', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '15325378991', '深圳');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (12, '阎建辉', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '17593852230', '安阳');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (13, '曾思淼', '男', 6, '软件工程', '20级', '软件工程01班', '17020234833', '锦州');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (14, '魏晋鹏', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '15817755988', '阳江');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (15, '赖鸿煊', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '13546444286', '莱芜');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (16, '石擎苍', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '17638868786', '昆山');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (17, '龚聪健', '女', 6, '软件工程', '20级', '软件工程01班', '17087469590', '徐州');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (18, '万晓博', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '14714467853', '包头');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (19, '韦鑫磊', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15070921307', '天津');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (20, '高远航', '男', 6, '软件工程', '20级', '软件工程01班', '14796250847', '德阳');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (21, '罗思', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15111499735', '临汾');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (22, '夏鑫鹏', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '17769834712', '泉州');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (23, '邹远航', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '17741087872', '齐齐哈尔');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (24, '袁绍齐', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '17088993957', '深圳');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (25, '钟建辉', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '17583809207', '江阴');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (26, '江志泽', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '17010772599', '梅州');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (27, '罗雨泽', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '17606648472', '金华');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (28, '江峻熙', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '17861702624', '广州');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (29, '万天宇', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '17569962429', '三亚');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (30, '邹立果', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '15820151893', '日照');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (31, '孙烨伟', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15738989144', '乌鲁木齐');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (32, '许风华', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15571058754', '咸阳');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (33, '段鹏', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15637280677', '保定');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (34, '雷鹭洋', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15395638985', '丽水');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (35, '许楷瑞', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15738961160', '泰安');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (36, '周峻熙', '男', 6, '软件工程', '20级', '软件工程01班', '15574478114', '衡水');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (37, '朱鸿煊', '男', 6, '软件工程', '20级', '软件工程01班', '17644160179', '保定');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (38, '邵鹏煊', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15099114622', '石家庄');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (39, '孔立轩', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '15988990218', '包头');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (40, '侯弘文', '女', 6, '软件工程', '20级', '软件工程01班', '15275604866', '南京');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (41, '侯立果', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15690130234', '丽水');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (42, '胡鸿煊', '女', 6, '软件工程', '20级', '软件工程01班', '17129827863', '锦州');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (43, '马立诚', '女', 6, '软件工程', '20级', '软件工程01班', '15160262330', '福州');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (44, '张思淼', '女', 6, '软件工程', '20级', '软件工程01班', '15225318764', '日照');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (45, '邵远航', '女', 6, '软件工程', '20级', '软件工程01班', '13767981731', '柳州');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (46, '曹浩然', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15747864478', '包头');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (47, '曾鹏', '女', 6, '软件工程', '20级', '软件工程01班', '17018517196', '齐齐哈尔');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (48, '任鹏', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '17705737024', '惠州');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (49, '傅靖琪', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '17047234255', '昆山');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (50, '谭子轩', '男', 6, '软件工程', '20级', '软件工程01班', '17151268371', '延安');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (51, '吴昊强', '男', 6, '软件工程', '20级', '软件工程01班', '15658271966', '东营');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (52, '杨雨泽', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '17658098739', '招远');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (53, '蒋振家', '男', 6, '软件工程', '20级', '软件工程01班', '15206239465', '沈阳');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (54, '蒋哲瀚', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15626788597', '淮安');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (55, '傅文博', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15597280101', '海口');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (56, '魏哲瀚', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '17883159654', '安阳');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (57, '谭熠彤', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '15705474376', '攀枝花');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (58, '江明哲', '女', 6, '软件工程', '20级', '软件工程01班', '17873842572', '邢台');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (59, '龙鹤轩', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15053602717', '宝鸡');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (60, '汪立辉', '女', 6, '软件工程', '20级', '软件工程01班', '15805369852', '海门');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (61, '卢炎彬', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15751631270', '大同');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (62, '李浩然', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '15907642857', '大庆');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (63, '黎擎宇', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '14550987336', '荣成');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (64, '洪立辉', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '17834736624', '文登');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (65, '江昊焱', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15658083537', '宜兴');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (66, '袁越彬', '男', 6, '软件工程', '20级', '软件工程01班', '15672568457', '延安');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (67, '何鸿煊', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '17752269714', '北京');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (68, '江凯瑞', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '14560293777', '肇庆');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (69, '石苑博', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '14579312405', '三门峡');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (70, '秦梓晨', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15772541919', '沈阳');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (71, '覃烨霖', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '17114487039', '西安');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (72, '潘伟诚', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15283232576', '三门峡');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (73, '夏钰轩', '女', 6, '软件工程', '20级', '软件工程01班', '13647083771', '淄博');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (74, '夏聪健', '女', 6, '软件工程', '20级', '软件工程01班', '15539605359', '桂林');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (75, '赖擎苍', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '17101606041', '韶关');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (76, '龙建辉', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '17299412384', '南充');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (77, '陈哲瀚', '女', 6, '软件工程', '20级', '软件工程01班', '17887269827', '张家界');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (78, '梁正豪', '男', 6, '软件工程', '20级', '软件工程01班', '15380213837', '张家口');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (79, '黎乐驹', '女', 6, '软件工程', '20级', '软件工程01班', '13337612149', '铜川');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (80, '傅烨磊', '男', 6, '软件工程', '20级', '软件工程01班', '17110352434', '临汾');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (81, '钟荣轩', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '17379176697', '胶南');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (82, '刘鑫磊', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '17724119023', '衡水');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (83, '韩立果', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '15094509498', '常州');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (84, '谭鹏涛', '女', 6, '软件工程', '20级', '软件工程01班', '15746239759', '邯郸');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (85, '陶航', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '15846230686', '克拉玛依');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (86, '余伟祺', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15193868079', '江门');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (87, '陶正豪', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15351403656', '句容');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (88, '钟锦程', '女', 6, '软件工程', '20级', '软件工程01班', '17134175837', '重庆');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (89, '金烨霖', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '17594166896', '天津');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (90, '高浩宇', '男', 6, '软件工程', '20级', '软件工程01班', '13158172859', '金华');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (91, '钟泽洋', '男', 6, '软件工程', '20级', '软件工程01班', '18277854455', '郑州');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (92, '汪绍齐', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15907221842', '沈阳');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (93, '丁明辉', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15874707483', '张家港');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (94, '胡鑫鹏', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '17373465053', '揭阳');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (95, '陆耀杰', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '15702856309', '淄博');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (96, '武凯瑞', '女', 6, '软件工程', '20级', '软件工程01班', '17255017140', '兰州');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (97, '段思源', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '14548620367', '揭阳');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (98, '傅健雄', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '17836046765', '即墨');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (99, '赖博超', '女', 6, '软件工程', '20级', '软件工程01班', '17843704092', '潍坊');
insert into homework.`tb_lender` (`id`, `username`, `sex`, `depno`, `depname`, `grade`, `class`, `telephone`, `address`) values (100, '刘明辉', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '17756418615', '沈阳');
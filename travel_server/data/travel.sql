-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
<<<<<<< HEAD
-- Generation Time: 2019-11-27 09:26:04
=======
-- Generation Time: 2019-11-23 07:50:25
>>>>>>> 89b6eb8660b49ad1cfd6d04d194971f1956c0f67
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--
CREATE DATABASE IF NOT EXISTS `travel` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `travel`;

-- --------------------------------------------------------

--
-- 表的结构 `travel_camp`
--
-- 创建时间： 2019-11-26 00:34:48
--

DROP TABLE IF EXISTS `travel_camp`;
CREATE TABLE IF NOT EXISTS `travel_camp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `label1` varchar(64) NOT NULL,
  `label2` varchar(64) NOT NULL,
  `site` varchar(20) NOT NULL,
  `address` varchar(128) DEFAULT NULL,
  `intro` text,
  `phone` varchar(20) DEFAULT NULL,
  `share_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `travel_camp`:
--   `type`
--       `travel_class` -> `id`
--

--
-- 转存表中的数据 `travel_camp`
--

INSERT INTO `travel_camp` (`id`, `pic`, `title`, `subtitle`, `type`, `label1`, `label2`, `site`, `address`, `intro`, `phone`, `share_time`) VALUES
(1, './static/imgs/1d39d3efc99d4800b99c81d4525c41e1.jpeg', '上海邻家露营地', '野奢度假酒店·网红打卡地', 1, '位于上海国际旅游度假区核心区', '上海迪士尼乐园步行仅约7分钟', '上海', '上海市浦东新区申迪东路399弄188号申迪生态园内 ', '上海邻家露营地位于新落成的上海国际旅游度假区核心区内，距上海迪士尼乐园步行仅约7分钟，占地面积约10000平米,由进口房车、C-BOX型客房、亲子广场、咖啡厅、农家餐厅及活动室等共同构成。邻家露营地并借助自然水系、草地、天然密林等自身地理优势，与上海国际旅游度假区迪士尼乐园、申迪生态园等各项游乐设施建立了一体化服务链，使客人在享受房车露营的惊喜体验的同时,能够在生态游园、水上运动、垂钓、亲子拓展、烧烤等其他户外娱乐项目中得到更多的快乐。上海邻家露营地旨在为各层次游客打造集房车休闲、帐篷露营、Cr-BOX居住体验、亲子、美食、休闲、户外等多功能的生态旅游度假目的地。', '021-31839277', '2019-11-26 00:56:08'),
(2, './static/imgs/4af8c33e5e544a9ca0dfd3fc9b5f8373.jpg', '途居黄山露营地', '免费停车·烧烤轰趴·群山环抱·设施齐全', 3, '毗邻黄山风景区西大门', '距离黄山北站94公里', '安徽', '安徽省黄山市黄山区焦村镇黄山风景区西大门', '途居黄山露营地，位于安徽省黄山市黄山区焦村镇，毗邻黄山风景区西大门，占地面积约1000亩。途居黄山露营地依托国际级风景区，中国首个集高端接待、餐饮、养生度假、休闲娱乐为一体的自驾游、自助游、房车露营地;由奇瑞控股全额投资,项目总投资约为5亿元，从2013年10月 开始建设，现一期已投入实际运营，并由途居露营地开发与管理服务机构负责运营管理工作。', '0559-8569999', '2019-11-26 00:56:08'),
(3, './static/imgs/4c332b4effe042af8c806b4102c89805.jpg', '潍坊白浪河营地', 'BBQ·烧烤轰趴·可做饭', 1, '位于湿地公园内', '距潍坊机场10公里', '山东', '山东省潍坊市潍城区宝通街与水库路交叉口南3公里左行500米', '山东潍坊白浪河露营地是倾力打造的标杆营地，是国内第四个按照国家标准委发布的休闲露营地系列国家标准打造的露营地，也是山东省内首个国标营地。走过来国内那么多露营地,只有走近了这里，房车、木屋、集装箱、玻璃房等多种旅游新业态，在示范区、文化风情主题区、清雅和风木屋区、丛林勇者野营区、房车拓展主题区等主题分区里一走,我彻底陶醉了。这分明是我寻了又寻的旅行中的自己。\r\n', '0536-8215160', '2019-11-26 00:56:08'),
(4, './static/imgs/4fdb20363282476593832ec5d66f7f4c.jpg', '途居镇江露营地', 'BBQ·烧烤轰趴·停车方便', 3, '位于江苏省镇江新区圈山风景区', '距镇江火车站30公里', '江苏', '江苏省镇江市丹阳市圃山风景区内', '途居圃山房车露营地位于江苏省镇江新区圈山风景区脚下，交通便利紧靠长三角北翼中心区域、属于南京都市圈与上海都市圈相交处,西接六朝古都南京,北跨中国历史文化名城扬州，东临国际都市上海，南至生态名城常州。', '0511-87055386', '2019-11-26 00:56:08'),
(5, './static/imgs/7f36251452f84ce9abb2f88142e1de2d.jpg', '北京龙湾露营地', '儿童乐园·烧烤轰趴', 2, '五星级房车露营公园', '京都绿肺', '北京', '北京市延庆县旧县镇东龙湾村南200米', '北京龙湾国际露营公园位于北京西北部延庆县金牛湖畔，集旅游观光、房车露营、木屋住宿、餐饮娱乐、儿童乐园、休闲度假为一体，隶属于北京首旅集团,是集团全资建设并经营的国内首座符合国际标准，兼顾我国游客消费习惯的五星级房车露营公园。园区内以妫河水系为主轴，贯穿主入口、主会场、房车营位区、水景篷房区、可移动木屋区、儿童活动区、帐篷营位区、木屋别墅区、游客服务中心等区域。公园充分满足房车露营功能和舒适度,配备充足的房车、自驾车泊位以及高品质的木屋、篷房等住宿设施,设有洗浴、洗衣等公共服务和垃圾分类、雨水收集等环保设施，引进欧美进口房车可供住宿体验。', '010-61152080', '2019-11-26 00:56:08'),
(6, './static/imgs/8a61fb85d7074616bff5a6283de4a12e.jpeg', '途居湘潭露营地', '烧烤轰趴·设施齐全·射箭&单车', 3, '近生态旅游景区', '距湘潭北站1小时车程', '湖南', '湖南省湘潭市岳塘区玉屏村', '途居湘潭昭山露营地位于湘潭市昭山示范区玉屏村，昭山示范区是长株潭城市群生态“绿心”的核心区域，东临长株高速、西临京港澳高速、南临沪昆高速,  平均距离三市不超过15公里、离长沙黄花国际机场25公里、离京港澳高速(G4)昭山出入口处仅5公里，地理位置优越，交通十分便利。', '0731-88192129', '2019-11-26 00:56:08'),
(7, './static/imgs/16d392ff0ce240fe88e41140be2737d7.jpg', '途居扬州露营地', '烧烤轰趴·卡丁车·游船', 4, '位于滨江湿地森林公园内', '近243省道', '江苏', '江苏省扬州市邗江区瓜洲镇滨江润扬湿地森林公园', '途居扬州国际露营地地处江苏省扬州市邗江区最南端城镇瓜洲镇，位于扬州、镇江城市交汇的滨江湿地森林公园内，总占地(含水面)面积达到1000多亩，是瓜洲古镇国际旅游度假区建设的重点项目之一。整个度假区集古运河风情、古镇风貌、生态休闲于一体。既彰显瓜洲运河文化与长江文化的交汇融合，又体现自然风光与历史文化及人文环境的和谐统一,依托瓜洲古镇的深厚历史文化资源、独特的区域优势、优惠的投资政策,缔造长江第一古镇,建设成宁镇扬乃至长三角和华东地区最重要的旅游度假中心。', '0514-87508881', '2019-11-26 00:56:08'),
(8, './static/imgs/32d3f469d4304b9bb60e99e217af0b3b.jpg', '秦皇岛碧螺塔房车营地', '网红打卡地·超级海景·无边泳池·白教堂', 1, '北戴河静坐观潮', '近阿那亚度假区', '河北', '河北省秦皇岛市北戴河区东海滩路中段（碧螺塔酒吧公园内）', '秦皇岛利尔春天碧螺塔房车营地度假酒店位于东海滩路中段(碧螺塔酒吧公园内)，临近海上演艺大舞台、碧螺塔等', '0335-4685366', '2019-11-26 00:56:08'),
(9, './static/imgs/49ecfa9d472c49ec92dca8823f9b5362.jpg', '北京红栌汽车营地', '儿童乐园·停车方便·BBQ', 3, '近银山塔林', '距首都机场46公里', '北京', '北京市昌平区银山塔林景区', '红栌银山国际汽车露营地是北京首家以汽车为主题的旅馆，位于昌平区延寿镇银山塔林风景区，占地面积约150公顷,背倚燕山,西接太行，山秀景幽,植被繁茂、自然景观优美。营地地处安四路中段，交通便利，西通京藏高速，东连京承高速,距奥运村约40公里，到达市区车行时间约1小时。\r\n营地周边旅游资源丰富，可辐射、通达小汤山温泉集聚区、小汤山农业园、草莓采摘园、军都滑雪场、大杨山森林公园、明十三陵景区、蟒山森林公园、延寿寺、水长城等景点、景区。\r\n营地按照“依托生态资源、利用生态资源、保护生态资源”的设计理念，结合现代都市人的消费和文化需求，尽显国际、时尚、实用等特点。内设木屋房车区、户外帐篷露营区、山地越野运动区、儿童户外娱乐区、汽车露天影院及具有桃花源风情的婚礼教堂。营地拥有由集装箱组成的独具特色的客房60余套，房车营位50余辆，木屋房车营位30个,帐篷营位100多个，中西餐厅1500平米，可同时容纳700人就餐,并可接纳会议、婚宴、沙龙、PRETY等特色聚会活动。红栌银山汽车露营地正以崭新的姿态，高质的服务,迎接八方来客!\r\n红栌银山汽车露营地，将陆续举行房车露营体验、摩托车巡游、ATM全地形摩托车体验、真人版对战、激光双向飞碟、主题山野音乐会、汽车电影、自行车赛、摄影比赛、越野登山等特色活动项目，而且有些项目将成为银山营地常设业务持续开展。', '010-89726767', '2019-11-26 00:56:08'),
(10, './static/imgs/82f37f4c8b6e4695971a4af0b901babe.jpg', '重庆玉峰山营地', '可垂钓·可做饭·适合拍照', 4, '天然氧吧', '距重庆市中心20公里', '重庆', '重庆市渝北区玉峰山森林公园江西会馆', '客乐得(重庆)玉峰山房车营地位于渝北区玉峰山森林公园内,距重庆主城和各大交通枢纽均在20公里以内，车程半小时即到,是重庆市首家森林型房车营地。营地山清水秀、环境清幽、空气清新、花团景簇、林海茫茫、绿树环抱，平均气温比市区低3~5°C，拥有20多辆房车, 30个自驾式房车营位,30余幢低碳、可拆装的装配式建筑，以可随时拖动的车、可随地迁移的房为主题打造体验式示范基地(营地)，是重庆市科委评定的市级科普基地,也是重庆市首批森林康养基地之一、全国第二批森林康养示范基地。营地配备了休闲垂钓、亲子书吧、生态烧烤、飞越丛林、生态养殖、蔬菜采摘等丰富多彩的配套项目，以及儿童游乐、篮球、羽毛球、乒乓球、单双杠等运动设施。', '18696787772', '2019-11-26 00:56:08'),
(11, './static/imgs/86bd4e8beba44e3d8d1d878d6b368cf4.jpg', '北京密云南山房车小镇', '欢迎宠物·BBQ·双人自行车·真人CS', 2, '近大广高速', '近南山滑雪场', '北京', '北京市密云县河南寨镇湖东路88号', '北京港中旅密云南山房车小镇位于密云县河南寨镇境内,毗邻南山滑雪场，是中国国际标准房车营地。主要由综合服务会所、房车营位区、休闲娱乐区、房车租赁、房车及露营用品展示区等几部分组成。小镇引进多款美国原装进口拖挂式房车,可供房车租赁体验,还可接待各类展会、拓展训练、家庭户外休闲活动等，同时还可为各类聚会、婚礼及产品发布会提供场地等。主要设施:综合服务会所、会展场地、VIP会议室、多媒体会议室、房车营位区、真人CS野战区、儿童乐园。', '010-51296943', '2019-11-26 00:56:08'),
(12, './static/imgs/99c0ec3e6fac470a80286345577a5957.jpg', '芜湖途居龙山营地', '烧烤轰趴·设施齐全·停车方便', 1, '近龙山公园', '距离市区30分钟车程', '安徽', '安徽省芜湖市芜湖县凤鸣湖北路18号', '途居露营地是途居旗下第一家正式营业的房车露营地;位于安徽省芜湖市经济技术开发区凤鸣湖风景区内，背靠龙山,面朝凤鸣湖,交通便利，自然资源半富,地理位置优越,毗邻著名的天门山风景区。由奇瑞控股投资5干万,于2013年开工兴建, 2014年8月正式营业。距亚洲最大的主题乐园方特欢乐世界仅十五分钟车程。', '0553-6888887', '2019-11-26 00:59:37'),
(13, './static/imgs/522fc8be171a496e9ed778b0e092befd.jpg', '东钱湖小隐营地', '可垂钓·BBQ·自行车骑行', 1, '紧邻东钱湖', '近二灵山温泉', '浙江', '浙江省宁波市东钱湖上水村环湖东路渔家傲景区内，近沙山路。', '小隐上水国际房车度假基地紧邻东钱湖，是国内顶级湖畔型房车露营地，也是湖泊生态颐养度假的精品体验区。依托东钱湖丰沛的自然资源,通过小隐社区的完善打造,这里将成为野奢度假、户外休闲、房车露营的绝佳去处,更是家庭休闲与亲子度假的不二之选。在这 里你可以呼朋唤友于湖边品茗谈天,可以一个人静静的坐在躺椅，上看淡妆浓抹总相宜的东钱湖，可以一家人一起游山玩水，在大自然中畅快呼吸。\r\n', '0574-88124567', '2019-11-26 00:59:37'),
(14, './static/imgs/1665cfd2e9e94742bd4e8398f30eb206.jpg', '途居南通开沙岛房车露营地', 'BBQ·卡丁车·射箭', 1, '距兴东机场40公里', '项目规划面积近1000亩', '江苏', '江苏省南通市通州市五街镇开沙岛旅游度假村开沙大道8号', '南通开沙岛途居房车露营地项目规划面积近1000亩，其中一期陆地面积近300亩，水面100多亩,投资额近2亿元。交流中心拥有餐饮包厢15个，宴会大厅2个,多功能会议厅1个。', '0513-80953333', '2019-11-26 00:59:37'),
(15, './static/imgs/03121ae1235e45159432416f66cfa802.jpg', '珲春防川自驾车营地', '各种运动场·停车方便', 5, '位于珲春市敬信镇防川村老部落', '防川国家风景区', '吉林', '吉林省延边朝鲜族自治州珲春市敬信镇防川村', '珲春防川自驾车营地位于位于珲春市敬信镇防川村老部落,地处防川国家风景区。以防川景区为依托,依山傍水，用地面积50000平方米,主要建设内容为营房、室外营地、房车营地、游客服务中心、木屋、朝鲜族家庭旅店、排球场、网球场、摔跤场、民俗广场、多功能运动场、停车场和其它配套设施,以自驾游营地为主导，以休闲度假为主营,集“吃、住、行、游、购、娱”为一体，家庭出行、集体度假等各种需求皆可满足。', '0433-7851777', '2019-11-26 00:59:37'),
(16, './static/imgs/5699e15c5a5e48afa302dc72eae8a531.jpg', '烟台泊涛露营基地', '停车方便', 1, '近奥林匹克公园', '距离市区20分钟车程', '山东', '山东省烟台市海阳市宝龙城泊涛房车露营基地', '烟台泊涛露营基地借鉴了国外汽车房车露营的先进理念，主要提供户外露营基地，房车宿营基地，自驾车旅游度假等，以木屋别墅为主体，并设有汽车餐厅、汽车酒吧、汽车茶馆以及自驾车俱乐部、烟台首家标准竞技钓鱼池等主题场所，形成了集住宿、餐饮、休闲、娱乐于一体的综合性汽车旅馆。', '0535-3300777', '2019-11-26 01:02:53'),
(17, './static/imgs/6120ccb2ede24cc58059bb648e1c1ba9.jpg', '海淀绿世界汽车房车露营地', '季节采摘', 5, '近翠湖湿地公园', '绿世界', '北京', '北京市海淀区上庄镇前章村', '绿世界汽车房车营地隶属于绿世界(北京)房车露营地管理有限公司，公司前身是搜世界(北京)科技发展有限公司，成立于2004年11月23，其下设的绿世界房车:是目前国内较早从事房车销售(美国太平洋房车)、咨询、租赁、托管业务的专业公司。', '010-63890690', '2019-11-26 01:02:53'),
(18, './static/imgs/28307ea674bd4c968b6f55d15ccb1273.jpg', '葫芦岛银泰房车露营地', '欢迎宠物·停车方便·靠近海滩', 2, '近东戴河滨海大道', '近海洋公园', '辽宁', '辽宁省葫芦岛市龙港区滨海大道28号', '葫芦岛房车露营地位于东戴河新区滨海大道,是北方最大的房车集群酒店，全部房车均采自美国原装进口，绵延400多米的黄金海岸线犹如长龙遨游大海,在东戴河最美的海滩，北方最大的海滨度假浴场里打造的房车酒店是国内首个五星级的滨海房车露营地。\r\n', '400-8164222', '2019-11-26 01:02:53'),
(19, './static/imgs/79826d34b2a14baa8d6544b633e3e87d.jpg', '露云娜美房车露营地', '骑行圣地·水上项目', 1, '于观龙岛上', '水文化主题营地第一名', '广东', '广东省广州市番禺区观龙岛', '露云娜美露营地投资管理有限公司是露营地一体化解决方案运营商，2015年末，获得浙商创投干万级战略投资。公司以促进露营地市场的规范运作，通过将欧洲新型房车旅游度假概念引入中国市场，发掘自驾游客户群体对旅游目的地的半富深度体验,引领全新的旅游休闲生活方式。结合中国旅游度假客户群体对旅游高服务品质体验的要求和习惯,依托公司完善的服务体系、管控体系、财务体系、采购体系,为客户提供高品质、高标准的服务体验。', '0203-9193116', '2019-11-26 01:02:53'),
(20, './static/imgs/264340de85ce44a3aa11f3df424210cd.jpg', '青岛宝龙房车公园', '汽车影院·各类娱乐活动·攀岩·咖啡吧', 4, '位于国家4A级湿地公园', '倚大沽河畔', '山东', '山东省青岛市胶州市少海北路4号', '青岛宝龙房车公园是目前胶州唯一一家房车公园，也被作为胶州市重点项目开发,倚大沽河畔，毗邻少海，置于国家4A级湿地公园，占地69亩), 划分为房车营地服务区，露营区，自助烧烤区,汽车影院，平行线咖啡吧等几个区域,除了具备基础设施以外，同时又可满足房车使用者长期驻扎，提供卫生设施、日常生活服务场地、健身娱乐场地、运动设施等，并会定期举办各种休闲娱乐体育活动。\r\n', '13583690212', '2019-11-26 01:02:53');

-- --------------------------------------------------------

--
-- 表的结构 `travel_caro`
--
-- 创建时间： 2019-11-16 02:55:42
--

DROP TABLE IF EXISTS `travel_caro`;
CREATE TABLE IF NOT EXISTS `travel_caro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `travel_caro`:
--

--
-- 转存表中的数据 `travel_caro`
--

INSERT INTO `travel_caro` (`id`, `img`, `title`, `href`) VALUES
(1, './static/1aaa5674ebe84d7cb0a3b301d521fbba.jpg', NULL, NULL),
(2, './static/2d98cfffc98b4e2893004e95570da5d1.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `travel_class`
--
-- 创建时间： 2019-11-16 02:55:42
--

DROP TABLE IF EXISTS `travel_class`;
CREATE TABLE IF NOT EXISTS `travel_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `travel_class`:
--

--
-- 转存表中的数据 `travel_class`
--

INSERT INTO `travel_class` (`id`, `type_name`) VALUES
(1, '湖泊型'),
(2, '城市型'),
(3, '山地型'),
(4, '森林型'),
(5, '平原型');

-- --------------------------------------------------------

--
-- 表的结构 `travel_collect`
--
-- 创建时间： 2019-11-16 02:55:42
--

DROP TABLE IF EXISTS `travel_collect`;
CREATE TABLE IF NOT EXISTS `travel_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `ident` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `tid` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `travel_collect`:
--   `uid`
--       `travel_user` -> `id`
--   `tid`
--       `travel_camp` -> `id`
--

-- --------------------------------------------------------

--
-- 表的结构 `travel_scroll`
--
-- 创建时间： 2019-11-23 06:17:35
--

DROP TABLE IF EXISTS `travel_scroll`;
CREATE TABLE IF NOT EXISTS `travel_scroll` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `travel_scroll`:
--

--
-- 转存表中的数据 `travel_scroll`
--

INSERT INTO `travel_scroll` (`id`, `cid`, `img1`, `img2`, `img3`) VALUES
(1, 1, './static/scroll/29816049.jpg', './static/scroll/4144468977.jpg', './static/scroll/208104921.jpg'),
(2, 2, './static/scroll/292737539.jpg', './static/scroll/300536907.jpg', './static/scroll/314328083.jpg'),
(3, 3, './static/scroll/320102993.jpg', './static/scroll/1044899256.jpg', './static/scroll/1051921069.jpg'),
(4, 4, './static/scroll/1284965597.jpg', './static/scroll/3850709400.jpg', './static/scroll/1332576209.jpg'),
(5, 5, './static/scroll/1381122787.jpg', './static/scroll/1409220719.jpg', './static/scroll/1409225056.jpg'),
(6, 6, './static/scroll/1412327079.jpg', './static/scroll/1470325641.jpg', './static/scroll/1717815713.jpg'),
(7, 7, './static/scroll/1731400392.jpg', './static/scroll/1733577956.jpg', './static/scroll/1752749994.jpg'),
(8, 8, './static/scroll/1889032813.jpg', './static/scroll/1921188956.jpg', './static/scroll/2079800442.jpg'),
(9, 9, './static/scroll/2082358749.jpg', './static/scroll/2085345343.jpg', './static/scroll/2170482243.jpg'),
(10, 10, './static/scroll/2197066702.jpg', './static/scroll/2197418331.jpg', './static/scroll/2237241407.jpg'),
(11, 11, './static/scroll/2251986177.jpg', './static/scroll/2332073807.jpg', './static/scroll/2356396868.jpg'),
(12, 12, './static/scroll/2356505222.jpg', './static/scroll/2364227455.jpg', './static/scroll/2413913020.jpg'),
(13, 13, './static/scroll/2413999471.jpg', './static/scroll/2414612350.jpg', './static/scroll/2422536042.jpg'),
(14, 14, './static/scroll/2433795636.jpg', './static/scroll/2619094107.jpg', './static/scroll/2638977175.jpg'),
(15, 15, './static/scroll/2656628652.jpg', './static/scroll/2670491509.jpg', './static/scroll/2742292546.jpg'),
(16, 16, './static/scroll/2793569902.jpg', './static/scroll/2807680893.jpg', './static/scroll/2852770417.jpg'),
(17, 17, './static/scroll/2920485246.jpg', './static/scroll/2921914130.jpg', './static/scroll/2996898994.jpg'),
(18, 18, './static/scroll/3008060681.jpg', './static/scroll/.1673351825jpg', './static/scroll/3211466005.jpg'),
(19, 19, './static/scroll/3237167858.jpg', './static/scroll/3306361875.jpg', './static/scroll/3328010001.jpg'),
(20, 20, './static/scroll/3401777427.jpg', './static/scroll/3615919511.jpg', './static/scroll/3695221626.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `travel_shared`
--
-- 创建时间： 2019-11-21 05:50:29
--

DROP TABLE IF EXISTS `travel_shared`;
CREATE TABLE IF NOT EXISTS `travel_shared` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `title` varchar(64) NOT NULL,
  `subtitle` varchar(128) NOT NULL,
  `type` int(11) NOT NULL,
  `likes` varchar(255) NOT NULL,
  `share_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `travel_shared`:
--

--
-- 转存表中的数据 `travel_shared`
--

INSERT INTO `travel_shared` (`id`, `uid`, `pic`, `title`, `subtitle`, `type`, `likes`, `share_time`) VALUES
(1, 1, './static/imgs/1152342764181140.jpg', '带你领略新西兰100%PureLand七大房车营地', '休闲 娱乐', 1, '5', '2019-11-21 05:52:02'),
(2, 2, './static/imgs/4108303248689745.jpg', '干货|租房车出行前必备指南', '休闲', 1, '8', '2019-11-21 05:52:02'),
(3, 3, './static/imgs/190650498358987562.jpg', '一路向南·拾起海南西线那些被遗忘的美', '休闲 娱乐', 1, '9', '2019-11-21 05:52:02'),
(4, 4, './static/imgs/212223963141011371.jpg', '东八区的这里没有时差，也不是你现象的模样', '探险 休闲', 3, '4', '2019-11-21 05:52:03'),
(5, 1, './static/imgs/231404942662952035.jpg', '【一路向南】驾驶房车领略北纬18度的热带海岛', '娱乐 探险', 2, '5', '2019-11-21 05:52:03'),
(6, 2, './static/imgs/252962346591486751.jpg', '春节玩转纯净新西兰南-北岛', '娱乐', 2, '2', '2019-11-21 05:52:03'),
(7, 3, './static/imgs/269446560370519451.jpg', '走的太久，是时候停下来思考一下了', '休闲', 1, '10', '2019-11-21 05:52:03'),
(8, 4, './static/imgs/278660070981014132.jpg', '清明踏青，探索江西不为人知的美丽', '休闲 探险', 1, '5', '2019-11-21 05:52:03'),
(9, 1, './static/imgs/296206474426173407.jpg', '云南，走进一场风花雪月的浪漫之旅', '休闲 娱乐', 2, '4', '2019-11-21 05:52:03'),
(10, 2, './static/imgs/0430201023916284143.jpg', '春天的气息扑面而来，准备出发！', '休闲', 1, '9', '2019-11-21 05:52:03'),
(11, 1, './static/imgs/0543485891503722486.jpg', '彼岸无声，聚散星尘，美西房车游', '探险', 3, '6', '2019-11-21 05:52:03'),
(12, 2, './static/imgs/812913977932011730.jpg', '身未动，心已远。', '休闲', 1, '8', '2019-11-21 05:52:03'),
(13, 3, './static/imgs/991833291053941905.jpg', '我和西藏之间，只隔着一张火车票!', '休闲 娱乐', 2, '9', '2019-11-21 05:52:03'),
(14, 4, './static/imgs/1018542562617800640.jpg', '这里的风景美不胜收，真让人流连忘返。', '探险 休闲', 3, '4', '2019-11-21 05:52:03'),
(15, 1, './static/imgs/1192634349337434177.jpg', '梦想，并不奢侈，只要勇敢地迈出第一步。', '娱乐 探险', 3, '5', '2019-11-21 05:52:03'),
(16, 2, './static/imgs/19815713613084369930.jpg', '一个人的旅行，在路上遇见最真实的自己。', '娱乐', 2, '2', '2019-11-21 05:52:03'),
(17, 3, './static/imgs/3868824295069646760.jpg', '背上行囊去远方，那个梦寐以求的目的地。', '休闲', 1, '10', '2019-11-21 05:52:03'),
(18, 4, './static/imgs/41775472683742003943.jpg', '一路涉足、一路留恋、一路回望。依旧前行!', '休闲 探险', 3, '5', '2019-11-21 05:52:03'),
(19, 1, './static/imgs/5463456662534195278.jpg', '旅行要学会随遇而安，淡然一点，走走停停。', '休闲 娱乐', 2, '4', '2019-11-21 05:52:03'),
(20, 2, './static/imgs/7374721391370321866.jpg', '一辈子是场修行，短的是旅行，长的是人生。', '休闲', 1, '9', '2019-11-21 05:52:03'),
(21, 1, './static/imgs/2809664543543009291.jpg', '要么读书要么旅行，灵魂和身体，必须有一个在路上。', '探险', 3, '6', '2019-11-21 05:52:03'),
(22, 2, './static/imgs/330316305195467557.jpg', '因为有梦，所以勇敢出发，选择出发，便只顾风雨兼程。', '休闲', 1, '8', '2019-11-21 05:52:03'),
(23, 3, './static/imgs/3911699502391350349.jpg', '每个人心中，都会有一个古镇情怀，流水江南，烟笼人家。', '休闲 娱乐', 2, '9', '2019-11-21 05:52:03'),
(24, 4, './static/imgs/4863463202353863155.jpg', '一颗说走就走的心，一个会拍照的情侣，一段甜蜜的旅程。', '探险 休闲', 3, '4', '2019-11-21 05:52:03'),
(25, 1, './static/imgs/5004930681194299365.jpg', '旅行的理由不需要阐述太多，一个字就可以概括全部：走。', '娱乐 探险', 2, '5', '2019-11-21 05:52:03'),
(26, 2, './static/imgs/5015430211267996826.jpg', '出去旅行，不是去看风景，而是去寻回自己——最本真的自己。', '娱乐', 2, '2', '2019-11-21 05:53:24'),
(27, 3, './static/imgs/7778778613433972928.jpg', '我们一路上兴致勃勃地参观，当夕阳西下时，才恋恋不舍地离开。', '休闲', 1, '10', '2019-11-21 05:53:24'),
(28, 4, './static/imgs/10315126052099722.jpg', '人生最好的旅行，就是你在一个陌生的地方，发现一种久违的感动。', '休闲 探险', 3, '5', '2019-11-21 05:53:25'),
(29, 1, './static/imgs/146762909668142235.jpg', '一个背包，几本书，所有喜欢的歌，一张单程车票，一颗潇洒的心。', '休闲 娱乐', 2, '4', '2019-11-21 05:53:25'),
(30, 2, './static/imgs/167380009716277962.jpg', '旅游不在乎终点，而是在意途中的人和事还有那些美好的记忆和景色。', '休闲', 1, '9', '2019-11-21 05:53:25'),
(31, 1, './static/imgs/1159986708126128257.jpg', '人生至少要有两次冲动，一为奋不顾身的爱情，一为说走就走的旅行。', '探险', 3, '6', '2019-11-21 05:53:25'),
(32, 2, './static/imgs/15582538894095063705.jpg', '旅行是一种病，当你把身边的人都传染了，而你自己根本不想从中跑出来。', '休闲', 1, '8', '2019-11-21 05:53:25'),
(33, 3, './static/imgs/1599080749742339178.jpg', '想呼吸着每座城市的空气，想感受着每座城市的人儿，想看着每座城市的风景。', '休闲 娱乐', 2, '9', '2019-11-21 05:53:25'),
(34, 4, './static/imgs/1737719707369553879.jpg', '流转的时光，都成为命途中美丽的点缀，看天，看雪，安安静静，不言不语都是好风景。', '探险 休闲', 3, '4', '2019-11-21 05:53:25'),
(35, 1, './static/imgs/1868913737914022962.jpg', '总有一天，我会丢下我所有的疲倦和理想，带着我的相机和电脑，远离繁华，走向空旷。', '娱乐 探险', 2, '5', '2019-11-21 05:53:25'),
(36, 2, './static/imgs/1916993232109017113.jpg', '背着背包的路上，看过许多人，听过许多故事，见过旅行风景，就这样，慢慢学会了长大', '娱乐', 2, '2', '2019-11-21 05:53:25'),
(37, 3, './static/imgs/3649205973270388950.jpg', '人生就像一场旅行，不必在乎目的地，在乎的是沿途的风景以及看风景的心情', '休闲', 1, '10', '2019-11-21 05:53:25'),
(38, 4, './static/imgs/8143470922290563943.jpg', '对未知的恐惧，对舒适的留恋将阻止我们成为一个旅行者走上的冒险旅程。', '休闲 探险', 3, '5', '2019-11-21 05:53:25'),
(39, 1, './static/imgs/9927754931725554560.jpg', '找个舒适的小店，挑张雅致的明信片，送给中意的ta。', '休闲 娱乐', 2, '4', '2019-11-21 05:53:25'),
(40, 2, './static/imgs/1999181034564276540.jpg', '某年某月某日，下午某时，天气晴，我在某地，想念你。', '休闲', 1, '9', '2019-11-21 05:53:25'),
(41, 1, './static/imgs/2032631278392936255.jpg', '如果你不出去走走，你就会以为这就是世界。', '探险', 3, '6', '2019-11-21 05:53:25'),
(42, 2, './static/imgs/0586421334080117600.jpg', '保持年轻，就要背起行囊。无论是爱情还是青春，其实都在旅行的路上。', '休闲', 1, '8', '2019-11-21 05:53:25'),
(43, 3, './static/imgs/20860783941593619534.jpg', '别忘了答应自己要做的事情，别忘了答应自己要去的地方，无论有多难，有多远。', '休闲 娱乐', 2, '9', '2019-11-21 05:53:25'),
(44, 4, './static/imgs/22515722631686460113.jpg', '要有最朴素的生活， 与最遥远的梦想 。即使明日天寒地冻， 路远马亡。', '探险 休闲', 3, '4', '2019-11-21 05:53:25'),
(45, 1, './static/imgs/2502111287285243706.jpg', '我们仍未知道那天所看见的花的名字，但是我们知道那朵花仍在那远方盛开着…', '娱乐 探险', 2, '5', '2019-11-21 05:53:25'),
(46, 2, './static/imgs/25585231173780035480.jpg', '旅行要学会随遇而安，淡然一点，走走停停', '娱乐', 2, '2', '2019-11-21 05:53:25'),
(47, 3, './static/imgs/2604855057362335216.jpg', '在路上你就已经收获了自由自在的好心情', '休闲', 1, '10', '2019-11-21 05:53:25'),
(48, 4, './static/imgs/2614534478402903284.jpg', '何谓旅行：some say hi，some say bye.', '休闲 探险', 3, '5', '2019-11-21 05:53:25'),
(49, 1, './static/imgs/26796620862688175397.jpg', '生命就好比旅行，在旅行的途中我们会拥有某些东西', '休闲 娱乐', 2, '4', '2019-11-21 05:53:25'),
(50, 2, './static/imgs/29005467924148504159.jpg', '我想每一个爱上旅行的人都是孤单的', '休闲', 1, '9', '2019-11-21 05:53:25'),
(51, 1, './static/imgs/3338671330119589250.jpg', '旅行就是，即使是同一个世界，你们发现的却是不一样的世界。', '探险', 3, '6', '2019-11-21 05:53:59'),
(52, 1, './static/imgs/35359620281271265173.jpg', '其实只要你愿意，一切都可以变得很容易。', '探险', 3, '6', '2019-11-21 05:53:59'),
(53, 3, './static/imgs/3676444689618282980.jpg', '我是在旅行，孤独是自我，却思考着我的灵魂。', '休闲 娱乐', 2, '9', '2019-11-21 05:53:59'),
(54, 4, './static/imgs/3971655992166004676.jpg', '旅行，只需要一颗安静的心和不停的脚步，不停地遇见，不停地思考，不停地流逝自己的思想，不停地更新自己的记忆。', '探险 休闲', 1, '4', '2019-11-21 05:53:59'),
(55, 1, './static/imgs/40602745243232417607.jpg', '我们需要放飞心灵，让心翱翔在自由的天空', '娱乐 探险', 2, '5', '2019-11-21 05:53:59'),
(56, 2, './static/imgs/40767292851800527470.jpg', '寻一处宁静的幽谷，找寻隐藏在山间的纯净', '娱乐', 2, '2', '2019-11-21 05:53:59'),
(57, 3, './static/imgs/410626340142612512.jpg', '好象世界的每个角落都需要自己的脚去留个痕迹，才叫人生', '休闲', 1, '10', '2019-11-21 05:53:59'),
(58, 4, './static/imgs/4162798100685110605.jpg', '沿途的风景在渐渐远去，我举着叫思念的车牌，等待着最后一站——故乡', '休闲 探险', 3, '5', '2019-11-21 05:53:59'),
(59, 1, './static/imgs/41718514902896187542.jpg', '一个人旅行，背上几本书，在花海里，草丛旁悠然品味', '休闲 娱乐', 2, '4', '2019-11-21 05:53:59'),
(60, 2, './static/imgs/4202159044333375373.jpg', '重新审视自己，找回自我，歇够了，再飞回来，继续面对自己的人生。我想，这就是旅行的真义吧', '休闲', 1, '9', '2019-11-21 05:53:59');

-- --------------------------------------------------------

--
-- 表的结构 `travel_user`
--
-- 创建时间： 2019-11-27 08:24:16
--

DROP TABLE IF EXISTS `travel_user`;
CREATE TABLE IF NOT EXISTS `travel_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `nick` varchar(20) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `sign` varchar(128) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `travel_user`:
--   `id`
--       `travel_shared` -> `uid`
--

--
-- 限制导出的表
--

--
-- 限制表 `travel_camp`
--
ALTER TABLE `travel_camp`
  ADD CONSTRAINT `travel_camp_ibfk_1` FOREIGN KEY (`type`) REFERENCES `travel_class` (`id`);

--
-- 限制表 `travel_collect`
--
ALTER TABLE `travel_collect`
  ADD CONSTRAINT `travel_collect_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `travel_user` (`id`),
  ADD CONSTRAINT `travel_collect_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `travel_camp` (`id`);

--
-- 限制表 `travel_user`
--
ALTER TABLE `travel_user`
  ADD CONSTRAINT `travel_user_ibfk_1` FOREIGN KEY (`id`) REFERENCES `travel_shared` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

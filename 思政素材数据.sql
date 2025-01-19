select * from Directory

insert into Directory(DirectoryID,DirectoryName)
values('1000','新闻传播大类')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'1001','1000','新闻出版类'union
select'1002','1000','广播影视类'
 --最后一个数据不用union
insert into Directory(DirectoryID,DirectoryName)
values('2000','装备制造大类')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'2001','2000','机械设计制造类'union
select'2002','2000','机电设备类'union
select'2003','2000','自动化类'
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
values('2004','2000','航空装备类')

insert into Directory(DirectoryID,DirectoryName)
values('3000','财经商贸大类')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'3001','3000','财政税务类'union
select'3002','3000','金融类'union
select'3003','3000','财务会计类'union
select'3004','3000','经济贸易类'union
select'3005','3000','电子商务类'union
select'3006','3000','物流类'

insert into Directory(DirectoryID,DirectoryName)
values('4000','电子与信息大类')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'4001','4000','电子信息类'union
select'4002','4000','计算机类'union
select'4003','4000','通信类'union
select'4004','4000','集成电路类'

insert into Directory(DirectoryID,DirectoryName)
values('5000','公共管理与服务大类')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'5001','5000','公共事业类'union
select'5002','5000','公共管理类'union
select'5003','5000','公共服务类'

insert into Directory(DirectoryID,DirectoryName)
values('6000','教育与体育大类')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'6001','6000','教育类'union
select'6002','6000','语言类'union
select'6003','6000','体育类'

insert into Directory(DirectoryID,DirectoryName)
values('7000','农林牧渔大类')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'7001','7000','农业类'union
select'7002','7000','林业类'union
select'7003','7000','畜牧业类'union
select'7004','7000','渔业类'

insert into Directory(DirectoryID,DirectoryName)
values('8000','资源环境与安全大类')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'8001','8000','资源勘查类'union
select'8002','8000','地质类'union
select'8003','8000','石油与天然气类'union
select'8004','8000','金属与非金属矿类'union
select'8005','8000','气象类'union
select'8006','8000','环境保护类'union
select'8007','8000','安全类'

insert into Directory(DirectoryID,DirectoryName)
values('9000','土木建筑大类')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'9001','9000','建筑设计类'union
select'9002','9000','城乡规划与管理类'union
select'9003','9000','土建施工类'union
select'9004','9000','建筑设备类'union
select'9005','9000','市政工程类'

insert into Directory(DirectoryID,DirectoryName)
values('10000','水利大类')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'10001','10000','水文水资源类'union
select'10002','10000','水利工程与管理类'union
select'10003','10000','水土保持与水环境类'

insert into Directory(DirectoryID,DirectoryName)
values('11000','生物与化工大类')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'11001','11000','生物技术类'union
select'11002','11000','化工技术类'

insert into Directory(DirectoryID,DirectoryName)
values('12000','食品药品与粮食大类')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'12001','12000','食品类'union
select'12002','12000','药品与医疗器械类'union
select'12003','12000','粮食类'

insert into Directory(DirectoryID,DirectoryName)
values('13000','交通运输大类')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'13001','13000','铁道运输类'union
select'13002','13000','道路运输类'union
select'13003','13000','水上运输类'union
select'13004','13000','航空运输类'union
select'13005','13000','管道运输类'union
select'13006','13000','城市轨道交通类'

insert into Directory(DirectoryID,DirectoryName)
values('14000','医药卫生大类')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'14001','14000','临床医学类'union
select'14002','14000','护理类'union
select'14003','14000','药学类'union
select'14004','14000','中医药类'union
select'14005','14000','医学技术类'union
select'14006','14000','公共卫生与卫生管理类'

insert into Directory(DirectoryID,DirectoryName)
values('15000','旅游大类')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'15001','15000','旅游类'union
select'15002','15000','餐饮类'


--Material Classification
select * from Material_Classification
insert into Material_Classification(MaterialID,DirectoryID)
select'1','1001'union
select'2','1002'union
select'3','2001'union
select'4','15002'union
select'5','2003'union
select'6','2004'union
select'7','3001'union
select'8','3002'union
select'9','3003'union
select'10','3004'union
select'11','3005'union
select'12','3006'union
select'13','4001'union
select'14','4002'union
select'15','4003'union
select'16','5001'union
select'17','5002'union
select'18','6001'union
select'19','6002'union
select'20','7001'
--以下是图片
select'21','7002'union
select'22','8005'union
select'23','8006'union
select'24','9001'union
select'25','9002'union
select'26','11001'union
select'27','12001'union
select'28','13004'union
select'29','14001'union
select'30','15001'union


--Material
select * from Material
insert into Material(MaterialID,Title,Keywords,Abstract,Author,Source,Category,Readingtimes)
values('1','扎根基层沃土的新闻人','先进典型 乡村振兴','高思杰，男，汉族，1973年11月出生，1991年8月参加工作，1997年6月入党。现任阜阳广播电视台外宣科科长。他从事电视新闻一线采访19年，以一位新闻人的博大情怀，将对这片土地的情、对父老乡亲的爱，化作一组组精彩的镜头、一行行滚烫的文字，弘扬社会正能量，传递着时代好声音。在不幸痛失爱女之时，他又以一位父亲的博大情怀，主动捐献女儿器官，用无声大爱点亮他人的生命之灯。2008年获得中国好人榜——敬业奉献好人。2015年被中宣部授予“时代楷模”称号，被安徽省委授予全省“优秀共产党员”。','王金雪','共产党员网','人物楷模','0')
insert into Material(MaterialID,Title,Keywords,Abstract,Author,Source,Category,Readingtimes)
select'2','马克思主义怎样守好网络阵地','马克思主义基本观点与方法','马克思主义一直是我国意识形态领域的主体，并随着我国经济社会的进步不断散发出强大的生命力。如何在互联网快速发展的背景下使马克思主义能够巩固其社会主义主体意识的地位至关重要。在“互联网+”时代背景下，马克思主义必须优化传播路径，依靠互联网平台，并不断结合我国实际，以此获得良好的发展机遇。','张磊','人民网','思想建设','0'union
select'3','智能制造时代的“工匠精神”：追求极致 不断创新','工匠精神','在智能制造飞速发展的今天，“工匠精神”依然是企业发展不可或缺的支撑。为展示“工匠精神”在智能化进程中的作用，记者来到南京熊猫汉达科技有限公司，对傅祥和翟惠敏两位“南京工匠”进行了采访。','申冉','中新网','人物楷模','0'union
select'4','“门前五包”助力餐饮单位有序恢复堂食','后疫情时代','自5月10日济南堂食按下“重启键”以来，济南市市中区各相关单位在做好疫情防控的前提下，以“门前五包”为抓手，维护好辖区内良好环境秩序。','唐磊','央广网','时政要闻','0'union
select'5','江苏产业园区集聚出成果 液压装备产业迅猛发展','行业发展','如皋市素有"液压机之乡"之称,经过多年努力,液压机产业逐渐成为全市特色产业。如皋液压装备科技产业园也于2011年被省科技厅评为省级科技产业园','江苏省科技厅 ','人民网','行业发展','0'union
select'6','空军航空兵某无人机团：“察打先锋”飞出胜战航迹','无人机','近年来，人民空军不断优化力量结构，加快新型作战力量建设。作为新质战斗力的代表，这个团的武器装备也迎来更新换代。进一步增强战斗力，成为全团官兵的目标。','刘海洋','人民网','行业发展','0'

insert into Material(MaterialID,Title,Keywords,Author,Source,Category,Readingtimes)
select'7','广州市税务局举办“智能应答机器人”全面应用推介会','智能税务','杨锐轩','人民网-广东频道','时政要闻','0'union
select'8','党的十九大报告中关于廉洁价值观的确立与建设廉洁金融','廉洁金融','红言','金融时报','时政要闻','0'union
select'9','山东临沂财政票据实现智能化监管','智能化监管','王鹤颖','中国财经报','行业发展','0'union
select'10','中国共产党经济成就背后的马克思主义政党逻辑','马克思主义政党','商志晓','人民网','思想建设','0'union
select'11','习近平讲故事：电商大有可为','电商发展','陈俊','央广网','产业发展','0'union
select'12','福建莆田物流中心：传承工匠精神 凝聚创新力量','工匠精神','钟建','新华社','人物楷模','0'union
select'13','借助5G高清传感器就是机器的“慧眼”助力企业发展','电子信息高科技','庞博','人民网','行业发展','0'union
select'14','巧用互联网传播红色文化','红色文化 新媒体','丁倩','央视网','产业发展','0'union
select'15','徐珺：通信“工匠” 逐梦光网','通信 楷模','赵越','人民网','人物楷模','0'union
select'16','三明沙县：“慈善厨房”传递最暖人间烟火气','公共慈善','蔡晓卿','东南网','时政要闻','0'union
select'17','芜湖市弋江区：党建引领“三网共治”，提升基层公共服务水平和综合治理能力','公共服务','陈玲','人民网','时政要闻','0'union
select'18','两江新区：“画家黑泽明”悦来美术馆开展','人文教育','李波','人民网','行业发展','0'union
select'19','英语教师职业枯竭与应对策略初探','学科教育','梁松鹤','人民网','行业发展','0'union
select'20','“90后”新农人的田园创业梦','农业创业','王震','新华网','产业发展','0'

select * from MultimediaDocument

select * from Editor
insert into Editor(EditorID,EditorName,EditorUnit,EditorEmail)
select'001','张吉惟','人民网','1234567890@qq.com'union
select'002','傅智翔','人民网','1234567890@126.com'union
select'003','黄文隆','人民网','1234567890@qq.com'union
select'004','吴心真','新华网','1234567890@qq.com'union
select'005','谢彦文','人民网','1234567890@qq.com'union
select'006','陈萱珍','人民网','1234567890@qq.com'union
select'007','李姿伶','人民网','1234567890@qq.com'union
select'008','吴佩霖','新华网','1234567890@qq.com'union
select'009','陈怡盈','新华网','1234567890@163.com'union
select'010','李治火','新华网','1234567890@qq.com'union
select'011','黄静雯','人民网','1234567890@qq.com'union
select'012','刘小紫','人民网','1234567890@qq.com'union
select'013','郑凯婷','新华网','1234567890@qq.com'union
select'014','谢一忠','人民网','1234567890@qq.com'union
select'015','罗依茂','人民网','1234567890@qq.com'union
select'016','许彦霖','新华网','1234567890@qq.com'union
select'017','黄慧学','人民网','1234567890@qq.com'union
select'018','李升毓','人民网','1234567890@qq.com'union
select'019','陈宜宁','新华网','1234567890@qq.com'union
select'020','王圣如','人民网','1234567890@qq.com'

select * from Edit
insert into Edit(MaterialID,EditorID,EditTime)
select'1','001','2022-2-9'union
select'2','002','2022-12-8'union
select'3','003','2022-3-9'union
select'4','004','2022-4-2'union
select'5','005','2022-5-3'union
select'6','006','2022-7-10'union
select'7','007','2022-12-25'union
select'8','008','2022-7-7'union
select'9','009','2022-8-9'union
select'10','010','2022-1-27'union
select'11','011','2023-2-4'union
select'12','012','2023-1-23'union
select'13','013','2023-2-24'union
select'14','014','2023-3-9'union
select'15','015','2023-2-9'union
select'16','016','2021-5-7'union
select'17','017','2021-12-30'union
select'18','018','2022-11-11'union
select'19','019','2022-8-9'union
select'20','020','2022-6-17'
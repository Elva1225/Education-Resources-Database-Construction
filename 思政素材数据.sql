select * from Directory

insert into Directory(DirectoryID,DirectoryName)
values('1000','���Ŵ�������')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'1001','1000','���ų�����'union
select'1002','1000','�㲥Ӱ����'
 --���һ�����ݲ���union
insert into Directory(DirectoryID,DirectoryName)
values('2000','װ���������')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'2001','2000','��е���������'union
select'2002','2000','�����豸��'union
select'2003','2000','�Զ�����'
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
values('2004','2000','����װ����')

insert into Directory(DirectoryID,DirectoryName)
values('3000','�ƾ���ó����')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'3001','3000','����˰����'union
select'3002','3000','������'union
select'3003','3000','��������'union
select'3004','3000','����ó����'union
select'3005','3000','����������'union
select'3006','3000','������'

insert into Directory(DirectoryID,DirectoryName)
values('4000','��������Ϣ����')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'4001','4000','������Ϣ��'union
select'4002','4000','�������'union
select'4003','4000','ͨ����'union
select'4004','4000','���ɵ�·��'

insert into Directory(DirectoryID,DirectoryName)
values('5000','����������������')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'5001','5000','������ҵ��'union
select'5002','5000','����������'union
select'5003','5000','����������'

insert into Directory(DirectoryID,DirectoryName)
values('6000','��������������')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'6001','6000','������'union
select'6002','6000','������'union
select'6003','6000','������'

insert into Directory(DirectoryID,DirectoryName)
values('7000','ũ���������')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'7001','7000','ũҵ��'union
select'7002','7000','��ҵ��'union
select'7003','7000','����ҵ��'union
select'7004','7000','��ҵ��'

insert into Directory(DirectoryID,DirectoryName)
values('8000','��Դ�����밲ȫ����')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'8001','8000','��Դ������'union
select'8002','8000','������'union
select'8003','8000','ʯ������Ȼ����'union
select'8004','8000','������ǽ�������'union
select'8005','8000','������'union
select'8006','8000','����������'union
select'8007','8000','��ȫ��'

insert into Directory(DirectoryID,DirectoryName)
values('9000','��ľ��������')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'9001','9000','���������'union
select'9002','9000','����滮�������'union
select'9003','9000','����ʩ����'union
select'9004','9000','�����豸��'union
select'9005','9000','����������'

insert into Directory(DirectoryID,DirectoryName)
values('10000','ˮ������')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'10001','10000','ˮ��ˮ��Դ��'union
select'10002','10000','ˮ�������������'union
select'10003','10000','ˮ��������ˮ������'

insert into Directory(DirectoryID,DirectoryName)
values('11000','�����뻯������')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'11001','11000','���＼����'union
select'11002','11000','����������'

insert into Directory(DirectoryID,DirectoryName)
values('12000','ʳƷҩƷ����ʳ����')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'12001','12000','ʳƷ��'union
select'12002','12000','ҩƷ��ҽ����е��'union
select'12003','12000','��ʳ��'

insert into Directory(DirectoryID,DirectoryName)
values('13000','��ͨ�������')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'13001','13000','����������'union
select'13002','13000','��·������'union
select'13003','13000','ˮ��������'union
select'13004','13000','����������'union
select'13005','13000','�ܵ�������'union
select'13006','13000','���й����ͨ��'

insert into Directory(DirectoryID,DirectoryName)
values('14000','ҽҩ��������')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'14001','14000','�ٴ�ҽѧ��'union
select'14002','14000','������'union
select'14003','14000','ҩѧ��'union
select'14004','14000','��ҽҩ��'union
select'14005','14000','ҽѧ������'union
select'14006','14000','��������������������'

insert into Directory(DirectoryID,DirectoryName)
values('15000','���δ���')
insert into Directory(DirectoryID,Dir_DirectoryID,DirectoryName)
select'15001','15000','������'union
select'15002','15000','������'


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
--������ͼƬ
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
values('1','��������������������','�Ƚ����� �������','��˼�ܣ��У����壬1973��11�³�����1991��8�²μӹ�����1997��6���뵳�����θ����㲥����̨�����ƿƳ��������µ�������һ�߲ɷ�19�꣬��һλ�����˵Ĳ����黳��������Ƭ���ص��顢�Ը������׵İ�������һ���龫�ʵľ�ͷ��һ���й��̵����֣����������������������ʱ�����������ڲ���ʹʧ��Ů֮ʱ��������һλ���׵Ĳ����黳����������Ů�����٣��������󰮵������˵�����֮�ơ�2008�����й����˰񡪡���ҵ���׺��ˡ�2015�걻���������衰ʱ����ģ���ƺţ�������ʡί����ȫʡ�����㹲����Ա����','����ѩ','������Ա��','���￬ģ','0')
insert into Material(MaterialID,Title,Keywords,Abstract,Author,Source,Category,Readingtimes)
select'2','���˼���������غ��������','���˼��������۵��뷽��','���˼����һֱ���ҹ���ʶ��̬��������壬�������ҹ��������Ľ�������ɢ����ǿ���������������ڻ��������ٷ�չ�ı�����ʹ���˼�����ܹ��������������������ʶ�ĵ�λ������Ҫ���ڡ�������+��ʱ�������£����˼��������Ż�����·��������������ƽ̨�������Ͻ���ҹ�ʵ�ʣ��Դ˻�����õķ�չ������','����','������','˼�뽨��','0'union
select'3','��������ʱ���ġ��������񡱣�׷���� ���ϴ���','��������','������������ٷ�չ�Ľ��죬������������Ȼ����ҵ��չ���ɻ�ȱ��֧�š�Ϊչʾ���������������ܻ������е����ã����������Ͼ���è����Ƽ����޹�˾���Ը���͵Ի�����λ���Ͼ������������˲ɷá�','��Ƚ','������','���￬ģ','0'union
select'4','����ǰ���������������λ����ָ���ʳ','������ʱ��','��5��10�ռ�����ʳ���¡�������������������������������ص�λ������������ص�ǰ���£��ԡ���ǰ�����Ϊץ�֣�ά����Ͻ�������û�������','����','�����','ʱ��Ҫ��','0'union
select'5','���ղ�ҵ԰�����۳��ɹ� Һѹװ����ҵѸ�ͷ�չ','��ҵ��չ','���������"Һѹ��֮��"֮��,��������Ŭ��,Һѹ����ҵ�𽥳�Ϊȫ����ɫ��ҵ�����Һѹװ���Ƽ���ҵ԰Ҳ��2011�걻ʡ�Ƽ�����Ϊʡ���Ƽ���ҵ԰','����ʡ�Ƽ��� ','������','��ҵ��չ','0'union
select'6','�վ����ձ�ĳ���˻��ţ�������ȷ桱�ɳ�ʤս����','���˻�','������������վ������Ż������ṹ���ӿ�������ս�������衣��Ϊ����ս�����Ĵ�������ŵ�����װ��Ҳӭ�����»�������һ����ǿս��������Ϊȫ�Źٱ���Ŀ�ꡣ','������','������','��ҵ��չ','0'

insert into Material(MaterialID,Title,Keywords,Author,Source,Category,Readingtimes)
select'7','������˰��־ٰ조����Ӧ������ˡ�ȫ��Ӧ���ƽ��','����˰��','������','������-�㶫Ƶ��','ʱ��Ҫ��','0'union
select'8','����ʮ�Ŵ󱨸��й��������ֵ�۵�ȷ���뽨���������','�������','����','����ʱ��','ʱ��Ҫ��','0'union
select'9','ɽ�����ʲ���Ʊ��ʵ�����ܻ����','���ܻ����','����ӱ','�й��ƾ���','��ҵ��չ','0'union
select'10','�й����������óɾͱ�������˼���������߼�','���˼��������','��־��','������','˼�뽨��','0'union
select'11','ϰ��ƽ�����£����̴��п�Ϊ','���̷�չ','�¿�','�����','��ҵ��չ','0'union
select'12','���������������ģ����й������� ���۴�������','��������','�ӽ�','�»���','���￬ģ','0'union
select'13','����5G���崫�������ǻ����ġ����ۡ�������ҵ��չ','������Ϣ�߿Ƽ�','�Ӳ�','������','��ҵ��չ','0'union
select'14','���û�����������ɫ�Ļ�','��ɫ�Ļ� ��ý��','��ٻ','������','��ҵ��չ','0'union
select'15','��B��ͨ�š������� ���ι���','ͨ�� ��ģ','��Խ','������','���￬ģ','0'union
select'16','����ɳ�أ������Ƴ�����������ů�˼��̻���','��������','������','������','ʱ��Ҫ��','0'union
select'17','�ߺ���߮�������������조�������Ρ����������㹫������ˮƽ���ۺ���������','��������','����','������','ʱ��Ҫ��','0'union
select'18','���������������Һ����������������ݿ�չ','���Ľ���','�','������','��ҵ��չ','0'union
select'19','Ӣ���ʦְҵ�ݽ���Ӧ�Բ��Գ�̽','ѧ�ƽ���','���ɺ�','������','��ҵ��չ','0'union
select'20','��90����ũ�˵���԰��ҵ��','ũҵ��ҵ','����','�»���','��ҵ��չ','0'

select * from MultimediaDocument

select * from Editor
insert into Editor(EditorID,EditorName,EditorUnit,EditorEmail)
select'001','�ż�Ω','������','1234567890@qq.com'union
select'002','������','������','1234567890@126.com'union
select'003','����¡','������','1234567890@qq.com'union
select'004','������','�»���','1234567890@qq.com'union
select'005','л����','������','1234567890@qq.com'union
select'006','������','������','1234567890@qq.com'union
select'007','������','������','1234567890@qq.com'union
select'008','������','�»���','1234567890@qq.com'union
select'009','����ӯ','�»���','1234567890@163.com'union
select'010','���λ�','�»���','1234567890@qq.com'union
select'011','�ƾ���','������','1234567890@qq.com'union
select'012','��С��','������','1234567890@qq.com'union
select'013','֣����','�»���','1234567890@qq.com'union
select'014','лһ��','������','1234567890@qq.com'union
select'015','����ï','������','1234567890@qq.com'union
select'016','������','�»���','1234567890@qq.com'union
select'017','�ƻ�ѧ','������','1234567890@qq.com'union
select'018','����ع','������','1234567890@qq.com'union
select'019','������','�»���','1234567890@qq.com'union
select'020','��ʥ��','������','1234567890@qq.com'

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
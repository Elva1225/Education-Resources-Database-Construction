select Readingtimes from Material
--����Update������˼����Դ�زĵĵ���Ķ�������
update Material set Readingtimes = 100 where MaterialID=1 
update Material set Readingtimes = Readingtimes+5
update Material set Readingtimes = 150 where MaterialID%2=0

--����Select���ʵ��˼����Դ�زĵĹؼ���ģ��������
select * from Material where Keywords like '%����%'

select * from Editor where EditorName like '��%'

--����Select���ʵ��˼����Դ�زĵķ���𰴵���Ķ���������ͳ�ƣ�
select Category ���,SUM(Readingtimes) ����Ķ�����
from Material
group by Category
order by ����Ķ����� DESC

--����Select���ʵ��˼����Դ�زĵķ�Ŀ¼������Ķ���������ͳ�ƣ�
select DirectoryName,SUM(Readingtimes) ����Ķ�����
from Material,Material_Classification,Directory
where Material_Classification.MaterialID=Material.MaterialID
AND Material_Classification.DirectoryID=Directory.DirectoryID
group by DirectoryName
order by ����Ķ����� DESC

--����Grant���Ϊһ���û�����Wang��Li��Zhang�ȣ����ɵġ�Teacher����ɫ
--����ѧ��Ŀ¼��˼���زġ��ɱ��ߡ���ý���ĵ���ʵ��ģʽ�����費ͬ����ɾ�Ĳ�Ȩ����ɣ�������Ȩ�޵���Ч�ԡ�
CREATE ROLE Teacher;
GRANT SELECT on Directory to Teacher; 
GRANT SELECT on Material to Teacher; 
GRANT SELECT on Editor to Teacher; 
GRANT SELECT on MultimediaDocument to Teacher; 
GRANT INSERT on Material to Teacher;
GRANT INSERT,UPDATE on MultimediaDocument to Teacher;
GRANT INSERT,UPDATE on Editor to Teacher;

Grant Teacher to Wang;
Grant Teacher to Li;
Grant Teacher to Zhang;

Revoke select from Teacher

exec xp_logininfo 'LAPTOP-55M6A9BK\Yian Zhu','ALL'
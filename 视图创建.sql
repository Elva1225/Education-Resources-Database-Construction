drop view MaterialView
--��������ͼ
CREATE VIEW MaterialView1
AS
SELECT DirectoryName,Material.MaterialID ,Title,Keywords,Abstract,Author,Source,Category,Readingtimes,FileType,FileContent
FROM Directory,Material,MultimediaDocument,Material_Classification
WHERE Material.MaterialID=MultimediaDocument.MaterialID
AND Material_Classification.MaterialID=Material.MaterialID
AND Material_Classification.DirectoryID=Directory.DirectoryID

select * from MaterialView1
CREATE VIEW MaterialView2
AS
SELECT DirectoryName,Material.MaterialID ,Title,Keywords,Abstract,Author,Source,Category,Readingtimes
FROM Directory,Material,Material_Classification
WHERE Material_Classification.MaterialID=Material.MaterialID
AND Material_Classification.DirectoryID=Directory.DirectoryID

select * from MaterialView2

CREATE VIEW MaterialView
AS
select MaterialView2.DirectoryName,MaterialView2.MaterialID,MaterialView2.Title,MaterialView2.Keywords,
MaterialView2.Abstract,MaterialView2.Author,MaterialView2.Source,MaterialView2.Category,MaterialView2.Readingtimes,
MaterialView1.FileType,MaterialView1.FileContent
from MaterialView1
right outer join MaterialView2
on MaterialView1.MaterialID=MaterialView2.MaterialID

select * from MaterialView

drop view MaterialView

--��һ����ͼ
CREATE VIEW DirectoryView
AS
SELECT Dir_DirectoryID,DirectoryID,DirectoryName
from Directory

select * from DirectoryView

CREATE VIEW EditView
AS
SELECT Material.MaterialID,Editor.EditorID,EditorName,EditTime,EditorUnit,EditorEmail
from Material,Edit,Editor
WHERE Material.MaterialID=Edit.MaterialID AND Editor.EditorID=Edit.EditorID

select * from EditView
-------��������
--����-��ʵ��ģʽ��
drop index MaterialIndex1 on Material
--MaterialIndex1&&MaterialIndex3��������
create index MaterialIndex1
on Material(Category,Keywords,Source)
--MaterialIndex2����Ҫ(2��3Ӧ����ʵ��ָ����Ҫ����Ǹ�)
create clustered index MaterialIndex1
on Material(MaterialID)

create index MaterialIndex2
on Material(Category)

select * from Material
select * from Material with(index=MaterialIndex3)
where Category='���￬ģ'and Keywords like'%ͨ��%' and Source='������'

select * from Material
where Category='���￬ģ' and Source='������'

--����2-����ͼ��
--֮ǰ������MaterialView��ͼ�ϲ��ܽ���������(��note
--���мܹ���
drop view MaterialView3

CREATE VIEW MaterialView3 WITH SCHEMABINDING
AS
SELECT Material.MaterialID,DirectoryName,Title,Keywords,Abstract,Author,Source,Category,Readingtimes
FROM dbo.Material,dbo.Directory,dbo.Material_Classification
WHERE dbo.Material.MaterialID=dbo.Material_Classification.MaterialID
AND dbo.Directory.DirectoryID=dbo.Material_Classification.DirectoryID

select * from MaterialView3

CREATE UNIQUE CLUSTERED INDEX index_Material
ON MaterialView3(DirectoryName,Keywords,Source,Category)

drop index index_Material on MaterialView3

select * from MaterialView3 
where DirectoryName='ͨ����' and Keywords like'%ͨ��%' and Source='������' and Category='���￬ģ'
select * from MaterialView3 with(index=index_Material)
where DirectoryName='ͨ����' and Keywords like'%ͨ��%' and Source='������' and Category='���￬ģ'


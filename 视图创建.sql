drop view MaterialView
--第三张视图
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

--第一张视图
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
-------创建索引
--索引-在实体模式上
drop index MaterialIndex1 on Material
--MaterialIndex1&&MaterialIndex3性能最优
create index MaterialIndex1
on Material(Category,Keywords,Source)
--MaterialIndex2最重要(2和3应该是实验指导书要求的那个)
create clustered index MaterialIndex1
on Material(MaterialID)

create index MaterialIndex2
on Material(Category)

select * from Material
select * from Material with(index=MaterialIndex3)
where Category='人物楷模'and Keywords like'%通信%' and Source='人民网'

select * from Material
where Category='人物楷模' and Source='人民网'

--索引2-在视图上
--之前创建的MaterialView视图上不能建立索引！(见note
--进行架构绑定
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
where DirectoryName='通信类' and Keywords like'%通信%' and Source='人民网' and Category='人物楷模'
select * from MaterialView3 with(index=index_Material)
where DirectoryName='通信类' and Keywords like'%通信%' and Source='人民网' and Category='人物楷模'


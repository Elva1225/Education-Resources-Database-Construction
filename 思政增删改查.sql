select Readingtimes from Material
--采用Update语句更新思政资源素材的点击阅读次数；
update Material set Readingtimes = 100 where MaterialID=1 
update Material set Readingtimes = Readingtimes+5
update Material set Readingtimes = 150 where MaterialID%2=0

--采用Select语句实现思政资源素材的关键词模糊检索；
select * from Material where Keywords like '%公共%'

select * from Editor where EditorName like '陈%'

--采用Select语句实现思政资源素材的分类别按点击阅读次数降序统计；
select Category 类别,SUM(Readingtimes) 点击阅读次数
from Material
group by Category
order by 点击阅读次数 DESC

--采用Select语句实现思政资源素材的分目录按点击阅读次数降序统计；
select DirectoryName,SUM(Readingtimes) 点击阅读次数
from Material,Material_Classification,Directory
where Material_Classification.MaterialID=Material.MaterialID
AND Material_Classification.DirectoryID=Directory.DirectoryID
group by DirectoryName
order by 点击阅读次数 DESC

--采用Grant语句为一组用户（如Wang、Li、Zhang等）构成的“Teacher”角色
--可在学科目录、思政素材、采编者、多媒体文档等实体模式上授予不同的增删改查权限许可，并测试权限的有效性。
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
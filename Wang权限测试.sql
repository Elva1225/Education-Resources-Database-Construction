select * from Directory;
select * from Material;
select * from Editor;
select * from MultimediaDocument;

insert into Material(MaterialID,Title,Keywords,Author,Source,Category,Readingtimes)
values('21','�����˼����','���˼����','Ҷ��','������','˼�뽨��','0')

DELETE FROM Material WHERE MaterialID='1'

UPDATE Editor SET EditorName='����'
WHERE EditorID='12'

UPDATE MultimediaDocument SET DocumentTitle='ϰ˼��'
WHERE DocumentID='1'

DELETE FROM Editor WHERE EditorID='1';
DELETE FROM MultimediaDocument WHERE DocumentID='1';
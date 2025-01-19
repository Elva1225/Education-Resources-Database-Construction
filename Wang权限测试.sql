select * from Directory;
select * from Material;
select * from Editor;
select * from MultimediaDocument;

insert into Material(MaterialID,Title,Keywords,Author,Source,Category,Readingtimes)
values('21','论马克思主义','马克思主义','叶冰','人民网','思想建设','0')

DELETE FROM Material WHERE MaterialID='1'

UPDATE Editor SET EditorName='怡安'
WHERE EditorID='12'

UPDATE MultimediaDocument SET DocumentTitle='习思想'
WHERE DocumentID='1'

DELETE FROM Editor WHERE EditorID='1';
DELETE FROM MultimediaDocument WHERE DocumentID='1';
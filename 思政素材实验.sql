/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     2023/4/22 11:32:04                           */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Directory') and o.name = 'FK_DIRECTOR_母学科_DIRECTOR')
alter table Directory
   drop constraint FK_DIRECTOR_母学科_DIRECTOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Edit') and o.name = 'FK_EDIT_EDIT_MATERIAL')
alter table Edit
   drop constraint FK_EDIT_EDIT_MATERIAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Edit') and o.name = 'FK_EDIT_EDIT2_EDITOR')
alter table Edit
   drop constraint FK_EDIT_EDIT2_EDITOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Material Classification"') and o.name = 'FK_MATERIAL_MATERIAL _MATERIAL')
alter table "Material Classification"
   drop constraint "FK_MATERIAL_MATERIAL _MATERIAL"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"Material Classification"') and o.name = 'FK_MATERIAL_MATERIAL _DIRECTOR')
alter table "Material Classification"
   drop constraint "FK_MATERIAL_MATERIAL _DIRECTOR"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MultimediaDocument') and o.name = 'FK_MULTIMED_属于_MATERIAL')
alter table MultimediaDocument
   drop constraint FK_MULTIMED_属于_MATERIAL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Directory')
            and   name  = '母学科_FK'
            and   indid > 0
            and   indid < 255)
   drop index Directory.母学科_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Directory')
            and   type = 'U')
   drop table Directory
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Edit')
            and   name  = 'Edit2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Edit.Edit2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Edit')
            and   name  = 'Edit_FK'
            and   indid > 0
            and   indid < 255)
   drop index Edit.Edit_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Edit')
            and   type = 'U')
   drop table Edit
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Editor')
            and   type = 'U')
   drop table Editor
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Material')
            and   type = 'U')
   drop table Material
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Material Classification"')
            and   name  = 'Material Classification2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Material Classification"."Material Classification2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Material Classification"')
            and   name  = 'Material Classification_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Material Classification"."Material Classification_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Material Classification"')
            and   type = 'U')
   drop table "Material Classification"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MultimediaDocument')
            and   name  = '属于_FK'
            and   indid > 0
            and   indid < 255)
   drop index MultimediaDocument.属于_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MultimediaDocument')
            and   type = 'U')
   drop table MultimediaDocument
go

/*==============================================================*/
/* Table: Directory                                             */
/*==============================================================*/
create table Directory (
   DirectoryID          int                  not null,
   Dir_DirectoryID      int                  null,
   DirectoryName        varchar(50)          not null,
   constraint PK_DIRECTORY primary key nonclustered (DirectoryID)
)
go

/*==============================================================*/
/* Index: 母学科_FK                                                */
/*==============================================================*/
create index 母学科_FK on Directory (
Dir_DirectoryID ASC
)
go

/*==============================================================*/
/* Table: Edit                                                  */
/*==============================================================*/
create table Edit (
   MaterialID           int                  not null,
   EditorID             int                  not null,
   EditTime             datetime             null,
   constraint PK_EDIT primary key (MaterialID, EditorID)
)
go

/*==============================================================*/
/* Index: Edit_FK                                               */
/*==============================================================*/
create index Edit_FK on Edit (
MaterialID ASC
)
go

/*==============================================================*/
/* Index: Edit2_FK                                              */
/*==============================================================*/
create index Edit2_FK on Edit (
EditorID ASC
)
go

/*==============================================================*/
/* Table: Editor                                                */
/*==============================================================*/
create table Editor (
   EditorID             int                  not null,
   EditorName           varchar(50)          not null,
   EditorUnit           varchar(100)         null,
   EditorEmail          varchar(50)          null,
   constraint PK_EDITOR primary key nonclustered (EditorID)
)
go

/*==============================================================*/
/* Table: Material                                              */
/*==============================================================*/
create table Material (
   MaterialID           int                  not null,
   Title                varchar(100)         not null,
   Keywords             varchar(200)         null,
   Abstract             varchar(500)         null,
   Author               varchar(50)          not null,
   Source               varchar(100)         null,
   Category             varchar(50)          not null,
   Readingtimes         int                  not null,
   constraint PK_MATERIAL primary key nonclustered (MaterialID)
)
go

/*==============================================================*/
/* Table: "Material Classification"                             */
/*==============================================================*/
create table "Material Classification" (
   MaterialID           int                  not null,
   DirectoryID          int                  not null,
   constraint "PK_MATERIAL CLASSIFICATION" primary key (MaterialID, DirectoryID)
)
go

/*==============================================================*/
/* Index: "Material Classification_FK"                          */
/*==============================================================*/
create index "Material Classification_FK" on "Material Classification" (
MaterialID ASC
)
go

/*==============================================================*/
/* Index: "Material Classification2_FK"                         */
/*==============================================================*/
create index "Material Classification2_FK" on "Material Classification" (
DirectoryID ASC
)
go

/*==============================================================*/
/* Table: MultimediaDocument                                    */
/*==============================================================*/
create table MultimediaDocument (
   MaterialID           int                  not null,
   DocumentID           int                  not null,
   DocumentTitle        varchar(30)          not null,
   FileType             varchar(20)          not null,
   FileContent          varbinary(MAX)       null,
   constraint PK_MULTIMEDIADOCUMENT primary key nonclustered (MaterialID, DocumentID)
)
go

/*==============================================================*/
/* Index: 属于_FK                                                 */
/*==============================================================*/
create index 属于_FK on MultimediaDocument (
MaterialID ASC
)
go

alter table Directory
   add constraint FK_DIRECTOR_母学科_DIRECTOR foreign key (Dir_DirectoryID)
      references Directory (DirectoryID)
go

alter table Edit
   add constraint FK_EDIT_EDIT_MATERIAL foreign key (MaterialID)
      references Material (MaterialID)
go

alter table Edit
   add constraint FK_EDIT_EDIT2_EDITOR foreign key (EditorID)
      references Editor (EditorID)
go

alter table "Material Classification"
   add constraint "FK_MATERIAL_MATERIAL _MATERIAL" foreign key (MaterialID)
      references Material (MaterialID)
go

alter table "Material Classification"
   add constraint "FK_MATERIAL_MATERIAL _DIRECTOR" foreign key (DirectoryID)
      references Directory (DirectoryID)
go

alter table MultimediaDocument
   add constraint FK_MULTIMED_属于_MATERIAL foreign key (MaterialID)
      references Material (MaterialID)
go


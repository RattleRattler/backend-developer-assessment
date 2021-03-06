USE [MusicStore]
GO
/****** Object:  Table [dbo].[Artist]    Script Date: 2017/02/07 07:04:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArtistGuid] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Aliases] [nvarchar](255) NOT NULL,
	[CountryListId] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Artist] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CountryList]    Script Date: 2017/02/07 07:04:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CountryList](
	[Id] [int] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[ShortCode] [varchar](20) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__CountryList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Artist]  WITH CHECK ADD  CONSTRAINT [FK_Artist_CountryList] FOREIGN KEY([CountryListId])
REFERENCES [dbo].[CountryList] ([Id])
GO
ALTER TABLE [dbo].[Artist] CHECK CONSTRAINT [FK_Artist_CountryList]
GO
/****** Object:  StoredProcedure [dbo].[_SetupData]    Script Date: 2017/02/07 07:04:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[_SetupData]
As
Begin
Set NoCount ON;

INSERT INTO [dbo].[CountryList]([Id],[Name],[ShortCode],[Deleted],[CreatedDate],[UpdatedDate])
Values(1,'United States of America','US',0,GetDate(),GetDate());
INSERT INTO [dbo].[CountryList]([Id],[Name],[ShortCode],[Deleted],[CreatedDate],[UpdatedDate])
Values(2,'Great Britain','GB',0,GetDate(),GetDate());


INSERT INTO [dbo].[Artist]([ArtistGuid],[Name],[Aliases],[CountryListId],[Deleted],[CreatedDate],[UpdatedDate])
Values('65f4f0c5-ef9e-490c-aee3-909e7ae6b2ab','Metallica',N'Metalica,메탈리카',1,0,GetDate(),GetDate());
INSERT INTO [dbo].[Artist]([ArtistGuid],[Name],[Aliases],[CountryListId],[Deleted],[CreatedDate],[UpdatedDate])
Values('650e7db6-b795-4eb5-a702-5ea2fc46c848','Lady Gaga','Lady Ga Ga,Stefani Joanne Angelina Germanotta',1,0,GetDate(),GetDate());
INSERT INTO [dbo].[Artist]([ArtistGuid],[Name],[Aliases],[CountryListId],[Deleted],[CreatedDate],[UpdatedDate])
Values('a9044915-8be3-4c7e-b11f-9e2d2ea0a91e','Megadeth','Megadeath',1,0,GetDate(),GetDate());
INSERT INTO [dbo].[Artist]([ArtistGuid],[Name],[Aliases],[CountryListId],[Deleted],[CreatedDate],[UpdatedDate])
Values('b625448e-bf4a-41c3-a421-72ad46cdb831','John Coltrane','John Coltraine,John William Coltrane',1,0,GetDate(),GetDate());
INSERT INTO [dbo].[Artist]([ArtistGuid],[Name],[Aliases],[CountryListId],[Deleted],[CreatedDate],[UpdatedDate])
Values('144ef525-85e9-40c3-8335-02c32d0861f3','John Mayer','',1,0,GetDate(),GetDate());
INSERT INTO [dbo].[Artist]([ArtistGuid],[Name],[Aliases],[CountryListId],[Deleted],[CreatedDate],[UpdatedDate])
Values('18fa2fd5-3ef2-4496-ba9f-6dae655b2a4f','Johnny Cash','Johhny Cash,Jonny Cash',1,0,GetDate(),GetDate());
INSERT INTO [dbo].[Artist]([ArtistGuid],[Name],[Aliases],[CountryListId],[Deleted],[CreatedDate],[UpdatedDate])
Values('6456a893-c1e9-4e3d-86f7-0008b0a3ac8a','Jack Johnson','Jack Hody Johnson',1,0,GetDate(),GetDate());
INSERT INTO [dbo].[Artist]([ArtistGuid],[Name],[Aliases],[CountryListId],[Deleted],[CreatedDate],[UpdatedDate])
Values('f1571db1-c672-4a54-a2cf-aaa329f26f0b','John Frusciante','John Anthony Frusciante',1,0,GetDate(),GetDate());
INSERT INTO [dbo].[Artist]([ArtistGuid],[Name],[Aliases],[CountryListId],[Deleted],[CreatedDate],[UpdatedDate])
Values('24f8d8a5-269b-475c-a1cb-792990b0b2ee','Rancid',N'ランシド',1,0,GetDate(),GetDate());
INSERT INTO [dbo].[Artist]([ArtistGuid],[Name],[Aliases],[CountryListId],[Deleted],[CreatedDate],[UpdatedDate])
Values('29f3e1bf-aec1-4d0a-9ef3-0cb95e8a3699','Transplants','The Transplants',1,0,GetDate(),GetDate());
INSERT INTO [dbo].[Artist]([ArtistGuid],[Name],[Aliases],[CountryListId],[Deleted],[CreatedDate],[UpdatedDate])
Values('931e1d1f-6b2f-4ff8-9f70-aa537210cd46','Operation Ivy','Op Ivy',1,0,GetDate(),GetDate());


INSERT INTO [dbo].[Artist]([ArtistGuid],[Name],[Aliases],[CountryListId],[Deleted],[CreatedDate],[UpdatedDate])
Values('c44e9c22-ef82-4a77-9bcd-af6c958446d6','Mumford & Sons','',2,0,GetDate(),GetDate());
INSERT INTO [dbo].[Artist]([ArtistGuid],[Name],[Aliases],[CountryListId],[Deleted],[CreatedDate],[UpdatedDate])
Values('435f1441-0f43-479d-92db-a506449a686b','Mott the Hoople','Mott The Hoppie,Mott The Hopple',2,0,GetDate(),GetDate());
INSERT INTO [dbo].[Artist]([ArtistGuid],[Name],[Aliases],[CountryListId],[Deleted],[CreatedDate],[UpdatedDate])
Values('d700b3f5-45af-4d02-95ed-57d301bda93e','Mogwai','Mogwa',2,0,GetDate(),GetDate());
INSERT INTO [dbo].[Artist]([ArtistGuid],[Name],[Aliases],[CountryListId],[Deleted],[CreatedDate],[UpdatedDate])
Values('b83bc61f-8451-4a5d-8b8e-7e9ed295e822','Elton John','E. John, Elthon John,Elton Jphn,John Elton, Reginald Kenneth Dwight',2,0,GetDate(),GetDate());


End

GO
/****** Object:  StoredProcedure [dbo].[SearchArtists]    Script Date: 2017/02/07 07:04:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[SearchArtists]
(
@search_criteria varchar(255),
@page_number int,
@page_size int
)
As
Begin
Set NoCount On;

Create Table #Table
(
Id int identity(1,1) primary Key,
ArtistGuid uniqueidentifier,
ArtistName varchar(255),
CountryCode varchar(255),
Aliases nvarchar(255),
SearchTotal int,
PagesTotal int
)

Insert Into #Table(ArtistGuid,ArtistName,CountryCode,Aliases,SearchTotal,PagesTotal)
Select art.ArtistGuid,art.Name,cnt.ShortCode,art.Aliases,0,0
From [dbo].[Artist] art(Nolock)
Inner Join [dbo].[CountryList] cnt(Nolock) on art.CountryListId = cnt.Id
Where art.Name like '%' + @search_criteria + '%'
Or art.Aliases like '%' + @search_criteria + '%'
And art.Deleted = 0
Order by art.Name;

Declare @SearchTotal float
Declare @Pages float

Set @SearchTotal = (Select Count(*) From #Table);
if(@SearchTotal = @page_size)
Begin
	Set @Pages = 1;
End
	Else 
		Begin
		Set @Pages = 1 + (@SearchTotal / @page_size)
		End

if(@Pages <= 0)
Begin
Set @Pages = 1
End

Update #Table
Set PagesTotal = @Pages,
SearchTotal = @SearchTotal;


Select ArtistGuid,ArtistName,CountryCode,Aliases,SearchTotal,PagesTotal
From #Table
Where Id between (((@page_number * @page_size) - @page_size) + 1) And (@page_number * @page_size)

End
GO

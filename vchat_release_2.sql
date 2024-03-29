USE [master]
GO
/****** Object:  Database [VChat]     ******/
CREATE DATABASE [VChat]
GO
USE [VChat]
GO

/****** Object:  Table [dbo].[Contact]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserCode] [varchar](32) NOT NULL,
	[ContactCode] [varchar](32) NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Group]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Group](
	[Code] [varchar](32) NOT NULL,
	[Type] [varchar](32) NOT NULL,
	[Avatar] [varchar](max) NULL,
	[Name] [nvarchar](250) NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [varchar](32) NOT NULL,
	[LastActive] [datetime] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
/****** Object:  Table [dbo].[GroupUser]    Script Date: 08/10/2021 12:41:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GroupUser](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GroupCode] [varchar](32) NOT NULL,
	[UserCode] [varchar](32) NOT NULL,
 CONSTRAINT [PK_GroupUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Message]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Message](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](10) NOT NULL,
	[GroupCode] [varchar](32) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Path] [nvarchar](255) NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [varchar](32) NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Code] [varchar](32) NOT NULL,
	[UserName] [varchar](32) NULL,
	[Password] [varchar](124) NULL,
	[FullName] [nvarchar](50) NULL,
	[Dob] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Address] [nvarchar](255) NULL,
	[Avatar] [varchar](max) NULL,
	[Gender] [nvarchar](10) NULL,
	[LastLogin] [datetime] NULL,
	[CurrentSession] [varchar](500) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([Id], [UserCode], [ContactCode], [Created]) VALUES (22, N'3e48f1ce9f015cc59bd7bf0605681f28', N'2b388cc0b9b6405c99c6b30b50c9d8ec', CAST(N'2021-07-26 22:39:42.567' AS DateTime))

SET IDENTITY_INSERT [dbo].[Contact] OFF
INSERT [dbo].[Group] ([Code], [Type], [Avatar], [Name], [Created], [CreatedBy], [LastActive]) VALUES (N'33c47cc785744d36a517d44c57d8b561', N'single', NULL, N'Ngô Xuân Dương', CAST(N'2021-08-10 00:17:03.477' AS DateTime), N'39c3575543284110a80372b59234d6f7', CAST(N'2021-08-10 00:35:31.940' AS DateTime))


SET IDENTITY_INSERT [dbo].[GroupUser] ON 

INSERT [dbo].[GroupUser] ([Id], [GroupCode], [UserCode]) VALUES (36, N'3fea5e8164b04bc1a3891bd7137d06d8', N'2b388cc0b9b6405c99c6b30b50c9d8ec')

SET IDENTITY_INSERT [dbo].[GroupUser] OFF
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([Id], [Type], [GroupCode], [Content], [Path], [Created], [CreatedBy]) VALUES (189, N'text', N'b759f5c421ce4a5f8ca08bf76627b233', N'Di chuyển nào anh em ơi!', NULL, CAST(N'2021-07-26 23:03:08.027' AS DateTime), N'3e48f1ce9f015cc59bd7bf0605681f28')

SET IDENTITY_INSERT [dbo].[Message] OFF
INSERT [dbo].[User] ([Code], [UserName], [Password], [FullName], [Dob], [Phone], [Email], [Address], [Avatar], [Gender], [LastLogin], [CurrentSession]) VALUES (N'18d2e99f599e4a70862cd299e8a96676', N'anhngoc.ngo', N'1a33b9a1d9a21935befbee288ef5df5b0f8e05bb213d5e34ea1c3087edeb1d15', N'Ngô Minh Ngọc Ánh', N'01/02/1998', N'0923.123.765', N'anhngoc@gmail.com', N'Thành phố Đà Nẵng, Việt Nam', N'Resource/Avatar/2f166915f5a0472da1a5674deff5fd04', N'Nữ', CAST(N'2021-07-26 23:10:23.953' AS DateTime), N'_nenWLoh683qAuwMulMqcQ')




ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_User] FOREIGN KEY([UserCode])
REFERENCES [dbo].[User] ([Code])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_User]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_User1] FOREIGN KEY([ContactCode])
REFERENCES [dbo].[User] ([Code])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_User1]
GO
ALTER TABLE [dbo].[GroupUser]  WITH CHECK ADD  CONSTRAINT [FK_GroupUser_Group] FOREIGN KEY([GroupCode])
REFERENCES [dbo].[Group] ([Code])
GO
ALTER TABLE [dbo].[GroupUser] CHECK CONSTRAINT [FK_GroupUser_Group]
GO
ALTER TABLE [dbo].[GroupUser]  WITH CHECK ADD  CONSTRAINT [FK_GroupUser_GroupUser] FOREIGN KEY([Id])
REFERENCES [dbo].[GroupUser] ([Id])
GO
ALTER TABLE [dbo].[GroupUser] CHECK CONSTRAINT [FK_GroupUser_GroupUser]
GO
ALTER TABLE [dbo].[GroupUser]  WITH CHECK ADD  CONSTRAINT [FK_GroupUser_User] FOREIGN KEY([UserCode])
REFERENCES [dbo].[User] ([Code])
GO
ALTER TABLE [dbo].[GroupUser] CHECK CONSTRAINT [FK_GroupUser_User]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Group] FOREIGN KEY([GroupCode])
REFERENCES [dbo].[Group] ([Code])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Group]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([Code])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_User]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'single: chat 1-1
multi: chat 1-n' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Group', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'single: chat 1-1
multi: chat 1-n' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'text
media
attachment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'Type'
GO
USE [master]
GO
ALTER DATABASE [VChat] SET  READ_WRITE 
GO

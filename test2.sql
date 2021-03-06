USE [master]
GO
/****** Object:  Database [bgroup4_test2]    Script Date: 19/08/2020 14:29:19 ******/
CREATE DATABASE [bgroup4_test2] ON  PRIMARY 
( NAME = N'bgroup4_test2', FILENAME = N'D:\Sql_Data\bgroup4_test2.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'bgroup4_test2_log', FILENAME = N'D:\Sql_Data\bgroup4_test2_log.LDF' , SIZE = 3520KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [bgroup4_test2] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bgroup4_test2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bgroup4_test2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bgroup4_test2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bgroup4_test2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bgroup4_test2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bgroup4_test2] SET ARITHABORT OFF 
GO
ALTER DATABASE [bgroup4_test2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bgroup4_test2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bgroup4_test2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bgroup4_test2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bgroup4_test2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bgroup4_test2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bgroup4_test2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bgroup4_test2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bgroup4_test2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bgroup4_test2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [bgroup4_test2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bgroup4_test2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bgroup4_test2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bgroup4_test2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bgroup4_test2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bgroup4_test2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bgroup4_test2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bgroup4_test2] SET RECOVERY FULL 
GO
ALTER DATABASE [bgroup4_test2] SET  MULTI_USER 
GO
ALTER DATABASE [bgroup4_test2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bgroup4_test2] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'bgroup4_test2', N'ON'
GO
USE [bgroup4_test2]
GO
/****** Object:  User [bgroup4_DBuser]    Script Date: 19/08/2020 14:29:20 ******/
CREATE USER [bgroup4_DBuser] FOR LOGIN [bgroup4] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [bgroup4_DBuser]
GO
/****** Object:  Table [dbo].[got2_2020]    Script Date: 19/08/2020 14:29:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[got2_2020](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[house] [nvarchar](30) NOT NULL,
	[image] [nvarchar](1000) NOT NULL,
	[isAlive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[got2_2020] ON 

INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (41, N'Addam Marbrand', N'none', N'https://d2lzb5v10mb0lj.cloudfront.net/covers/600/30/3004718.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (42, N'Aegon Targaryen', N'Targaryen', N'https://d2lzb5v10mb0lj.cloudfront.net/covers/600/30/3004718.jpg', 0)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (43, N'Aeron Greyjoy', N'Greyjoy', N'https://images-na.ssl-images-amazon.com/images/M/MV5BNzI5MDg0ZDAtN2Y2ZC00MzU1LTgyYjQtNTBjYjEzODczZDVhXkEyXkFqcGdeQXVyNTg0Nzg4NTE@._V1._SX100_SY140_.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (44, N'Aerys II Targaryen', N'Targaryen', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMWQzOWViN2ItNDZhOS00MmZlLTkxZTYtZDg5NGUwMGRmYWZjL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMjk3NTUyOTc@._V1._SX100_SY140_.jpg', 0)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (45, N'Akho', N'none', N'https://images-na.ssl-images-amazon.com/images/M/MV5BOGE4ZDZmOGUtNGE4Ny00Y2VmLThiOGItMjk3Y2U0ZDY3OWQxXkEyXkFqcGdeQXVyMjk3NTUyOTc@._V1._SX100_SY140_.jpg', 0)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (46, N'Alliser Thorne', N'none', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMjAxMjExMjA3M15BMl5BanBnXkFtZTcwMjI1ODg5NA@@._V1._SX100_SY140_.jpg', 0)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (47, N'Alton Lannister', N'Lannister', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMTU0NTU1NTAzOF5BMl5BanBnXkFtZTcwNzA2NDk4OA@@._V1._SX100_SY140_.jpg', 0)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (48, N'Alys Karstark', N'none', N'https://d2lzb5v10mb0lj.cloudfront.net/covers/600/30/3004718.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (49, N'Amory Lorch', N'none', N'https://images-na.ssl-images-amazon.com/images/M/MV5BOTVmY2M2YmUtY2JkYS00NjIyLWFhYTAtNTNlZmI4ODdiNmE5XkEyXkFqcGdeQXVyMjg2MTMyNTM@._V1._SX100_SY140_.jpg', 0)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (50, N'Anguy', N'none', N'https://images-na.ssl-images-amazon.com/images/M/MV5BNmRhY2M4YmItNjc2Yi00ZDc0LWE5NmUtNGE5OWE0YTQ2YjY3XkEyXkFqcGdeQXVyMjk3NTUyOTc@._V1._SX100_SY140_.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (51, N'Archmaester Marwyn', N'none', N'https://d2lzb5v10mb0lj.cloudfront.net/covers/600/30/3004718.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (52, N'Areo Hotah', N'none', N'https://images-na.ssl-images-amazon.com/images/M/MV5BNWFkNTAwNzctOGQ2ZS00OTMyLWE3NDYtOGUwM2E1MzVlYjI0XkEyXkFqcGdeQXVyMjk3NTUyOTc@._V1._SX100_SY140_.jpg', 0)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (53, N'Armeca', N'none', N'https://images-na.ssl-images-amazon.com/images/M/MV5BZmQyMGVlMDctYWFhMi00YzMyLTlkZDgtOWNmZTY3NmZkYzZlXkEyXkFqcGdeQXVyMjk3NTUyOTc@._V1._SX100_SY140_.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (54, N'Arthur', N'none', N'https://d2lzb5v10mb0lj.cloudfront.net/covers/600/30/3004718.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (55, N'Arthur Dayne', N'none', N'https://images-na.ssl-images-amazon.com/images/M/MV5BODczZDUxYmQtMzk1MC00ZTUwLTk1MjAtZDJlODViMWFhOGU5XkEyXkFqcGdeQXVyMjk3NTUyOTc@._V1._SX100_SY140_.jpg', 0)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (56, N'Arya Stark', N'Stark', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMTk5MTYwNDc0OF5BMl5BanBnXkFtZTcwOTg2NDg1Nw@@._V1._SX100_SY140_.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (57, N'Baby Sam', N'none', N'https://d2lzb5v10mb0lj.cloudfront.net/covers/600/30/3004718.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (58, N'Balon Greyjoy', N'Greyjoy', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUxNjkwODczN15BMl5BanBnXkFtZTcwODMwNTgzNw@@._V1._SX100_SY140_.jpg', 0)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (59, N'Baratheon Guard', N'Baratheon', N'https://d2lzb5v10mb0lj.cloudfront.net/covers/600/30/3004718.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (60, N'Barristan Selmy', N'none', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUyMTE0NjUxNV5BMl5BanBnXkFtZTcwOTA1ODg5NA@@._V1._SX100_SY140_.jpg', 0)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (61, N'Addam Marbrand', N'none', N'https://d2lzb5v10mb0lj.cloudfront.net/covers/600/30/3004718.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (62, N'Aegon Targaryen', N'Targaryen', N'https://d2lzb5v10mb0lj.cloudfront.net/covers/600/30/3004718.jpg', 0)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (63, N'Aeron Greyjoy', N'Greyjoy', N'https://images-na.ssl-images-amazon.com/images/M/MV5BNzI5MDg0ZDAtN2Y2ZC00MzU1LTgyYjQtNTBjYjEzODczZDVhXkEyXkFqcGdeQXVyNTg0Nzg4NTE@._V1._SX100_SY140_.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (64, N'Aerys II Targaryen', N'Targaryen', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMWQzOWViN2ItNDZhOS00MmZlLTkxZTYtZDg5NGUwMGRmYWZjL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMjk3NTUyOTc@._V1._SX100_SY140_.jpg', 0)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (65, N'Akho', N'none', N'https://images-na.ssl-images-amazon.com/images/M/MV5BOGE4ZDZmOGUtNGE4Ny00Y2VmLThiOGItMjk3Y2U0ZDY3OWQxXkEyXkFqcGdeQXVyMjk3NTUyOTc@._V1._SX100_SY140_.jpg', 0)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (66, N'Alliser Thorne', N'none', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMjAxMjExMjA3M15BMl5BanBnXkFtZTcwMjI1ODg5NA@@._V1._SX100_SY140_.jpg', 0)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (67, N'Alton Lannister', N'Lannister', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMTU0NTU1NTAzOF5BMl5BanBnXkFtZTcwNzA2NDk4OA@@._V1._SX100_SY140_.jpg', 0)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (68, N'Alys Karstark', N'none', N'https://d2lzb5v10mb0lj.cloudfront.net/covers/600/30/3004718.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (69, N'Amory Lorch', N'none', N'https://images-na.ssl-images-amazon.com/images/M/MV5BOTVmY2M2YmUtY2JkYS00NjIyLWFhYTAtNTNlZmI4ODdiNmE5XkEyXkFqcGdeQXVyMjg2MTMyNTM@._V1._SX100_SY140_.jpg', 0)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (70, N'Anguy', N'none', N'https://images-na.ssl-images-amazon.com/images/M/MV5BNmRhY2M4YmItNjc2Yi00ZDc0LWE5NmUtNGE5OWE0YTQ2YjY3XkEyXkFqcGdeQXVyMjk3NTUyOTc@._V1._SX100_SY140_.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (71, N'Archmaester Marwyn', N'none', N'https://d2lzb5v10mb0lj.cloudfront.net/covers/600/30/3004718.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (72, N'Areo Hotah', N'none', N'https://images-na.ssl-images-amazon.com/images/M/MV5BNWFkNTAwNzctOGQ2ZS00OTMyLWE3NDYtOGUwM2E1MzVlYjI0XkEyXkFqcGdeQXVyMjk3NTUyOTc@._V1._SX100_SY140_.jpg', 0)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (73, N'Armeca', N'none', N'https://images-na.ssl-images-amazon.com/images/M/MV5BZmQyMGVlMDctYWFhMi00YzMyLTlkZDgtOWNmZTY3NmZkYzZlXkEyXkFqcGdeQXVyMjk3NTUyOTc@._V1._SX100_SY140_.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (74, N'Arthur', N'none', N'https://d2lzb5v10mb0lj.cloudfront.net/covers/600/30/3004718.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (75, N'Arthur Dayne', N'none', N'https://images-na.ssl-images-amazon.com/images/M/MV5BODczZDUxYmQtMzk1MC00ZTUwLTk1MjAtZDJlODViMWFhOGU5XkEyXkFqcGdeQXVyMjk3NTUyOTc@._V1._SX100_SY140_.jpg', 0)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (76, N'Arya Stark', N'Stark', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMTk5MTYwNDc0OF5BMl5BanBnXkFtZTcwOTg2NDg1Nw@@._V1._SX100_SY140_.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (77, N'Baby Sam', N'none', N'https://d2lzb5v10mb0lj.cloudfront.net/covers/600/30/3004718.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (78, N'Balon Greyjoy', N'Greyjoy', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUxNjkwODczN15BMl5BanBnXkFtZTcwODMwNTgzNw@@._V1._SX100_SY140_.jpg', 0)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (79, N'Baratheon Guard', N'Baratheon', N'https://d2lzb5v10mb0lj.cloudfront.net/covers/600/30/3004718.jpg', 1)
INSERT [dbo].[got2_2020] ([id], [name], [house], [image], [isAlive]) VALUES (80, N'Barristan Selmy', N'none', N'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUyMTE0NjUxNV5BMl5BanBnXkFtZTcwOTA1ODg5NA@@._V1._SX100_SY140_.jpg', 0)
SET IDENTITY_INSERT [dbo].[got2_2020] OFF
USE [master]
GO
ALTER DATABASE [bgroup4_test2] SET  READ_WRITE 
GO

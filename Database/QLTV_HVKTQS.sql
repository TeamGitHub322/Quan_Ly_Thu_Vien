USE [master]
GO
/****** Object:  Database [QLTV_HVKTQS]    Script Date: 12/22/2020 8:24:01 PM ******/
CREATE DATABASE [QLTV_HVKTQS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLTV_HVKTQS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLTV_HVKTQS.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLTV_HVKTQS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLTV_HVKTQS_log.ldf' , SIZE = 2368KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLTV_HVKTQS] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLTV_HVKTQS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLTV_HVKTQS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLTV_HVKTQS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLTV_HVKTQS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLTV_HVKTQS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLTV_HVKTQS] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLTV_HVKTQS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLTV_HVKTQS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLTV_HVKTQS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLTV_HVKTQS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLTV_HVKTQS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLTV_HVKTQS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLTV_HVKTQS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLTV_HVKTQS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLTV_HVKTQS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLTV_HVKTQS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLTV_HVKTQS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLTV_HVKTQS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLTV_HVKTQS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLTV_HVKTQS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLTV_HVKTQS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLTV_HVKTQS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLTV_HVKTQS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLTV_HVKTQS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLTV_HVKTQS] SET  MULTI_USER 
GO
ALTER DATABASE [QLTV_HVKTQS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLTV_HVKTQS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLTV_HVKTQS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLTV_HVKTQS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLTV_HVKTQS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLTV_HVKTQS] SET QUERY_STORE = OFF
GO
USE [QLTV_HVKTQS]
GO
/****** Object:  Table [dbo].[BanDoc]    Script Date: 12/22/2020 8:24:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanDoc](
	[ID_BanDoc] [varchar](10) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GT] [nvarchar](3) NULL,
	[SDT] [bigint] NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_BD] PRIMARY KEY CLUSTERED 
(
	[ID_BanDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuMuon]    Script Date: 12/22/2020 8:24:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuMuon](
	[ID_PhieuMuon] [varchar](10) NOT NULL,
	[ID_GTCB] [varchar](10) NOT NULL,
 CONSTRAINT [PK_CTPM] PRIMARY KEY CLUSTERED 
(
	[ID_PhieuMuon] ASC,
	[ID_GTCB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 12/22/2020 8:24:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhap](
	[Username] [varchar](50) NULL,
	[Pass] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaTriCaBiet]    Script Date: 12/22/2020 8:24:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaTriCaBiet](
	[ID_Sach] [varchar](10) NOT NULL,
	[ID_GTCB] [varchar](10) NOT NULL,
 CONSTRAINT [PK_GTCB] PRIMARY KEY CLUSTERED 
(
	[ID_Sach] ASC,
	[ID_GTCB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NXB]    Script Date: 12/22/2020 8:24:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NXB](
	[ID_NXB] [varchar](10) NOT NULL,
	[TenNXB] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_NXB] PRIMARY KEY CLUSTERED 
(
	[ID_NXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuMuon]    Script Date: 12/22/2020 8:24:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuon](
	[ID_PhieuMuon] [varchar](10) NOT NULL,
	[ID_BanDoc] [varchar](10) NOT NULL,
	[NgayMuon] [date] NOT NULL,
	[NgayTra] [date] NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_PM] PRIMARY KEY CLUSTERED 
(
	[ID_PhieuMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 12/22/2020 8:24:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[ID_Sach] [varchar](10) NOT NULL,
	[TenSach] [nvarchar](50) NOT NULL,
	[TG] [nvarchar](50) NOT NULL,
	[ID_TheLoai] [varchar](10) NOT NULL,
	[ID_NXB] [varchar](10) NOT NULL,
	[NamXb] [bigint] NULL,
	[Gia] [bigint] NULL,
 CONSTRAINT [PK_S] PRIMARY KEY CLUSTERED 
(
	[ID_Sach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 12/22/2020 8:24:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[ID_TheLoai] [varchar](10) NOT NULL,
	[TenTL] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TL] PRIMARY KEY CLUSTERED 
(
	[ID_TheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BanDoc] ([ID_BanDoc], [Ten], [NgaySinh], [GT], [SDT], [DiaChi]) VALUES (N'BD001', N'Nguyễn Anh Dũng', CAST(N'1994-11-01' AS Date), N'Nam', 234, N'Hà Nội')
INSERT [dbo].[BanDoc] ([ID_BanDoc], [Ten], [NgaySinh], [GT], [SDT], [DiaChi]) VALUES (N'BD002', N'Nguyễn Anh Hùng', CAST(N'1988-11-01' AS Date), N'Nam', 345, N'Lạng Sơn')
INSERT [dbo].[BanDoc] ([ID_BanDoc], [Ten], [NgaySinh], [GT], [SDT], [DiaChi]) VALUES (N'BD003', N'Nguyễn Ngọc Đức', CAST(N'1979-11-01' AS Date), N'Nam', 456, N'Bắc Ninh')
INSERT [dbo].[BanDoc] ([ID_BanDoc], [Ten], [NgaySinh], [GT], [SDT], [DiaChi]) VALUES (N'BD004', N'Vương Thị Lê', CAST(N'1982-11-01' AS Date), N'Nữ', 678, N'Hà Nội')
INSERT [dbo].[BanDoc] ([ID_BanDoc], [Ten], [NgaySinh], [GT], [SDT], [DiaChi]) VALUES (N'BD005', N'Đặng Thị Linh', CAST(N'1990-11-01' AS Date), N'Nữ', 115, N'Nam Định')
INSERT [dbo].[BanDoc] ([ID_BanDoc], [Ten], [NgaySinh], [GT], [SDT], [DiaChi]) VALUES (N'BD006', N'Trần Mạnh Cường', CAST(N'1993-11-01' AS Date), N'Nam', 253, N'Hà Nội')
INSERT [dbo].[BanDoc] ([ID_BanDoc], [Ten], [NgaySinh], [GT], [SDT], [DiaChi]) VALUES (N'BD007', N'Lê Viết Đức', CAST(N'1995-11-01' AS Date), N'Nam', 997, N'Hà Tĩnh')
INSERT [dbo].[BanDoc] ([ID_BanDoc], [Ten], [NgaySinh], [GT], [SDT], [DiaChi]) VALUES (N'BD008', N'Trần Thị Tuyết Nhung', CAST(N'1987-11-01' AS Date), N'Nữ', 986, N'Hải Phòng')
INSERT [dbo].[BanDoc] ([ID_BanDoc], [Ten], [NgaySinh], [GT], [SDT], [DiaChi]) VALUES (N'BD009', N'Nguyễn Ngọc Anh', CAST(N'1989-11-01' AS Date), N'Nam', 989, N'Hà Nội')
INSERT [dbo].[BanDoc] ([ID_BanDoc], [Ten], [NgaySinh], [GT], [SDT], [DiaChi]) VALUES (N'BD010', N'Nguyễn Thanh Huyền', CAST(N'1997-11-01' AS Date), N'Nữ', 997, N'Hà Nội')
INSERT [dbo].[ChiTietPhieuMuon] ([ID_PhieuMuon], [ID_GTCB]) VALUES (N'MP001', N'GTCB011')
INSERT [dbo].[ChiTietPhieuMuon] ([ID_PhieuMuon], [ID_GTCB]) VALUES (N'MP002', N'GTCB021')
INSERT [dbo].[ChiTietPhieuMuon] ([ID_PhieuMuon], [ID_GTCB]) VALUES (N'MP002', N'GTCB022')
INSERT [dbo].[ChiTietPhieuMuon] ([ID_PhieuMuon], [ID_GTCB]) VALUES (N'MP003', N'GTCB025')
INSERT [dbo].[ChiTietPhieuMuon] ([ID_PhieuMuon], [ID_GTCB]) VALUES (N'MP003', N'GTCB032')
INSERT [dbo].[ChiTietPhieuMuon] ([ID_PhieuMuon], [ID_GTCB]) VALUES (N'MP003', N'GTCB041')
INSERT [dbo].[ChiTietPhieuMuon] ([ID_PhieuMuon], [ID_GTCB]) VALUES (N'MP004', N'GTCB013')
INSERT [dbo].[ChiTietPhieuMuon] ([ID_PhieuMuon], [ID_GTCB]) VALUES (N'MP004', N'GTCB042')
INSERT [dbo].[ChiTietPhieuMuon] ([ID_PhieuMuon], [ID_GTCB]) VALUES (N'MP004', N'GTCB051')
INSERT [dbo].[ChiTietPhieuMuon] ([ID_PhieuMuon], [ID_GTCB]) VALUES (N'MP005', N'GTCB023')
INSERT [dbo].[DangNhap] ([Username], [Pass]) VALUES (N'vkl', N'1234')
INSERT [dbo].[DangNhap] ([Username], [Pass]) VALUES (N'nhq', N'1234')
INSERT [dbo].[DangNhap] ([Username], [Pass]) VALUES (N'tvat', N'1234')
INSERT [dbo].[DangNhap] ([Username], [Pass]) VALUES (N'lcta', N'1234')
INSERT [dbo].[DangNhap] ([Username], [Pass]) VALUES (N'nqt', N'1234')
INSERT [dbo].[DangNhap] ([Username], [Pass]) VALUES (N'khh', N'1234')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S001', N'GTCB011')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S001', N'GTCB012')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S001', N'GTCB013')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S001', N'GTCB014')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S001', N'GTCB015')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S002', N'GTCB021')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S002', N'GTCB022')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S002', N'GTCB023')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S002', N'GTCB024')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S002', N'GTCB025')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S003', N'GTCB031')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S003', N'GTCB032')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S003', N'GTCB033')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S003', N'GTCB034')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S003', N'GTCB035')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S004', N'GTCB041')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S004', N'GTCB042')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S004', N'GTCB043')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S004', N'GTCB044')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S004', N'GTCB045')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S005', N'GTCB051')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S005', N'GTCB052')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S005', N'GTCB053')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S005', N'GTCB054')
INSERT [dbo].[GiaTriCaBiet] ([ID_Sach], [ID_GTCB]) VALUES (N'S005', N'GTCB055')
INSERT [dbo].[NXB] ([ID_NXB], [TenNXB], [DiaChi]) VALUES (N'NXB001', N'Nhà xuất bản Kim Đồng', N'10-Cầu Giấy-Hà Nội')
INSERT [dbo].[NXB] ([ID_NXB], [TenNXB], [DiaChi]) VALUES (N'NXB002', N'Nhà xuất bản Giáo Dục', N'20-Đào Trọng Tấn-Hà Nội')
INSERT [dbo].[NXB] ([ID_NXB], [TenNXB], [DiaChi]) VALUES (N'NXB003', N'Nhà xuất bản Quân Đội', N'15-Xuân Diệu-Ba Đình-Hà Nội')
INSERT [dbo].[NXB] ([ID_NXB], [TenNXB], [DiaChi]) VALUES (N'NXB004', N'Nhà xuất bản Sự Thật', N'24-Nguyễn Tri Phương-Cầu Giấy-Hà Nội')
INSERT [dbo].[NXB] ([ID_NXB], [TenNXB], [DiaChi]) VALUES (N'NXB005', N'Nhà xuất bản Khoa Học', N'50-Cầu Diễn-Từ Liêm-Hà Nội')
INSERT [dbo].[NXB] ([ID_NXB], [TenNXB], [DiaChi]) VALUES (N'NXB006', N'Nhà xuất bản ĐH Quốc Gia', N'23-Xuân Thuỷ-Cầu Giấy-Hà Nội')
INSERT [dbo].[NXB] ([ID_NXB], [TenNXB], [DiaChi]) VALUES (N'NXB007', N'Nhà xuất bản ĐH Luật', N'108-Nguyễn Chí Thanh-Ba Đình-Hà Nội')
INSERT [dbo].[NXB] ([ID_NXB], [TenNXB], [DiaChi]) VALUES (N'NXB008', N'Nhà xuất bản Chính Trị Quốc Gia', N'47-Hoàng Quốc Việt-Cầu Giấy-Hà Nội')
INSERT [dbo].[NXB] ([ID_NXB], [TenNXB], [DiaChi]) VALUES (N'NXB009', N'Nhà xuất bản Hồng Đức', N'35-Đào Duy Từ-tp.Thanh Hoá-Thanh Hoá')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [ID_BanDoc], [NgayMuon], [NgayTra], [GhiChu]) VALUES (N'MP001', N'BD001', CAST(N'2015-05-08' AS Date), CAST(N'2015-05-16' AS Date), N'Moi')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [ID_BanDoc], [NgayMuon], [NgayTra], [GhiChu]) VALUES (N'MP002', N'BD002', CAST(N'2015-03-12' AS Date), CAST(N'2015-09-27' AS Date), N'Moi')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [ID_BanDoc], [NgayMuon], [NgayTra], [GhiChu]) VALUES (N'MP003', N'BD003', CAST(N'2015-04-16' AS Date), CAST(N'2015-10-17' AS Date), N'Moi')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [ID_BanDoc], [NgayMuon], [NgayTra], [GhiChu]) VALUES (N'MP004', N'BD004', CAST(N'2014-11-12' AS Date), CAST(N'2015-12-12' AS Date), N'Moi')
INSERT [dbo].[PhieuMuon] ([ID_PhieuMuon], [ID_BanDoc], [NgayMuon], [NgayTra], [GhiChu]) VALUES (N'MP005', N'BD005', CAST(N'2015-03-18' AS Date), CAST(N'2015-01-27' AS Date), N'Moi')
INSERT [dbo].[Sach] ([ID_Sach], [TenSach], [TG], [ID_TheLoai], [ID_NXB], [NamXb], [Gia]) VALUES (N'S001', N'Ngôn ngữ Lập trình 1', N'TG001', N'TL001', N'NXB002', 2003, 20000)
INSERT [dbo].[Sach] ([ID_Sach], [TenSach], [TG], [ID_TheLoai], [ID_NXB], [NamXb], [Gia]) VALUES (N'S002', N'Ngôn ngữ Lập trình 2', N'TG002', N'TL001', N'NXB002', 2004, 25000)
INSERT [dbo].[Sach] ([ID_Sach], [TenSach], [TG], [ID_TheLoai], [ID_NXB], [NamXb], [Gia]) VALUES (N'S003', N'Kĩ thuật vi xử lí và lập trình Asembli', N'TG004', N'TL002', N'NXB003', 2005, 31000)
INSERT [dbo].[Sach] ([ID_Sach], [TenSach], [TG], [ID_TheLoai], [ID_NXB], [NamXb], [Gia]) VALUES (N'S004', N'Cấu trúc máy tính', N'TG003', N'TL002', N'NXB001', 2004, 22000)
INSERT [dbo].[Sach] ([ID_Sach], [TenSach], [TG], [ID_TheLoai], [ID_NXB], [NamXb], [Gia]) VALUES (N'S005', N'Phương Pháp nghiên cứu Khoa Học', N'TG005', N'TL004', N'NXB001', 2009, 35000)
INSERT [dbo].[TheLoai] ([ID_TheLoai], [TenTL]) VALUES (N'TL001', N'Truyện Tranh')
INSERT [dbo].[TheLoai] ([ID_TheLoai], [TenTL]) VALUES (N'TL002', N'Truyện Trinh Thám')
INSERT [dbo].[TheLoai] ([ID_TheLoai], [TenTL]) VALUES (N'TL003', N'Truyện Kiếm Hiệp')
INSERT [dbo].[TheLoai] ([ID_TheLoai], [TenTL]) VALUES (N'TL004', N'Tiểu Thuyết')
INSERT [dbo].[TheLoai] ([ID_TheLoai], [TenTL]) VALUES (N'TL005', N'Khoa Học Đời Sống')
INSERT [dbo].[TheLoai] ([ID_TheLoai], [TenTL]) VALUES (N'TL006', N'Khoa Học Viễn Tưởng')
INSERT [dbo].[TheLoai] ([ID_TheLoai], [TenTL]) VALUES (N'TL007', N'Sách Lịch Sử')
INSERT [dbo].[TheLoai] ([ID_TheLoai], [TenTL]) VALUES (N'TL008', N'Thể Thao Trong Nước')
INSERT [dbo].[TheLoai] ([ID_TheLoai], [TenTL]) VALUES (N'TL009', N'Thể Thao Nước Ngoài')
INSERT [dbo].[TheLoai] ([ID_TheLoai], [TenTL]) VALUES (N'TL010', N'Tin Thời Sự')
INSERT [dbo].[TheLoai] ([ID_TheLoai], [TenTL]) VALUES (N'TL011', N'Sách Giáo Khoa')
INSERT [dbo].[TheLoai] ([ID_TheLoai], [TenTL]) VALUES (N'TL012', N'Truyện Cổ Tích')
INSERT [dbo].[TheLoai] ([ID_TheLoai], [TenTL]) VALUES (N'TL013', N'Sách Pháp Luật')
INSERT [dbo].[TheLoai] ([ID_TheLoai], [TenTL]) VALUES (N'TL014', N'Hướng Dẫn Luật')
INSERT [dbo].[TheLoai] ([ID_TheLoai], [TenTL]) VALUES (N'TL015', N'Sách Kinh Tế Học')
INSERT [dbo].[TheLoai] ([ID_TheLoai], [TenTL]) VALUES (N'TL016', N'Thuyết Kinh Tế')
INSERT [dbo].[TheLoai] ([ID_TheLoai], [TenTL]) VALUES (N'TL017', N'Tâm Lí Tội Phạm')
/****** Object:  StoredProcedure [dbo].[AddObject]    Script Date: 12/22/2020 8:24:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Them vao bang
create proc [dbo].[AddObject]
(
	@core int,
	@ID1 varchar(10),
	@ID2 varchar(10),
	@ID3 varchar(10),
	@String1 nvarchar(50),
	@String2 nvarchar(50),
	@Date1 date,
	@Date2 date,
	@Gender varchar(3),
	@Num1 bigint,
	@Num2 bigint,
	@Num3 bigint
)
as
begin
	if @core=1
		insert into Sach
		values (@ID1,@String1,@String2,@ID2,@ID3,@Num1,@Num2)
	else if @core=2
		insert into GiaTriCaBiet
		values(@ID1,@ID2)
	else if @core=3
		insert into NXB
		values(@ID1,@String1,@String2)
	else if @core=4
		insert into TheLoai
		values(@ID1,@String1)
	else if @core=5
		insert into BanDoc
		values (@ID1,@String1,@Date1,@Gender,@Num1,@String2)
	else if @core=6
		insert into PhieuMuon
		values (@ID1,@ID2,@Date1,@Date2,@String1)
	else insert into ChiTietPhieuMuon
		values (@ID1,@ID2)
end
--Xoa trong bang
GO
/****** Object:  StoredProcedure [dbo].[DeleteObject]    Script Date: 12/22/2020 8:24:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteObject]
(
	@core int,
	@ID1 varchar(10),
	@ID2 varchar(10)
)
as
begin
	if @core=1
		delete from Sach where ID_Sach=@ID1
	else if @core=2
		delete from GiaTriCaBiet where ID_Sach=@ID1 and ID_GTCB=@ID2
	else if @core=3
		delete from NXB where ID_NXB=@ID1
	else if @core=4
		delete from TheLoai where ID_TheLoai =@ID1
	else if @core=5
		delete from BanDoc where ID_BanDoc=@ID1
	else if @core=6
		delete from PhieuMuon where ID_PhieuMuon=@ID1 and ID_BanDoc=@ID2
	else delete from ChiTietPhieuMuon where ID_PhieuMuon=@ID1 and ID_GTCB=@ID2
end
GO
/****** Object:  StoredProcedure [dbo].[EditObject]    Script Date: 12/22/2020 8:24:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Cap nhap
create proc [dbo].[EditObject]
(
	@core int,
	@ID1 varchar(10),
	@ID2 varchar(10),
	@ID3 varchar(10),
	@String1 nvarchar(50),
	@String2 nvarchar(50),
	@Date1 date,
	@Date2 date,
	@Gender varchar(3),
	@Num1 bigint,
	@Num2 bigint,
	@Num3 bigint
)
as
begin
	if @core=1
		update Sach set TenSach=@String1,TG=@String2,ID_TheLoai=@ID2,ID_NXB=@ID3,NamXb=@Num1,Gia=@Num2 where ID_Sach=@ID1
	else if @core=2
		update GiaTriCaBiet set ID_GTCB=@ID2 where ID_Sach=@ID1
	else if @core=3
		update NXB set TenNXB=@String1,DiaChi=@String2 where ID_NXB=@ID1
	else if @core=4
		update TheLoai set TenTL=@String1 where ID_TheLoai=@ID1
	else if @core=5
		update BanDoc set Ten=@String1,NgaySinh=@Date1,GT=@Gender,SDT=@Num1,DiaChi=@String2 where ID_BanDoc=@ID1
	else if @core=6
		update PhieuMuon set ID_BanDoc=@ID2,NgayMuon=@Date1,NgayTra=@Date2 where ID_PhieuMuon=@ID1
	else update ChiTietPhieuMuon set ID_GTCB=@ID2 where ID_PhieuMuon=@ID1
end
GO
/****** Object:  StoredProcedure [dbo].[FindObject]    Script Date: 12/22/2020 8:24:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--TimKiem
create proc [dbo].[FindObject]
(
	@core int,
	@Part nvarchar(50)
)
as
begin
	if @core=1
		select distinct *from Sach where ID_Sach like ('%'+@Part+'%') or TenSach like ('%'+@Part+'%') or TG like ('%'+@Part+'%') or NamXb like ('%'+@Part+'%') or Gia like ('%'+@Part+'%')
	else if @core=2
		select distinct*from GiaTriCaBiet where ID_Sach like ('%'+@Part+'%') or ID_GTCB like ('%'+@Part+'%')
	else if @core=3
		select distinct*from NXB where ID_NXB like ('%'+@Part+'%') or TenNXB like ('%'+@Part+'%')
	else if @core=4
		select distinct*from TheLoai where ID_TheLoai like ('%'+@Part+'%') or TenTL like ('%'+@Part+'%')
	else if @core=5 
		select distinct*from BanDoc where ID_BanDoc like ('%'+@Part+'%') or Ten like ('%'+@Part+'%') or NgaySinh like ('%'+@Part+'%') or GT like ('%'+@Part+'%') or DiaChi like ('%'+@Part+'%')
	else if @core=6
		select distinct*from PhieuMuon where ID_PhieuMuon like ('%'+@Part+'%') or NgayMuon like ('%'+@Part+'%') or NgayTra like ('%'+@Part+'%') or ID_BanDoc like ('%'+@Part+'%')
	else select distinct *from ChiTietPhieuMuon where ID_GTCB like ('%'+@Part+'%') or ID_PhieuMuon like ('%'+@Part+'%') 
end
GO
/****** Object:  StoredProcedure [dbo].[OutPutTable]    Script Date: 12/22/2020 8:24:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Xuat bang
create proc [dbo].[OutPutTable]
(
	@core int
)	
as
begin
	if @core=1
		select*from Sach
	else if @core=2
		select*from GiaTriCaBiet
	else if @core=3
		select*from NXB
	else if @core=4
		select*from TheLoai
	else if @core=5 
		select *from BanDoc
	else if @core=6
		select *from PhieuMuon
	else if @core=7
		select *from ChiTietPhieuMuon
	else select *from DangNhap
end
GO
USE [master]
GO
ALTER DATABASE [QLTV_HVKTQS] SET  READ_WRITE 
GO

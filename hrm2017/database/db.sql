/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.1601)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2008 R2
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [hrm]
GO
/****** Object:  Table [dbo].[login]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [varchar](32) NOT NULL,
	[pwd] [varchar](32) NOT NULL,
	[role] [int] NOT NULL,
	[note] [text] NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_bangluong]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_bangluong](
	[MABANGLUONG] [int] IDENTITY(1,1) NOT NULL,
	[NV] [int] NULL,
	[THANG] [date] NULL,
	[NAM] [date] NULL,
	[SOCONGNGAY] [int] NULL,
	[SOCONGDA] [int] NULL,
	[TAMUNG] [int] NULL,
	[PHUCAP] [int] NULL,
	[KHAUTRU] [int] NULL,
	[KHENTHUONG] [int] NULL,
	[KYLUAT] [int] NULL,
	[TONGLUONG] [float] NULL,
	[THUCLINH] [float] NULL,
	[NGAYLINH] [date] NULL,
	[GHICHU] [nvarchar](255) NULL,
 CONSTRAINT [PK_tbl_bangluong] PRIMARY KEY CLUSTERED 
(
	[MABANGLUONG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_chamcongduan]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_chamcongduan](
	[ID] [int] NOT NULL,
	[MANV] [int] NULL,
	[MADA] [int] NULL,
	[CHECKINDA] [datetime] NOT NULL,
	[CHECKOUTDA] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_chamcongduan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_chamcongngay]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_chamcongngay](
	[MANV] [int] NOT NULL,
	[NGAY] [date] NOT NULL,
 CONSTRAINT [PK_tbl_chamcongngay_1] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC,
	[NGAY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_chucvu]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_chucvu](
	[MACV] [int] IDENTITY(1,1) NOT NULL,
	[TENCV] [nvarchar](255) NULL,
 CONSTRAINT [PK_tbl_chucvu] PRIMARY KEY CLUSTERED 
(
	[MACV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_chuyencongtac]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_chuyencongtac](
	[MADC] [int] IDENTITY(1,1) NOT NULL,
	[MANV] [int] NULL,
	[NGAYCHUYEN] [date] NULL,
	[LYDO] [nvarchar](255) NULL,
	[MAPBMOI] [int] NULL,
	[MACVMOI] [int] NULL,
	[GHICHU] [nvarchar](255) NULL,
 CONSTRAINT [PK_tbl_chuyencongtac] PRIMARY KEY CLUSTERED 
(
	[MADC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_duan]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_duan](
	[MADA] [int] NOT NULL,
	[TENDA] [nvarchar](255) NULL,
	[GHICHU] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tbl_duan] PRIMARY KEY CLUSTERED 
(
	[MADA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_duannhanvien]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_duannhanvien](
	[DUANMADA] [int] NOT NULL,
	[NHANVIENMANV] [int] NOT NULL,
	[SOGIO] [int] NULL,
 CONSTRAINT [PK_tbl_duannhanvien] PRIMARY KEY CLUSTERED 
(
	[DUANMADA] ASC,
	[NHANVIENMANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_hopdong]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_hopdong](
	[MAHD] [int] IDENTITY(1,1) NOT NULL,
	[TENHD] [nvarchar](50) NULL,
	[MAUNGVIEN] [int] NULL,
	[LUONGCOBAN] [float] NULL,
	[NGAYKY] [date] NULL,
	[NGAYHETHAN] [date] NULL,
	[LOAIHOPDONG] [int] NULL,
	[THOATHUANKHAC] [nvarchar](100) NULL,
	[GHICHU] [nvarchar](255) NULL,
	[TRANGTHAI] [int] NULL,
 CONSTRAINT [PK_tbl_hopdong] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_khautru]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_khautru](
	[MAKT] [int] IDENTITY(1,1) NOT NULL,
	[TENKT] [nvarchar](50) NULL,
	[KHAUTRU] [float] NULL,
 CONSTRAINT [PK_tbl_khautru] PRIMARY KEY CLUSTERED 
(
	[MAKT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_khenthuong]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_khenthuong](
	[MAKHENTHUONG] [int] IDENTITY(1,1) NOT NULL,
	[TENKHENTHUONG] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_khenthuong] PRIMARY KEY CLUSTERED 
(
	[MAKHENTHUONG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_khenthuongnhanvien]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_khenthuongnhanvien](
	[KHENTHUONGMAKT] [int] NOT NULL,
	[NHANVIENMANV] [int] NOT NULL,
	[NGAYKHENTHUONG] [date] NULL,
	[SOTIEN] [float] NULL,
	[DANHAN] [bit] NULL,
 CONSTRAINT [PK_tbl_khenthuongnhanvien] PRIMARY KEY CLUSTERED 
(
	[KHENTHUONGMAKT] ASC,
	[NHANVIENMANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_kyluat]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_kyluat](
	[MAKYLUAT] [int] NOT NULL,
	[TENKYLUAT] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_kyluat] PRIMARY KEY CLUSTERED 
(
	[MAKYLUAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_kyluatnhanvien]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_kyluatnhanvien](
	[KYLUATMAKL] [int] NOT NULL,
	[NHANVIEN] [int] NOT NULL,
	[NGAYKYLUAT] [date] NULL,
	[SOTIEN] [float] NULL,
	[DANHAN] [bit] NULL,
 CONSTRAINT [PK_tbl_kyluatnhanvien] PRIMARY KEY CLUSTERED 
(
	[KYLUATMAKL] ASC,
	[NHANVIEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_loaihopdong]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_loaihopdong](
	[MALOAIHD] [int] IDENTITY(1,1) NOT NULL,
	[TENLOAIHD] [nvarchar](50) NULL,
	[THOIHAN] [date] NULL,
 CONSTRAINT [PK_tbl_loaihopdong] PRIMARY KEY CLUSTERED 
(
	[MALOAIHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_loainghi]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_loainghi](
	[MALOAINGHI] [int] IDENTITY(1,1) NOT NULL,
	[LOAINGHI] [nvarchar](255) NULL,
	[PHUCAP] [float] NULL,
 CONSTRAINT [PK_tbl_loainghi] PRIMARY KEY CLUSTERED 
(
	[MALOAINGHI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ngaynghi]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ngaynghi](
	[NGAYNGHI] [date] NOT NULL,
	[LOAINGHI] [int] NULL,
	[GHICHU] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tbl_ngaynghi] PRIMARY KEY CLUSTERED 
(
	[NGAYNGHI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_nhanvien]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_nhanvien](
	[MANV] [int] IDENTITY(1,1) NOT NULL,
	[HOTEN] [nvarchar](50) NULL,
	[GIOITINH] [bit] NULL,
	[NGAYSINH] [date] NULL,
	[NOISINH] [nvarchar](255) NULL,
	[DIACHI] [nvarchar](255) NULL,
	[QUEQUAN] [nvarchar](255) NULL,
	[SODIENTHOAI] [numeric](18, 0) NULL,
	[DANTOC] [nvarchar](25) NULL,
	[TONGIAO] [nvarchar](25) NULL,
	[SOCMT] [numeric](18, 0) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[CHUCVU] [int] NULL,
	[PHONGBAN] [int] NULL,
	[GHICHU] [nvarchar](255) NULL,
	[ACTIVE] [bit] NULL,
	[TRINHDOHV] [int] NULL,
	[TRINHDONN] [int] NULL,
 CONSTRAINT [PK_TBL_NH] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_phongban]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_phongban](
	[MAPB] [int] IDENTITY(1,1) NOT NULL,
	[TENPB] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_phongban] PRIMARY KEY CLUSTERED 
(
	[MAPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_phucap]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_phucap](
	[MAPC] [int] IDENTITY(1,1) NOT NULL,
	[TENPC] [nvarchar](50) NULL,
	[SOTIEN] [float] NULL,
 CONSTRAINT [PK_tbl_phucap] PRIMARY KEY CLUSTERED 
(
	[MAPC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_phucapchucvu]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_phucapchucvu](
	[PHUCAPMAPC] [int] NOT NULL,
	[CHUCVUMACV] [int] NOT NULL,
	[KHOANPHUCAP] [float] NULL,
 CONSTRAINT [PK_tbl_phucapchucvu] PRIMARY KEY CLUSTERED 
(
	[PHUCAPMAPC] ASC,
	[CHUCVUMACV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_tamung]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_tamung](
	[MATU] [int] NOT NULL,
	[MANV] [int] NULL,
	[SOTIEN] [float] NULL,
	[NGAYTU] [date] NULL,
 CONSTRAINT [PK_tbl_tamung] PRIMARY KEY CLUSTERED 
(
	[MATU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_tintuyendung]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_tintuyendung](
	[MATIN] [int] NOT NULL,
	[TENTIN] [nvarchar](30) NULL,
	[NOIDUNG] [nvarchar](255) NULL,
	[NGAYDANG] [date] NULL,
	[NGAYHETHAN] [date] NULL,
	[NGUOIDANG] [int] NULL,
	[CHUCVU] [int] NULL,
	[PHONGBAN] [int] NULL,
	[SOLUONGTUYEN] [int] NULL,
	[YEUCAUTRINHDO] [nvarchar](50) NOT NULL,
	[MUCLUONG] [float] NULL,
	[MOTA] [nvarchar](255) NOT NULL,
	[GHICHU] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tbl_tintuyendung] PRIMARY KEY CLUSTERED 
(
	[MATIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_trangthai]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_trangthai](
	[MATRANGTHAI] [int] IDENTITY(1,1) NOT NULL,
	[TENTRANGTHAI] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_trangthai] PRIMARY KEY CLUSTERED 
(
	[MATRANGTHAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_trinhdohocvan]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_trinhdohocvan](
	[MATD] [int] NOT NULL,
	[TENTRINHDO] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_trinhdohocvan] PRIMARY KEY CLUSTERED 
(
	[MATD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_trinhdongoaingu]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_trinhdongoaingu](
	[MATRNN] [int] IDENTITY(1,1) NOT NULL,
	[TENTRINHDONN] [nvarchar](50) NULL,
	[CAPTRINHDO] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_trinhdongoaingu] PRIMARY KEY CLUSTERED 
(
	[MATRNN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_xinnghi]    Script Date: 11/2/2017 11:22:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_xinnghi](
	[MADON] [int] IDENTITY(1,1) NOT NULL,
	[MANV] [int] NULL,
	[NGAYNGHI] [int] NULL,
	[LOAINGHI] [int] NULL,
 CONSTRAINT [PK_tbl_xinnghi] PRIMARY KEY CLUSTERED 
(
	[MADON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[login] ON 

INSERT [dbo].[login] ([id], [login], [pwd], [role], [note]) VALUES (1, N'admin', N'1', 0, NULL)
INSERT [dbo].[login] ([id], [login], [pwd], [role], [note]) VALUES (3, N'user', N'1', 2, NULL)
INSERT [dbo].[login] ([id], [login], [pwd], [role], [note]) VALUES (5, N'manager', N'1', 1, NULL)
SET IDENTITY_INSERT [dbo].[login] OFF
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2016-01-01' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2016-01-09' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2016-01-10' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2016-01-11' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2016-01-12' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2016-01-14' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-01-01' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-01' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-02' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-03' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-04' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-05' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-06' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-07' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-08' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-09' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-10' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-11' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-12' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-13' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-14' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-15' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-16' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-17' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-19' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-20' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-21' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-22' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-23' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-24' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-25' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-26' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-27' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-28' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-29' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-30' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (7, CAST(N'2017-10-31' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2016-01-02' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2016-01-03' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2016-01-04' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2016-01-05' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2016-01-12' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2016-01-14' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2017-10-01' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2017-10-02' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2017-10-03' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2017-10-04' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2017-10-05' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2017-10-06' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2017-10-07' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2017-10-08' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2017-10-09' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2017-10-10' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2017-10-11' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2017-10-12' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2017-10-13' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2017-10-14' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2017-10-15' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2017-10-16' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1007, CAST(N'2017-10-17' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1008, CAST(N'2016-01-05' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1008, CAST(N'2016-01-06' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1008, CAST(N'2016-01-07' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1008, CAST(N'2016-01-08' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1008, CAST(N'2016-01-09' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1008, CAST(N'2016-01-10' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1008, CAST(N'2016-01-11' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1008, CAST(N'2017-10-01' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1008, CAST(N'2017-10-02' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1008, CAST(N'2017-10-03' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1008, CAST(N'2017-10-04' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1008, CAST(N'2017-10-05' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1008, CAST(N'2017-10-06' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1008, CAST(N'2017-10-07' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1008, CAST(N'2017-10-08' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1008, CAST(N'2017-10-10' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1009, CAST(N'2016-01-01' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1009, CAST(N'2016-01-02' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1009, CAST(N'2016-01-03' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1009, CAST(N'2016-01-04' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1009, CAST(N'2016-01-05' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1009, CAST(N'2016-01-06' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1010, CAST(N'2017-10-01' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1010, CAST(N'2017-10-02' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1010, CAST(N'2017-10-03' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1010, CAST(N'2017-10-04' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1010, CAST(N'2017-10-05' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1010, CAST(N'2017-10-06' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1010, CAST(N'2017-10-07' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1011, CAST(N'2017-10-01' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1011, CAST(N'2017-10-02' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1011, CAST(N'2017-10-03' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1011, CAST(N'2017-10-04' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1011, CAST(N'2017-10-05' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1011, CAST(N'2017-10-06' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1011, CAST(N'2017-10-07' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1011, CAST(N'2017-10-08' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1011, CAST(N'2017-10-09' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1012, CAST(N'2017-10-01' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1012, CAST(N'2017-10-09' AS Date))
GO
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1012, CAST(N'2017-10-10' AS Date))
INSERT [dbo].[tbl_chamcongngay] ([MANV], [NGAY]) VALUES (1013, CAST(N'2017-10-11' AS Date))
SET IDENTITY_INSERT [dbo].[tbl_chucvu] ON 

INSERT [dbo].[tbl_chucvu] ([MACV], [TENCV]) VALUES (1, N'Giám đốc')
INSERT [dbo].[tbl_chucvu] ([MACV], [TENCV]) VALUES (2, N'Trưởng phòng')
INSERT [dbo].[tbl_chucvu] ([MACV], [TENCV]) VALUES (3, N'Phó phòng')
INSERT [dbo].[tbl_chucvu] ([MACV], [TENCV]) VALUES (4, N'Nhân viên')
INSERT [dbo].[tbl_chucvu] ([MACV], [TENCV]) VALUES (5, N'Phó giám đốc')
SET IDENTITY_INSERT [dbo].[tbl_chucvu] OFF
SET IDENTITY_INSERT [dbo].[tbl_hopdong] ON 

INSERT [dbo].[tbl_hopdong] ([MAHD], [TENHD], [MAUNGVIEN], [LUONGCOBAN], [NGAYKY], [NGAYHETHAN], [LOAIHOPDONG], [THOATHUANKHAC], [GHICHU], [TRANGTHAI]) VALUES (1, N'Hợp đồng lao động', 7, 3000000, CAST(N'1993-12-01' AS Date), CAST(N'1900-01-01' AS Date), 1, N'Chăm chỉ đi làm', N'Không', 4)
INSERT [dbo].[tbl_hopdong] ([MAHD], [TENHD], [MAUNGVIEN], [LUONGCOBAN], [NGAYKY], [NGAYHETHAN], [LOAIHOPDONG], [THOATHUANKHAC], [GHICHU], [TRANGTHAI]) VALUES (2, N'Hợp đồng dự án', 7, 4000000, CAST(N'1999-12-01' AS Date), CAST(N'1900-01-01' AS Date), 1, N'Chăm chỉ đi làm', N'Không', 3)
SET IDENTITY_INSERT [dbo].[tbl_hopdong] OFF
SET IDENTITY_INSERT [dbo].[tbl_khenthuong] ON 

INSERT [dbo].[tbl_khenthuong] ([MAKHENTHUONG], [TENKHENTHUONG]) VALUES (2, N'Thưởng lương dự án')
SET IDENTITY_INSERT [dbo].[tbl_khenthuong] OFF
INSERT [dbo].[tbl_khenthuongnhanvien] ([KHENTHUONGMAKT], [NHANVIENMANV], [NGAYKHENTHUONG], [SOTIEN], [DANHAN]) VALUES (2, 7, CAST(N'2017-10-10' AS Date), 300000, 1)
INSERT [dbo].[tbl_kyluat] ([MAKYLUAT], [TENKYLUAT]) VALUES (1, N'Phạt đi muộn')
INSERT [dbo].[tbl_kyluatnhanvien] ([KYLUATMAKL], [NHANVIEN], [NGAYKYLUAT], [SOTIEN], [DANHAN]) VALUES (1, 7, CAST(N'1900-01-01' AS Date), 300000, 0)
SET IDENTITY_INSERT [dbo].[tbl_loaihopdong] ON 

INSERT [dbo].[tbl_loaihopdong] ([MALOAIHD], [TENLOAIHD], [THOIHAN]) VALUES (1, N'Hợp đồng thời hạn (6 tháng)', NULL)
INSERT [dbo].[tbl_loaihopdong] ([MALOAIHD], [TENLOAIHD], [THOIHAN]) VALUES (2, N'Hợp đồng không thời hạn', NULL)
SET IDENTITY_INSERT [dbo].[tbl_loaihopdong] OFF
SET IDENTITY_INSERT [dbo].[tbl_nhanvien] ON 

INSERT [dbo].[tbl_nhanvien] ([MANV], [HOTEN], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [QUEQUAN], [SODIENTHOAI], [DANTOC], [TONGIAO], [SOCMT], [EMAIL], [CHUCVU], [PHONGBAN], [GHICHU], [ACTIVE], [TRINHDOHV], [TRINHDONN]) VALUES (7, N'Dương Tiến Hiệu', 1, CAST(N'2017-12-30' AS Date), N'Hà Nội', N'Hà Nội', N'Hà Nội', CAST(993223231 AS Numeric(18, 0)), N'Kinh', N'Không', CAST(12345678 AS Numeric(18, 0)), N'duongnguyen1216@gmail.com', 2, 1, N'Không', 1, NULL, NULL)
INSERT [dbo].[tbl_nhanvien] ([MANV], [HOTEN], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [QUEQUAN], [SODIENTHOAI], [DANTOC], [TONGIAO], [SOCMT], [EMAIL], [CHUCVU], [PHONGBAN], [GHICHU], [ACTIVE], [TRINHDOHV], [TRINHDONN]) VALUES (1007, N'Ph?m anh chi?n', 0, CAST(N'2017-10-10' AS Date), N'hà n?i', N'hà noi', N'ha noi', CAST(1234566 AS Numeric(18, 0)), N'Gié - Triêng', N'kinh', CAST(11111111 AS Numeric(18, 0)), N'nam', 1, 1, N'', 1, NULL, NULL)
INSERT [dbo].[tbl_nhanvien] ([MANV], [HOTEN], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [QUEQUAN], [SODIENTHOAI], [DANTOC], [TONGIAO], [SOCMT], [EMAIL], [CHUCVU], [PHONGBAN], [GHICHU], [ACTIVE], [TRINHDOHV], [TRINHDONN]) VALUES (1008, N'gggg', 1, CAST(N'2017-10-19' AS Date), N'gggggg', N'ggg', N'gg', CAST(11111111 AS Numeric(18, 0)), N'Hà Nhì', N'dfdfdffd', CAST(11111111 AS Numeric(18, 0)), N'ggfgfgfg', 1, 1, N'êrererer', 1, NULL, NULL)
INSERT [dbo].[tbl_nhanvien] ([MANV], [HOTEN], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [QUEQUAN], [SODIENTHOAI], [DANTOC], [TONGIAO], [SOCMT], [EMAIL], [CHUCVU], [PHONGBAN], [GHICHU], [ACTIVE], [TRINHDOHV], [TRINHDONN]) VALUES (1009, N'Duong Tien Hieu', 1, CAST(N'2017-10-20' AS Date), N'hà n?i', N'Hanoi', N'Hanoi', CAST(1234566 AS Numeric(18, 0)), N'Chu ru', N'kinh', CAST(11111111 AS Numeric(18, 0)), N'duongnguyen1216@gmail.com', 1, 1, N'êrererer', 1, NULL, NULL)
INSERT [dbo].[tbl_nhanvien] ([MANV], [HOTEN], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [QUEQUAN], [SODIENTHOAI], [DANTOC], [TONGIAO], [SOCMT], [EMAIL], [CHUCVU], [PHONGBAN], [GHICHU], [ACTIVE], [TRINHDOHV], [TRINHDONN]) VALUES (1010, N'Duong Tien Hieu', 1, CAST(N'2017-10-19' AS Date), N'hà n?i', N'Hanoi', N'Hanoi', CAST(1234566 AS Numeric(18, 0)), N'Gié - Triêng', N'kinh', CAST(11111111 AS Numeric(18, 0)), N'duongnguyen1216@gmail.com', 4, 2, N'êrererer', 1, NULL, NULL)
INSERT [dbo].[tbl_nhanvien] ([MANV], [HOTEN], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [QUEQUAN], [SODIENTHOAI], [DANTOC], [TONGIAO], [SOCMT], [EMAIL], [CHUCVU], [PHONGBAN], [GHICHU], [ACTIVE], [TRINHDOHV], [TRINHDONN]) VALUES (1011, N'dUOW hIỆU', 0, CAST(N'2017-10-13' AS Date), N'hà nội', N'Hanoi', N'Hanoi', CAST(1234566 AS Numeric(18, 0)), N'Ba Na', N'Hanoi', CAST(11111111 AS Numeric(18, 0)), N'duongnguyen1216@gmail.com', 3, 2, N'êrererer', 1, NULL, NULL)
INSERT [dbo].[tbl_nhanvien] ([MANV], [HOTEN], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [QUEQUAN], [SODIENTHOAI], [DANTOC], [TONGIAO], [SOCMT], [EMAIL], [CHUCVU], [PHONGBAN], [GHICHU], [ACTIVE], [TRINHDOHV], [TRINHDONN]) VALUES (1012, N'Dương Văn Bình', 1, CAST(N'2017-10-13' AS Date), N'hà nội', N'Hanoi', N'Hanoi', CAST(1234566 AS Numeric(18, 0)), N'Ba Na', N'Hanoi', CAST(11111111 AS Numeric(18, 0)), N'duongnguyen1216@gmail.com', 3, 2, N'êrererer', 1, NULL, NULL)
INSERT [dbo].[tbl_nhanvien] ([MANV], [HOTEN], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [QUEQUAN], [SODIENTHOAI], [DANTOC], [TONGIAO], [SOCMT], [EMAIL], [CHUCVU], [PHONGBAN], [GHICHU], [ACTIVE], [TRINHDOHV], [TRINHDONN]) VALUES (1013, N'dUOW hIỆU', 0, CAST(N'2017-10-13' AS Date), N'hà nội', N'Hanoi', N'Hanoi', CAST(1234566 AS Numeric(18, 0)), N'Ba Na', N'Hanoi', CAST(11111111 AS Numeric(18, 0)), N'duongnguyen1216@gmail.com', 3, 2, N'êrererer', 1, NULL, NULL)
INSERT [dbo].[tbl_nhanvien] ([MANV], [HOTEN], [GIOITINH], [NGAYSINH], [NOISINH], [DIACHI], [QUEQUAN], [SODIENTHOAI], [DANTOC], [TONGIAO], [SOCMT], [EMAIL], [CHUCVU], [PHONGBAN], [GHICHU], [ACTIVE], [TRINHDOHV], [TRINHDONN]) VALUES (1014, N'dUOW hIỆU', 0, CAST(N'2017-10-13' AS Date), N'hà nội', N'Hanoi', N'Hanoi', CAST(1234566 AS Numeric(18, 0)), N'Ba Na', N'Hanoi', CAST(11111111 AS Numeric(18, 0)), N'duongnguyen1216@gmail.com', 3, 2, N'êrererer', 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_nhanvien] OFF
SET IDENTITY_INSERT [dbo].[tbl_phongban] ON 

INSERT [dbo].[tbl_phongban] ([MAPB], [TENPB]) VALUES (1, N'Kế toán')
INSERT [dbo].[tbl_phongban] ([MAPB], [TENPB]) VALUES (2, N'Nhân sự nội bộ')
INSERT [dbo].[tbl_phongban] ([MAPB], [TENPB]) VALUES (3, N'Hành chính')
SET IDENTITY_INSERT [dbo].[tbl_phongban] OFF
SET IDENTITY_INSERT [dbo].[tbl_trangthai] ON 

INSERT [dbo].[tbl_trangthai] ([MATRANGTHAI], [TENTRANGTHAI]) VALUES (1, N'Còn thời hạn')
INSERT [dbo].[tbl_trangthai] ([MATRANGTHAI], [TENTRANGTHAI]) VALUES (2, N'Hết hạn')
INSERT [dbo].[tbl_trangthai] ([MATRANGTHAI], [TENTRANGTHAI]) VALUES (3, N'Sắp hết hạn')
INSERT [dbo].[tbl_trangthai] ([MATRANGTHAI], [TENTRANGTHAI]) VALUES (4, N'Tạm ngưng')
SET IDENTITY_INSERT [dbo].[tbl_trangthai] OFF
INSERT [dbo].[tbl_trinhdohocvan] ([MATD], [TENTRINHDO]) VALUES (1, N'Đại học')
INSERT [dbo].[tbl_trinhdohocvan] ([MATD], [TENTRINHDO]) VALUES (2, N'Giáo sư')
INSERT [dbo].[tbl_trinhdohocvan] ([MATD], [TENTRINHDO]) VALUES (3, N'Tiến sĩ')
SET IDENTITY_INSERT [dbo].[tbl_trinhdongoaingu] ON 

INSERT [dbo].[tbl_trinhdongoaingu] ([MATRNN], [TENTRINHDONN], [CAPTRINHDO]) VALUES (1, N'Tiếng Anh', NULL)
INSERT [dbo].[tbl_trinhdongoaingu] ([MATRNN], [TENTRINHDONN], [CAPTRINHDO]) VALUES (2, N'Tiếng Trung', NULL)
INSERT [dbo].[tbl_trinhdongoaingu] ([MATRNN], [TENTRINHDONN], [CAPTRINHDO]) VALUES (3, N'Tiếng Hàn', NULL)
SET IDENTITY_INSERT [dbo].[tbl_trinhdongoaingu] OFF
ALTER TABLE [dbo].[tbl_bangluong]  WITH CHECK ADD  CONSTRAINT [FK_tbl_bangluong_tbl_khautru] FOREIGN KEY([KHAUTRU])
REFERENCES [dbo].[tbl_khautru] ([MAKT])
GO
ALTER TABLE [dbo].[tbl_bangluong] CHECK CONSTRAINT [FK_tbl_bangluong_tbl_khautru]
GO
ALTER TABLE [dbo].[tbl_bangluong]  WITH CHECK ADD  CONSTRAINT [FK_tbl_bangluong_tbl_nhanvien] FOREIGN KEY([NV])
REFERENCES [dbo].[tbl_nhanvien] ([MANV])
GO
ALTER TABLE [dbo].[tbl_bangluong] CHECK CONSTRAINT [FK_tbl_bangluong_tbl_nhanvien]
GO
ALTER TABLE [dbo].[tbl_chamcongduan]  WITH CHECK ADD  CONSTRAINT [FK_tbl_chamcongduan_tbl_duan] FOREIGN KEY([MADA])
REFERENCES [dbo].[tbl_duan] ([MADA])
GO
ALTER TABLE [dbo].[tbl_chamcongduan] CHECK CONSTRAINT [FK_tbl_chamcongduan_tbl_duan]
GO
ALTER TABLE [dbo].[tbl_chamcongduan]  WITH CHECK ADD  CONSTRAINT [FK_tbl_chamcongduan_tbl_nhanvien] FOREIGN KEY([MANV])
REFERENCES [dbo].[tbl_nhanvien] ([MANV])
GO
ALTER TABLE [dbo].[tbl_chamcongduan] CHECK CONSTRAINT [FK_tbl_chamcongduan_tbl_nhanvien]
GO
ALTER TABLE [dbo].[tbl_chamcongngay]  WITH CHECK ADD  CONSTRAINT [FK_tbl_chamcongngay_tbl_nhanvien] FOREIGN KEY([MANV])
REFERENCES [dbo].[tbl_nhanvien] ([MANV])
GO
ALTER TABLE [dbo].[tbl_chamcongngay] CHECK CONSTRAINT [FK_tbl_chamcongngay_tbl_nhanvien]
GO
ALTER TABLE [dbo].[tbl_chuyencongtac]  WITH CHECK ADD  CONSTRAINT [FK_tbl_chuyencongtac_tbl_chucvu] FOREIGN KEY([MACVMOI])
REFERENCES [dbo].[tbl_chucvu] ([MACV])
GO
ALTER TABLE [dbo].[tbl_chuyencongtac] CHECK CONSTRAINT [FK_tbl_chuyencongtac_tbl_chucvu]
GO
ALTER TABLE [dbo].[tbl_chuyencongtac]  WITH CHECK ADD  CONSTRAINT [FK_tbl_chuyencongtac_tbl_phongban] FOREIGN KEY([MAPBMOI])
REFERENCES [dbo].[tbl_phongban] ([MAPB])
GO
ALTER TABLE [dbo].[tbl_chuyencongtac] CHECK CONSTRAINT [FK_tbl_chuyencongtac_tbl_phongban]
GO
ALTER TABLE [dbo].[tbl_duannhanvien]  WITH CHECK ADD  CONSTRAINT [FK_tbl_duannhanvien_tbl_duan] FOREIGN KEY([DUANMADA])
REFERENCES [dbo].[tbl_duan] ([MADA])
GO
ALTER TABLE [dbo].[tbl_duannhanvien] CHECK CONSTRAINT [FK_tbl_duannhanvien_tbl_duan]
GO
ALTER TABLE [dbo].[tbl_duannhanvien]  WITH CHECK ADD  CONSTRAINT [FK_tbl_duannhanvien_tbl_nhanvien] FOREIGN KEY([NHANVIENMANV])
REFERENCES [dbo].[tbl_nhanvien] ([MANV])
GO
ALTER TABLE [dbo].[tbl_duannhanvien] CHECK CONSTRAINT [FK_tbl_duannhanvien_tbl_nhanvien]
GO
ALTER TABLE [dbo].[tbl_hopdong]  WITH CHECK ADD  CONSTRAINT [FK_tbl_hopdong_tbl_loaihopdong] FOREIGN KEY([LOAIHOPDONG])
REFERENCES [dbo].[tbl_loaihopdong] ([MALOAIHD])
GO
ALTER TABLE [dbo].[tbl_hopdong] CHECK CONSTRAINT [FK_tbl_hopdong_tbl_loaihopdong]
GO
ALTER TABLE [dbo].[tbl_hopdong]  WITH CHECK ADD  CONSTRAINT [FK_tbl_hopdong_tbl_nhanvien] FOREIGN KEY([MAUNGVIEN])
REFERENCES [dbo].[tbl_nhanvien] ([MANV])
GO
ALTER TABLE [dbo].[tbl_hopdong] CHECK CONSTRAINT [FK_tbl_hopdong_tbl_nhanvien]
GO
ALTER TABLE [dbo].[tbl_hopdong]  WITH CHECK ADD  CONSTRAINT [FK_tbl_hopdong_tbl_trangthai] FOREIGN KEY([TRANGTHAI])
REFERENCES [dbo].[tbl_trangthai] ([MATRANGTHAI])
GO
ALTER TABLE [dbo].[tbl_hopdong] CHECK CONSTRAINT [FK_tbl_hopdong_tbl_trangthai]
GO
ALTER TABLE [dbo].[tbl_khenthuongnhanvien]  WITH CHECK ADD  CONSTRAINT [FK_tbl_khenthuongnhanvien_tbl_khenthuong] FOREIGN KEY([KHENTHUONGMAKT])
REFERENCES [dbo].[tbl_khenthuong] ([MAKHENTHUONG])
GO
ALTER TABLE [dbo].[tbl_khenthuongnhanvien] CHECK CONSTRAINT [FK_tbl_khenthuongnhanvien_tbl_khenthuong]
GO
ALTER TABLE [dbo].[tbl_khenthuongnhanvien]  WITH CHECK ADD  CONSTRAINT [FK_tbl_khenthuongnhanvien_tbl_nhanvien] FOREIGN KEY([NHANVIENMANV])
REFERENCES [dbo].[tbl_nhanvien] ([MANV])
GO
ALTER TABLE [dbo].[tbl_khenthuongnhanvien] CHECK CONSTRAINT [FK_tbl_khenthuongnhanvien_tbl_nhanvien]
GO
ALTER TABLE [dbo].[tbl_kyluatnhanvien]  WITH CHECK ADD  CONSTRAINT [FK_tbl_kyluatnhanvien_tbl_kyluat] FOREIGN KEY([KYLUATMAKL])
REFERENCES [dbo].[tbl_kyluat] ([MAKYLUAT])
GO
ALTER TABLE [dbo].[tbl_kyluatnhanvien] CHECK CONSTRAINT [FK_tbl_kyluatnhanvien_tbl_kyluat]
GO
ALTER TABLE [dbo].[tbl_kyluatnhanvien]  WITH CHECK ADD  CONSTRAINT [FK_tbl_kyluatnhanvien_tbl_nhanvien] FOREIGN KEY([NHANVIEN])
REFERENCES [dbo].[tbl_nhanvien] ([MANV])
GO
ALTER TABLE [dbo].[tbl_kyluatnhanvien] CHECK CONSTRAINT [FK_tbl_kyluatnhanvien_tbl_nhanvien]
GO
ALTER TABLE [dbo].[tbl_ngaynghi]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ngaynghi_tbl_loainghi] FOREIGN KEY([LOAINGHI])
REFERENCES [dbo].[tbl_loainghi] ([MALOAINGHI])
GO
ALTER TABLE [dbo].[tbl_ngaynghi] CHECK CONSTRAINT [FK_tbl_ngaynghi_tbl_loainghi]
GO
ALTER TABLE [dbo].[tbl_nhanvien]  WITH CHECK ADD  CONSTRAINT [FK_tbl_nhanvien_tbl_chucvu] FOREIGN KEY([CHUCVU])
REFERENCES [dbo].[tbl_chucvu] ([MACV])
GO
ALTER TABLE [dbo].[tbl_nhanvien] CHECK CONSTRAINT [FK_tbl_nhanvien_tbl_chucvu]
GO
ALTER TABLE [dbo].[tbl_nhanvien]  WITH CHECK ADD  CONSTRAINT [FK_tbl_nhanvien_tbl_phongban] FOREIGN KEY([PHONGBAN])
REFERENCES [dbo].[tbl_phongban] ([MAPB])
GO
ALTER TABLE [dbo].[tbl_nhanvien] CHECK CONSTRAINT [FK_tbl_nhanvien_tbl_phongban]
GO
ALTER TABLE [dbo].[tbl_nhanvien]  WITH CHECK ADD  CONSTRAINT [FK_tbl_nhanvien_tbl_trinhdohocvan] FOREIGN KEY([TRINHDOHV])
REFERENCES [dbo].[tbl_trinhdohocvan] ([MATD])
GO
ALTER TABLE [dbo].[tbl_nhanvien] CHECK CONSTRAINT [FK_tbl_nhanvien_tbl_trinhdohocvan]
GO
ALTER TABLE [dbo].[tbl_nhanvien]  WITH CHECK ADD  CONSTRAINT [FK_tbl_nhanvien_tbl_trinhdongoaingu] FOREIGN KEY([TRINHDONN])
REFERENCES [dbo].[tbl_trinhdongoaingu] ([MATRNN])
GO
ALTER TABLE [dbo].[tbl_nhanvien] CHECK CONSTRAINT [FK_tbl_nhanvien_tbl_trinhdongoaingu]
GO
ALTER TABLE [dbo].[tbl_phucapchucvu]  WITH CHECK ADD  CONSTRAINT [FK_tbl_phucapchucvu_tbl_chucvu] FOREIGN KEY([CHUCVUMACV])
REFERENCES [dbo].[tbl_chucvu] ([MACV])
GO
ALTER TABLE [dbo].[tbl_phucapchucvu] CHECK CONSTRAINT [FK_tbl_phucapchucvu_tbl_chucvu]
GO
ALTER TABLE [dbo].[tbl_phucapchucvu]  WITH CHECK ADD  CONSTRAINT [FK_tbl_phucapchucvu_tbl_phucap] FOREIGN KEY([PHUCAPMAPC])
REFERENCES [dbo].[tbl_phucap] ([MAPC])
GO
ALTER TABLE [dbo].[tbl_phucapchucvu] CHECK CONSTRAINT [FK_tbl_phucapchucvu_tbl_phucap]
GO
ALTER TABLE [dbo].[tbl_tamung]  WITH CHECK ADD  CONSTRAINT [FK_tbl_tamung_tbl_nhanvien] FOREIGN KEY([MANV])
REFERENCES [dbo].[tbl_nhanvien] ([MANV])
GO
ALTER TABLE [dbo].[tbl_tamung] CHECK CONSTRAINT [FK_tbl_tamung_tbl_nhanvien]
GO
ALTER TABLE [dbo].[tbl_tintuyendung]  WITH CHECK ADD  CONSTRAINT [FK_tbl_tintuyendung_tbl_nhanvien] FOREIGN KEY([NGUOIDANG])
REFERENCES [dbo].[tbl_nhanvien] ([MANV])
GO
ALTER TABLE [dbo].[tbl_tintuyendung] CHECK CONSTRAINT [FK_tbl_tintuyendung_tbl_nhanvien]
GO
ALTER TABLE [dbo].[tbl_xinnghi]  WITH CHECK ADD  CONSTRAINT [FK_tbl_xinnghi_tbl_loainghi] FOREIGN KEY([LOAINGHI])
REFERENCES [dbo].[tbl_loainghi] ([MALOAINGHI])
GO
ALTER TABLE [dbo].[tbl_xinnghi] CHECK CONSTRAINT [FK_tbl_xinnghi_tbl_loainghi]
GO
ALTER TABLE [dbo].[tbl_xinnghi]  WITH CHECK ADD  CONSTRAINT [FK_tbl_xinnghi_tbl_nhanvien] FOREIGN KEY([MANV])
REFERENCES [dbo].[tbl_nhanvien] ([MANV])
GO
ALTER TABLE [dbo].[tbl_xinnghi] CHECK CONSTRAINT [FK_tbl_xinnghi_tbl_nhanvien]
GO

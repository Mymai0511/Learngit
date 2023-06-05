USE [master]
GO
/****** Object:  Database [FlowerShop]    Script Date: 27/09/2022 9:30:31 CH ******/
CREATE DATABASE [GlassesShop]
GO
USE [GlassesShop]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 27/09/2022 9:30:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 27/09/2022 9:30:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[order_date] [date] NULL,
	[total] [float] NULL,
	[notes] [nvarchar](200) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 27/09/2022 9:30:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[detail_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 27/09/2022 9:30:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](50) NULL,
	[price] [float] NULL,
	[stock] [int] NULL,
	[category_id] [int] NULL,
	[img] [ntext] NULL,
	[description] [nvarchar](1000) NULL,
	[create_date] [date] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 27/09/2022 9:30:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 27/09/2022 9:30:31 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[address] [nvarchar](50) NULL,
	[gender] [bit] NULL,
	[phone] [nchar](11) NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (1, N'Kinh mat')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (2, N'Kinh ram')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (3, N'KinH Gentle Monster')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (4, N'Kinh Kuboraum')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (5, N'Hoa Can')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (10, 1, CAST(N'2022-10-05' AS Date), 20, N'')
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [total], [notes]) VALUES (11, 3, CAST(N'2022-10-13' AS Date), 17.5, N'quick')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (1, 1, 2, 20, 6)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (2, 1, 3, 20, 5)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (3, 1, 5, 20, 4)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (4, 1, 7, 20, 9)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (5, 1, 8, 20, 2)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (6, 2, 15, 20, 1)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (7, 2, 10, 20, 1)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (8, 2, 11, 20, 5)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (9, 3, 6, 20, 4)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (10, 3, 7, 20, 5)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (11, 4, 8, 20, 2)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (12, 4, 15, 20, 3)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (13, 5, 13, 20, 1)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (14, 5, 12, 20, 5)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (15, 6, 11, 20, 6)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (16, 6, 10, 20, 5)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (17, 7, 16, 20, 2)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (18, 7, 5, 20, 1)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (19, 8, 16, 2.5, 1)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (20, 8, 12, 4.5, 1)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (21, 8, 28, 4.5, 1)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (22, 9, 28, 4.5, 2)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (23, 10, 25, 3, 5)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (24, 10, 16, 2.5, 2)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (25, 11, 26, 9, 1)
INSERT [dbo].[OrderDetail] ([detail_id], [order_id], [product_id], [price], [quantity]) VALUES (26, 11, 27, 8.5, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (1, N'KM 9456', 9, 100, 5, N'https://assets.lenscrafters.com/is/image/LensCrafters/713132838167__002.png?impolicy=LC_grey&width=1024', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (2, N'KR 9648', 3.5, 100, 1, N'https://image.voso.vn/users/vosoimage/images/c779ede95342997c6b7f11c593911b28?t%5B0%5D=compress%3Alevel%3D100&accessToken=79d663086832a03fcc5c6a0c6f0943177587cc6b9b9eb1dfc9e493bf016f6380', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (3, N'KR 9668', 4, 100, 1, N'https://salt.tikicdn.com/ts/product/d1/f1/58/c81e5942f4974b4746d04a2536501f15.jpg', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (4, N'KR 9601', 4.5, 100, 1, N'https://salt.tikicdn.com/ts/product/d2/1f/fc/3a4349c032f78988ff356dbac7110595.jpg', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (5, N'KR 9605', 2.5, 100, 1, N'https://salt.tikicdn.com/ts/product/e5/11/2d/228770dcb71383a30d73805156ee6d0d.jpg', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (6, N'KR 9615', 4, 100, 1, N'https://salt.tikicdn.com/ts/tmp/a9/e0/17/8d4e4b1597d0ca870202d071bc42a265.jpg', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (7, N'KR 9068', 3, 100, 1, N'https://kavi.vn/upload/image/kinh-ram-kv070(1).jpg', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (8, N'KGM 9025', 4, 100, 2, N'https://cf.shopee.vn/file/bedac4454ace2d7d5514ec766efe3074', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (9, N'KGM 9925', 5.5, 100, 2, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYxC5tOuP6RCFMdqozmGiT4DQjKG9c3C2OJBjM6trUKhsdrmkr8nRI9s3tYrkshmEo8No&usqp=CAU', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (10, N'KGM 9125', 4, 100, 2, N'https://product.hstatic.net/200000068224/product/z3705567834116_ff32d7af63be925d0c1324e1e28a4b9d_ad0f462209e4414ea685999483ee8506_master.jpg', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (11, N'KGM 9225', 6.5, 100, 2, N'https://cdn.vuahanghieu.com/unsafe/500x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/10/kinh-mat-can-gentle-monster-glasses-jeff-kc1-mau-vang-6358ddad7761e-26102022141141.jpg', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (12, N'KGM 9325', 7, 100, 2, N'https://ae01.alicdn.com/kf/H134dd4d0db484fa18c7ab74ddde60122y/Reven-Jate-58030-Alloy-Rimless-Diamond-Cutting-Man-Glasses-Frame-Optical-Prescription-Eyeglasses-Men-Eyewear-Fashion.jpg_Q90.jpg_.webp', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (13, N'KGM 9425', 8.5, 100, 2, N'https://glassyzone.vn/wp-content/uploads/2022/07/72029-C3-2.jpg', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (14, N'KKU 17234', 4, 100, 3, N'https://thepuristsclub.com/images/202011/p2-bpn-50-22-145-3/p2-bpn-50-22-145-3.jpg', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (15, N'KKU 17214', 5.5, 100, 3, N'https://24cara.vn/wp-content/uploads/2021/09/376A7727-scaled.jpg', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (16, N'KKU 17254', 4, 100, 3, N'https://product.hstatic.net/1000269337/product/gong-kinh-kuboraum-00000157_de822cb9b8364b5ebeb29f8aa7f78a53_master.jpg', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (17, N'KKU 17294', 6.5, 100, 3, N'https://otticascauzillo.com/images/thumbs/0014819_nuovo-occhiale-da-sole-tondo-kuboraum-mask-z3-oro-e-nero_870.jpeg', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (18, N'KKU 17295', 7, 100, 3, N'data:image/jpeg;base64,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', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (19, N'KKU 17594', 8.5, 100, 3, N'https://avvenice.com/84355-large_default/kuboraum-mask-k2-smoke-crystal-k2-vt-sunglasses-kuboraum-eyewear.jpg', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (20, N'KC 90329', 3.5, 100, 4, N'https://salt.tikicdn.com/cache/w1200/ts/product/1a/6e/48/ff0ca6efd80c8a6fd6da68c2ce248475.jpg', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (21, N'KC 90339', 5.5, 100, 4, N'https://salt.tikicdn.com/cache/280x280/ts/product/9a/24/25/25e46eb00454a27c61eee9055302d48b.jpg', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (22, N'KC 93039', 9, 100, 4, N'https://cf.shopee.com.my/file/8c6e221f3c52818716ccdc2b60f73242_tn', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (23, N'KC 92039', 8.5, 100, 4, N'https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/08/kinh-mat-can-versace-glasses-ve1279-1001-mau-xam-den-62f604a4b896a-12082022144332.jpg', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (24, N'KC 90395', 10, 100, 4, N'https://product.hstatic.net/1000096196/product/g1758__16__a8f1b51cf70a4016a212fb789ba171f6_1024x1024.jpg', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (25, N'KC 90319', 8.5, 100, 4, N'https://i.pinimg.com/736x/d7/3c/5b/d73c5bcf3d74ec4f0008688fdc91c655.jpg', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (26, N'KM 9456', 9, 99, 5, N'https://cdn.shopify.com/s/files/1/1593/3731/products/Clune_45_Black_Laminate_Crystal_1047-45-BKLCY.jpg?v=1606735394&width=1024', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (27, N'KM 9456', 8.5, 99, 5, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsYKj_-P_ovSY6m39qh404WmhPzo1_yIPMcn9Z8hezUI-NyJnXZOOfHWp2g2cWdUc1o6g&usqp=CAU', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (28, N'KM 9456', 10, 100, 5, N'https://m.media-amazon.com/images/I/51yeBfRCRUL.jpg', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [price], [stock], [category_id], [img], [description], [create_date]) VALUES (29, N'KM 9456', 8.5, 100, 5, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlKXiPSP9sHUqYDA0RqiQ62-B4jPO1KuV9WwjpBqIrw1r6at9M51dih85fq2Yf9nZrlSU&usqp=CAU', N'Glasses provide reliable protection for your eyes. And a quality eyeglasses will make you more confident!', CAST(N'2022-10-22' AS Date))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([role_id], [role_name]) VALUES (1, N'Customer')
INSERT [dbo].[Roles] ([role_id], [role_name]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (2, N'Huy Quan', N'huyquanraz@gmail.com', N'09052002', N'Viet Nam', 1, N'0947548926 ', 2)
INSERT [dbo].[Users] ([user_id], [user_name], [email], [password], [address], [gender], [phone], [role_id]) VALUES (3, N'Hquan', N'hquan9522@gmail.com', N'09052002', N'HongKong', 1, N'0378387199 ', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([role_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
USE [master]
GO
ALTER DATABASE [GlassesShop] SET  READ_WRITE 
GO

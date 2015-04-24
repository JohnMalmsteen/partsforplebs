IF DB_ID('PartsForPlebs') IS NOT NULL
	DROP DATABASE PartsForPlebs
	
CREATE DATABASE PartsForPlebs
GO

USE [PartsForPlebs]
GO
/****** Object:  ForeignKey [FK_Customers_County]    Script Date: 04/02/2015 12:15:30 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customers_County]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_Customers_County]
GO
/****** Object:  ForeignKey [FK_Invoices_Customers]    Script Date: 04/02/2015 12:15:30 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Invoices_Customers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Invoices]'))
ALTER TABLE [dbo].[Invoices] DROP CONSTRAINT [FK_Invoices_Customers]
GO
/****** Object:  ForeignKey [FK_LineItems_Invoices]    Script Date: 04/02/2015 12:15:30 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LineItems_Invoices]') AND parent_object_id = OBJECT_ID(N'[dbo].[LineItems]'))
ALTER TABLE [dbo].[LineItems] DROP CONSTRAINT [FK_LineItems_Invoices]
GO
/****** Object:  ForeignKey [FK_LineItems_Products]    Script Date: 04/02/2015 12:15:30 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LineItems_Products]') AND parent_object_id = OBJECT_ID(N'[dbo].[LineItems]'))
ALTER TABLE [dbo].[LineItems] DROP CONSTRAINT [FK_LineItems_Products]
GO
/****** Object:  ForeignKey [FK_Products_Categories]    Script Date: 04/02/2015 12:15:30 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_Categories]
GO
/****** Object:  Table [dbo].[LineItems]    Script Date: 04/02/2015 12:15:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LineItems]') AND type in (N'U'))
DROP TABLE [dbo].[LineItems]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 04/02/2015 12:15:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices]') AND type in (N'U'))
DROP TABLE [dbo].[Invoices]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 04/02/2015 12:15:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND type in (N'U'))
DROP TABLE [dbo].[Customers]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 04/02/2015 12:15:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[InvoiceData]    Script Date: 04/02/2015 12:15:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvoiceData]') AND type in (N'U'))
DROP TABLE [dbo].[InvoiceData]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 04/02/2015 12:15:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
DROP TABLE [dbo].[Categories]
GO
/****** Object:  Table [dbo].[County]    Script Date: 04/02/2015 12:15:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[County]') AND type in (N'U'))
DROP TABLE [dbo].[County]
GO
/****** Object:  Table [dbo].[County]    Script Date: 04/02/2015 12:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[County]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[County](
	[CountyCode] [char](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[CountyName] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_County] PRIMARY KEY CLUSTERED 
(
	[CountyCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'AH  ', N'Armagh')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'AM  ', N'Antrim')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'CE  ', N'Clare')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'CK  ', N'Cork')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'CN  ', N'Cavan')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'CW  ', N'Carlow')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'DL  ', N'Donegal')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'DN  ', N'Down')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'DUB ', N'Dublin')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'DY  ', N'Derry')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'FH  ', N'Fermanagh')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'GY  ', N'Galway')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'KE  ', N'Kildare')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'KK  ', N'Kilkenny')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'KY  ', N'Kerry')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'LD  ', N'Longford')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'LH  ', N'Louth')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'LK  ', N'Limerick')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'LM  ', N'Leitrim')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'LS  ', N'Laois')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'MH  ', N'Meath')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'MN  ', N'Monaghan')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'MO  ', N'Mayo')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'OY  ', N'Offaly')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'RM  ', N'Roscommon')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'SO  ', N'Sligo')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'TE  ', N'Tyrone')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'TY  ', N'Tipperary')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'WD  ', N'Waterford')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'WH  ', N'Westmeath')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'WW  ', N'Wicklow')
INSERT [dbo].[County] ([CountyCode], [CountyName]) VALUES (N'WX  ', N'Wexford')
/****** Object:  Table [dbo].[Categories]    Script Date: 04/02/2015 12:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categories](
	[CategoryID] [varchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ShortName] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Categories] ([CategoryID], [ShortName]) VALUES (N'case', N'Housing Case')
INSERT [dbo].[Categories] ([CategoryID], [ShortName]) VALUES (N'cpu', N'Processor')
INSERT [dbo].[Categories] ([CategoryID], [ShortName]) VALUES (N'gc', N'Graphic Card')
INSERT [dbo].[Categories] ([CategoryID], [ShortName]) VALUES (N'hd', N'Hard Drives')
INSERT [dbo].[Categories] ([CategoryID], [ShortName]) VALUES (N'mb', N'MotherBoards')
INSERT [dbo].[Categories] ([CategoryID], [ShortName]) VALUES (N'mem', N'Memory')
INSERT [dbo].[Categories] ([CategoryID], [ShortName]) VALUES (N'ps', N'Power Supply unit')
/****** Object:  Table [dbo].[InvoiceData]    Script Date: 04/02/2015 12:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvoiceData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InvoiceData](
	[SalesTax] [money] NOT NULL
)
END
GO
INSERT [dbo].[InvoiceData] ([SalesTax]) VALUES (0.0750)
/****** Object:  Table [dbo].[Products]    Script Date: 04/02/2015 12:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(100,1) NOT NULL,
	[Name] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[ShortDescription] [varchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[LongDescription] [varchar](3000) COLLATE Latin1_General_CI_AS NOT NULL,
	[CategoryID] [varchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ImageFile] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[UnitPrice] [money] NOT NULL,
	[OnHand] [int] NOT NULL,
	[Manufacturer] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[ProductType] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[SocketType] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[ClockSpeed] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[NoStrips] [smallint] NULL,
	[EfficiencyRating] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Wattage] [int] NULL,
	[Modularity] [bit] NULL,
	[Dimentions] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[PowerSupply] [int] NULL,
	[Inter_Face] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[FormFactor] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Capacity] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[MemoryType] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[PowerDraw] [int] NULL,
	[NoCores] [int] NULL,
	[MemorySize] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Weight] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (100, N'500W power Supply', N'Corsair 500W Builder Series CX 80+ Bronze ATX Power Supply', N'The CX Series is an ideal solution for those who want a no-nonsense, reliable power supply that''s designed for maximum compatibility. Unlike other PSUs in its price range, the CX series is rated for continuous power output for maximum compatibility and reliability, and it carries the 80 Plus® Bronze certification for efficiency. A great budget choice.!', N'ps', N'PS500wCorsair.jpg', 67.9500, 10, N'Corsair', N'Power Supply', N'', N'', 0, N'', 500, 1, N'15 cm x 14 cm x 8.6 cm', 240, N'', N'', N'', N'', 0, 0, N'', N'')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (101, N'Crucial - DDR3 - 4 GB - DIMM 240-pin', N'Crucial 4GB DDR3 1600 MT/s (PC3-12800) CL11 Unbuffered UDIMM 240pin', N'CT51264BA160B is a single 4GB DDR3 Desktop module that operates at speeds up to 1600 MT/s and has a CL11 latency. It is Unbuffered and is non-ECC. It conforms to the industry standard UDIMM layout of 240 pins and is compatible with computers that take DDR3 UDIMM memory.', N'mem', N'Mem4GB_CrucialPC3_12800.jpg', 33.8600, 15, N'Crucial', N'RAM memory', N'', N'1600 Mhz', 0, N'', 0, 1, N'', 1, N'', N'', N'', N'DIMM', 0, 0, N'4 GB', N'')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (102, N'ASRock Z77 Pro4', N'ASRock Z77 Pro4 - motherboard - ATX - LGA1155 Socket - Z77', N'ASRock motherboard support Lucid Virtu Universal MVP technology that improves your PC''s visuals, with faster response times, improved video processing and smoother media playback, all with low power consumption. Brilliantly designed for gaming, Virtu Universal MVP switchable graphics software assigns tasks dynamically to the best graphics resource and features two exciting techniques - HyperFormance and Virtual Vsync. ', N'mb', N'MB_ASRock_Z77_Pro4.jpg', 103.0000, 6, N'ASRock', N'MotherBoard', N'LGA1155', N'', 0, N'', 0, 1, N'', 0, N'', N'ATX', N'', N'DDR3', 0, 0, N'32 GB', N'')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (103, N'Gigabyte GA-H97-HD3 - 1.0 ', N'Gigabyte GA-H97-HD3 - 1.0 - motherboard - ATX - LGA1150 Socket - H97', N'Supports 4th and 5th Generation Intel® Core™ processors, Extreme multi graphics support, HD Audio support, LAN with high ESD Protection, GIGABYTE LAN Optimizer, Long lifespan Durable Solid caps, APP Center including EasyTune™ and Cloud Station™ utilities, GIGABYTE UEFI DualBIOS™, Intel® Small Business Advantage.', N'mb', N'MB_GB_H97-HD3.jpg', 100.8000, 8, N'GigaByte', N'MotherBoard', N'LGA1150', N'', 0, N'', 0, 1, N'', 0, N'', N'ATX', N'', N'DDR3', 0, 0, N'Max 1 GB', N'')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (104, N'Asus GeForce GTX 970 4GB PCI-Express', N'ASUS STRIX-GTX970-DC2OC-4GD5 graphics card - GF GTX 970 - 4 GB', N'ASUS Strix GTX 970 gaming graphics card is factory-overclocked at 1253 Mhz and packed with exclusive ASUS technologies, including DirectCU II to deliver cooler, quieter, and faster performance for incredible action gaming experiences. Strix GTX 970 also features 0 dB fan technology to let gamers enjoy total silence during light gameplay as well as Blu-ray movie playback free from distracting background noise. Strix GTX 970 features exclusive ASUS DIGI+ VRM with 6-phase Super Alloy Power components for enhanced durability and cooling, and GPU Tweak for overclocking and online streaming.', N'gc', N'GC_Asus_GeforceGTX970.jpg', 420.3000, 5, N'Asus', N'Graphic Card', N'PCI Express 3.0 x16', N'', 0, N'', 0, 1, N'', 0, N'DVI-I , DVI-D , HDMI , DisplayPort', N'', N'', N'GDDR5', 0, 0, N'4 GB - GDDR5', N'')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (105, N'WD 1TB Blue SATA 6GB/s', N'WD 1TB Blue SATA 6GB/s 7200RPM 64MB 3.5" Hard Drive', N'ASUS Strix GTX 970 gaming graphics card is factory-overclocked at 1253 Mhz and packed with exclusive ASUS technologies, including DirectCU II to deliver cooler, quieter, and faster performance for incredible action gaming experiences. Strix GTX 970 also features 0 dB fan technology to let gamers enjoy total silence during light gameplay as well as Blu-ray movie playback free from distracting background noise. Strix GTX 970 features exclusive ASUS DIGI+ VRM with 6-phase Super Alloy Power components for enhanced durability and cooling, and GPU Tweak for overclocking and online streaming.', N'hd', N'WD1TB6GB3_5.jpg', 60.3000, 5, N'Western Digital', N'Hard Drive', N'', N'', 0, N'', 0, 1, N'10.16 cm x 14.7 cm x 2.54 cm', 0, N'SATA 6Gb/s', N'', N'1 TB ', N'', 0, 0, N'', N'440 g')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (106, N'AMD A10 series A10-6800K / 4.1 GHz processor', N'AMD A10-6800K 4.4GHz FM2 4MB Quad-Core Black Edition Processor, Richland Core, AMD Radeon HD 8670D', N'Get the power of two when you purchase an AMD A-Series Accelerated Processor (APU) based PC with an AMD Radeon™ DirectX® 11 capable discrete graphics card. Only AMD Radeon™ Dual Graphics combines two powerful Radeon™ DirectX 11-enabled graphics processors to provide the ultimate gaming performance boost when you need it. Experience gaming at higher resolutions with greater image quality and boost visual performance when you combine a Quad-Core AMD APU for desktops with the AMD Radeon™ HD graphics card.', N'cpu', N'CPU_AMD_A10.jpg', 130.5700, 5, N'AMD', N'Processor', N'FM2', N'4.1 GHz', 0, N'', 0, 1, N'', 0, N'', N'', N'', N'', 0, 4, N'', N'')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (107, N'Zalman Z3 Plus - mid tower - ATX', N'Zalman Z3 Plus White Tower Case', N'GThis case has Optimize the cooling performance with 5 fans and also maximizes the air flow keeping the HDD and the system cool. Supports bottom PSU installation for effective cooling of PSU, and also helps to stabilize the case. USB ports, audio socket, power and reset buttons set on the front for user convenience. A dust filter on the bottom prevents dust entering. Anti-vibration Rubbers on the bottom of the case and the PSU installation area offer the vibrations free Quiet PC Environment', N'case', N'Case_ZalmanZ3.jpg', 46.2000, 4, N'Zalman', N'Case', N'', N'', 0, N'', 0, 1, N'19.2 cm x 43 cm x 46.5 cm', 0, N'', N'Mid tower', N'', N'', 0, 0, N'', N'6 kg')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (108, N'Corsair Carbide Series Air 240 ', N' Corsair Carbide Series Air 240 - cube - micro ATX', N'Are you on the fence about building a Mini-ITX or MicroATX computer, but hesitate due to cooling concerns? Confidently use either motherboard in the cube-shaped Carbide Series Air 240 PC case -- specifically built with optimal airflow in mind. The innovative internal layout - complete with multiple cable routing options -- features an unobstructed pathway for fresh air to travel between intake fans and hot components. This is a whiz kid case built for long-lasting reliability -- all while being able to host a colossal graphics card with ease. Enjoy plenty of room for a high-end water-cooling setup (with 240mm radiators) if that''s your thing. Front panel USB 3.0 ports give you quick peripheral connectivity when you need it most', N'case', N'Case_Carbide_Series_Air.jpg', 100.0000, 5, N'Corsair ', N'Case', NULL, NULL, 0, N' ', 0, 1, N'26 cm x 39.7 cm x 32 cm', 0, NULL, N'Cube', NULL, NULL, 0, 0, NULL, N'5.6 kg')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (109, N'Antec ISK600 - desktop slimline - mini ITX', N'Antec ISK600 Mini ITX Desktop Cube Case No PSU', N'The ISK600 is a versatile enclosure that matches any CEO''s desk, designer''s office, or family living room. It is designed exclusively for Mini-ITX motherboards and barely takes up desk. In addition to 0.8 mm SECC steel, the ISK600 features elegantly designed brushed aluminum top and side panels. It will last for builds to come with space for a 12.5" graphics card. 2 expansion slots, and three drive bays.', N'case', N'Case_AntecISK600.jpg', 63.8400, 5, N'Antec', N'Case', NULL, NULL, 0, N' ', 0, 1, N'26 cm x 36.9 cm x  19.5 cm', 0, NULL, N'Desktop slimline', NULL, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (110, N'Zalman H1 Black Full Tower Case AHV ', N'Zalman H1 Black Full Tower Case AHV (ATX/M-ATX/E-ATX/M-ITX/BTX)', N'AHV function allows the product to operated in low noise under the temperature that the user had set, and when the temperature goes over the set up temperature the upper vent opens up and the fan starts operating, ventilating the heat and returns to the low noise mode.', N'case', N'Case_Zalman_H1.jpg', 121.7000, 4, N'Zalman', N'Case', NULL, NULL, 0, N' ', 0, 1, N'23.7 cm x 56.9 cm x 55.1 cm', 0, NULL, N'Full tower', NULL, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (111, N'Intel Core i5 4690 / 3.5 GHz processor', N'Intel Core i5-4690K 3.50GHz 6MB S1150 ''Devils Canyon'' with Heat Sink Fan', N'The New 4th generation Intel® Core™ i5 4690 processor gives you the power to play, create, entertain, or inspire. Enjoy adaptive performance that keeps apps flying and media flowing (with Intel® Turbo Boost Technology), amazing battery life, and built-in security features to help keep your data safer. Enjoy the thrill of an automatic burst of speed when you need it with Intel® Turbo Boost Technology 2.0. Experience your movies, photos, and games with stunning HD, 3D, and graphics performance built into the processor--no extra hardware required--and do it all longer, with amazing battery life. Get a boost in your performance that you can truly see and feel--all while enjoying the peace of mind from enhanced security. Experience the power within your PC, and (re)discover what''s possible with a new computer.', N'cpu', N'IntelCoreI5.jpg', 268.5200, 5, N'Intel', N'Processor', N'LGA1150', N'3.5 GHz', 0, N' ', 0, 1, N'', 0, N'', N'', N'', NULL, 0, 4, N' ', N' ')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (112, N'Intel Xeon E5-2407V2 / 2.4 GHz processor', N'Intel Xeon E5-2407v2 10MB Quad-Core Processor', N'Intel Xeon processors represent a broad product line to meet a range of demanding performance and energy efficiency requirements for compute-intensive embedded, storage, and communications applications.', N'cpu', N'CPU-IntelXeonQuadCore.jpg', 273.5600, 5, N'Intel', N'Processor', N'LGA1356 ', N'2.4 GHz', 0, N' ', 0, 1, N' ', 0, N' ', N' ', N' ', N' ', 0, 4, N' ', N' ')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (113, N'AMD Black Edition AMD FX 8320 / 3.5 GHz processor', N'AMD FX8-8320 Black Edition Vishera 8 Core AM3+ 3.5GHz 16MB 125W', N'The new AMD FX 8320 Black Edition Processor with 8 cores, and it''s unlocked for your overclocking pleasure. Experience unmatched multitasking and pure core performance with the 32nm 8-core desktop processor. Get the speed you crave with AMD Turbo CORE Technology to push your core frequencies to the limit when you need it most. Go beyond the limits of maximum speed with easy-to-use AMD OverDrive™ and AMD Catalyst Control Center™ software suites. But the best part of all? You''ll get all this impressive performance at an unbelievable price. You''ll be asking yourself "what competition?" in no time.', N'cpu', N'CPU_AMD_FX8-8320.jpg', 156.6100, 5, N'AMD', N'Processor', N'AM3+', N'3.5 GHz', 0, N' ', 0, 1, N' ', 0, N' ', N' ', N' ', N' ', 0, 8, N' ', N' ')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (114, N'Intel Core i7-3930K 3.20GHz  Processor', N'Intel Core i7-3930K 3.20GHz S2011 12MB', N'Whether it''s HD media, 3D gaming, or serious multitasking, unlock your full potential with the 2nd generation Intel® Core™ i7-3930K processor. With top-of-the-line adaptive speed1 and features, and overclocking enabled it delivers 2nd generation smart performance at its best with the flexibility to set your system specs just the way you like.', N'cpu', N'CPU_IntelCorei73930k.jpg', 567.6600, 4, N'Intel', N'Processor', N'LGA2011', N'3.2 GHz', 0, N' ', 0, 1, N' ', 0, N' ', NULL, NULL, NULL, 0, 6, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (115, N'AMD A series A8-7600 / 3.1 GHz processor', N'AMD A8-7600 FM2+ 3.8GHz Socket FM2+ 4MB Quad Core Processor', N'hoose the AMD CPU or APU that''s right for you. Build your own system with an AMD processor-in-a-box (PIB) and get exactly what you want from an innovative AMD A-Series Accelerated Processor Unit (APU).', N'cpu', N'CPU_AMD_A8_FM2.jpg', 101.2400, 5, N'AMD', N'Processor', N'FM2+', N'3.1 GHz', 0, NULL, 0, 1, N' ', 0, NULL, NULL, NULL, NULL, 0, 4, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (116, N'AMD Athlon 5350 / 2 GHz processor', N'AMD Athlon 5350 2.05GHz AM1 2MB 25W Radeon R3 Series Quad Core Kabini', N'Incredible multi-core performance supercharged with AMD Radeon™ R3 Graphics - all on one processor', N'cpu', N'CPU_AMD_Athlon.jpg', 50.3000, 5, N'AMD', N'Processor', N'AM1', N'2 GHz', 0, NULL, 0, 1, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (117, N'AMD Black Edition AMD FX 8370 / 4 GHz processor', N'AMD FX-8370 4.0GHz 8MB Black Editon', N'AMD FX processor unlocks maximum, unrestrained processing performance for extreme responsiveness you can see and feel.', N'cpu', N'CPU_AMD_FX-8370.jpg', 216.3900, 5, N'AMD', N'Processor', N'AM3+', N'4.3 GHz', 0, NULL, 0, 1, NULL, 0, NULL, NULL, NULL, NULL, 0, 8, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (118, N'Intel Xeon E5-2403 / 1.8 GHz processor', N'HP ProLiant ML350e Gen8 Intel Xeon E5-2403 1.8GHz 10MB 80W', N'Intel Xeon processors represent a broad product line to meet a range of demanding performance and energy efficiency requirements for compute-intensive embedded, storage, and communications applications.', N'cpu', N'CPU_HP_ProLiath.jpg', 379.7800, 4, N'Intel', N'Processor', N'LGA1356', N'1.8 GHz', 0, NULL, 0, 1, NULL, 0, NULL, NULL, NULL, NULL, 0, 4, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (119, N'Best Value Palit GeForce GTX 960  Graphics Card', N'Best Value Palit GeForce GTX 960 1165MHz 2GB PCI-E 3.0 HDMI OC', N'The GeForce® GTX™ 960 delivers incredible performance, power efficiency, and cutting-edge gaming technologies that only NVIDIA Maxwell™ technology can offer.', N'gc', N'GC_GeForceGTX960.jpg', 209.1600, 5, N'Palit', N'Graphic Card', N'PCI Express 3.0 x16', NULL, 0, NULL, 0, 1, NULL, 0, N'DVI-I , DVI-D , HDMI , DisplayPort', NULL, NULL, N'GDDR5', 0, 0, N'2 GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (120, N'Asus AMD Radeon R9 270X 1120MHz 2GB  Graphic Card', N'Asus AMD Radeon R9 270X 1120MHz 2GB GDDR5 PCI-E 3.0 HDMI DirectCU II TOP OC', N'ASUS graphics card engineering leads the industry once again with the introduction of DirectCU II SSU thermal design. Comprising two "S" and one "U" shapes, the new heatpipes are precision shaped for optimal efficiency and heat transference. They are also nickel-plated to minimize oxidization, with their mid-section now placed directly over the GPU die. This design shortens heat transfer travel to lower thermal resistance and create bi-directional flow for up to twice the cooling capacity in the same space as that required by existing graphics card cooler designs. High-conductivity copper used in heatpipe formulation creates tube-like vapor chambers, moving heat to a large aluminum heatsink that features extended fins for multiple points of dissipation. The assembly is further chilled by two high performance but carefully-tuned and sound-dampened fans for faster and quieter cooling.', N'gc', N'GC_ASUSAMDRadeonR9_270x.jpg', 198.3600, 5, N'Asus', N'Graphic Card', N'PCI Express 3.0 x16', NULL, 0, NULL, 0, NULL, NULL, 0, N'DVI-I , DVI-D , HDMI , DisplayPort', NULL, NULL, N'GDDR5', 0, 0, N'2 GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (121, N'XFX Radeon HD 5450 graphics card - Radeon  - 1 GB', N'XFX AMD Radeon 5450 650MHz 1GB PCI-Express HDMI Silently Cooled Low Profile', N'Essays. Spreadsheets. Letters. Photo archiving. Gaming. You want to do it all. And you want to do it now. Here at XFX, XFX calls that classic Computer Split Personality Disorder. And XFX has the prescription: the XFX ATI Radeon HD5450 Graphics Card.', N'gc', N'GC_XFX_AMD_Radeon5450.jpg', 29.8100, 5, N'AMD Radeon ', N'Graphic Card', N'PCI Express 2.1 x16', NULL, 0, NULL, 0, NULL, NULL, 0, N'PCI Express 2.1 x16', NULL, NULL, N'DDR3', 0, 0, N'1 GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (126, N'XFX Radeon R9 295X2 - Hydra - graphics card ', N'XFX AMD Radeon R9 295X2 8GB PCI Express 3.0 HDMI', N'The AMD Radeon R9 295X2 graphics card is the world’s fastest, period. A mammoth eight gigabytes of memory and more than 11.5 teraflops of computing power help this card do what it was built to do: be the undisputed graphics champion.', N'gc', N'GC_AMD_Radeon_R9_295X2.jpg', 966.4500, 5, N'AMD Radeon', N'Graphc Card', N'PCI Express 3.0 x16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'DVI-D (dual link) (HDCP) , 4 x Mini DisplayPort', NULL, NULL, N'GDDR5', NULL, NULL, N'8 GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (127, N'NVIDIA Quadro K6000 graphics card ', N'PNY Quadro K6000 12GB PCI-Express x16 Professional Graphic Card', N'The NVIDIA Quadro K6000 graphics card is the ultimate expression of NVIDIA''s expertise in professional graphics, empowering artists, designers, and engineers to realize their biggest visions. It combines 12 GB of memory, 2880 NVIDIA CUDA® parallel processing cores, accelerated double-precision computation, plus the ability to drive up to four ultra-high-resolution displays or projectors. This makes the Quadro K6000 the superior choice to bring your largest and most complex projects to life.', N'gc', N'GC_PNY_quadroK6000.jpg', 5049.7700, 2, N'Nvidia', N'Graphic Card', N'PCI Express 3.0 x16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'DVI-I (dual link)¦DVI-D, 2 x DisplayPort'' VGA', NULL, NULL, N'GDDR5', NULL, NULL, N'12 GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (128, N'NVIDIA Quadro K2200 graphics card ', N'PNY Nvidia Quadro K2200 4GB PCI-E X16 DDR5 DVI-I', N'The NVIDIA Quadro K2200 delivers exceptional power-efficient 3D application performance. 4 GB of GDDR5 GPU memory with fast bandwidth enables you to create large, complex models, and a flexible single-slot form factor makes it compatible with even the most space and power-constrained chassis. Plus, an all-new display engine drives up to four displays with DisplayPort 1.2 support for ultra-high resolutions up to 3840 x 2160 at 60 Hz with 30-bit color.', N'gc', N'GC_NvidiaQuatroK2200.jpg', 563.2400, 5, N'Nvidia', N'Graphic Card', N'PCI Express 2.0 x16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'DVI-I (dual link), 2 x DisplayPort, DVI-D, VGA', NULL, NULL, N'GDDR5', NULL, NULL, N'4 GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (129, N'MSI N750 1GD5/OCV1 graphics card ', N'MSI GeForce GTX 750 1059MHz 1GB PCI-E 3.0 HDM OC', N'Powered by first-generation NVIDIA Maxwell architecture, the 750 delivers twice the performance at half the power consumption of previous generation cards, all at a great value. For serious gamers, this means you get all the horsepower you need to play the hottest titles in beautiful 1080 HD resolution, all at full settings ', N'gc', N'GC_MSI_GeForce_GTX750.jpg', 120.4000, 5, N'MSI', N'Graphic Card', N'PCI Express 3.0 x16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'DVI-D (dual link) , VGA , HDMI', NULL, NULL, N'GDDR5', NULL, NULL, N'1 GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (130, N'XFX Radeon HD 5450 graphics card ', N'XFX AMD Radeon 5450 650MHz 1GB PCI-Express HDMI Silently Cooled Low Profile', N'Essays. Spreadsheets. Letters. Photo archiving. Gaming. You want to do it all. And you want to do it now. Here at XFX, XFX calls that classic Computer Split Personality Disorder. And XFX has the prescription: the XFX ATI Radeon HD5450 Graphics Card.', N'gc', N'GC_XFX_AMD_Radeon5450.jpg', 29.8100, 5, N'AMD Radeon', N'Graphic Card', N'PCI Express 2.1 x16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'DVI-I , DVI-D , HDMI , DisplayPort', NULL, NULL, N'DDR3', NULL, NULL, N'1 GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (131, N'Corsair Value - DDR3 - 4GB :2x2GB - DIMM 240-pin', N'Corsair 4GB (1x4GB) DDR3 1333Mhz CL9 Value Select Desktop Memory Module', N'Corsair Memory 4GB Single Module 1333MHz CL 9-9-9-24 1.5V DDR3 DIMM for Intel and AMD platform system builds and upgrades. Corsair built its reputation on performance memory that shines in the most demanding computing situations: extreme gaming and high-transaction processing environments. But not all computers are put to such extreme usage. So we brought the same reliability, testing and Corsair quality to a line of memory designed to support standard computing situations such as popular office applications. Now it''s one of our most popular memory lines. Backed with a lifetime warranty, it is memory you can rely on', N'mem', N'Mem4GB_CorsairDDr3_1333.jpg', 35.5900, 5, N'Corsair', N'Ram Memory', NULL, N'333 MHz ', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'DDR3 - DIMM', NULL, NULL, N'4 GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (132, N'Corsair Vengeance - DDR3-4 GB:2x2 GB-DIMM ', N'Corsair 4GB (2x2GB) DDR3 1600Mhz CL9 Vengeance Black Performance Desktop Memory Kit', N'Corsair Vengeance DDR3 memory modules are designed with overclockers in mind. Vengeance DIMMs are built using RAM specially selected for their high-performance potential. Aluminum heat spreaders help dissipate heat, and provide the aggressive look that you want in your gaming rig. As a bonus, the attractive low price of Vengeance memory will also leave lots of room in your system build budget.', N'mem', N'Mem4GB_Corsair(2x2GB).jpg', 50.0600, 5, N'Corsair', N'Ram Memory', NULL, N'1600 MHz ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'DDR3 SDRAM - DIMM ', NULL, NULL, N'4 GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (133, N'Corsair Vengeance Pro Series- DDR3- 16 GB:2x8GB ', N'Corsair 16GB (2 x 8GB) Vengeance Pro Black DDR3 1866MHz CL9', N'Corsair Vengeance Pro Series memory modules are designed for overclocking on the latest 3rd and 4th generation Intel® Core™ platforms, with eight-layer PCBs and ICs specially selected for performance potential. The aluminum heat spreaders provide superior temperature management and have the aggressive look you want in your gaming rig. XMP 1.3 profiles allow for automatic, reliable overclocking.', N'mem', N'Mem16GB(2x8)Vengeance.jpg', 152.6400, 5, N'Corsair', N'Ram Memory', NULL, N'1866 MHz', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'DDR3 SDRAM - DIMM ', NULL, NULL, N'16 GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (134, N'G.Skill TridentX Series- DDR3- 32GB:4x8GB- DIMM ', N'G.Skill 32GB (4 x 8GB) TridentX DDR3 2400MHz DIMM 240-pin', N'G.SKILL TridentX series is known as the world’s most powerful and fastest DDR3 memory available in the market with numerous world record titles under its belt. Named after the powerful weapon of Poseidon, Greek God of the Seas, G.SKILL TridentX is imbued with extreme overclocking capabilities waiting to be unleashed in your system.', N'mem', N'Mem32GB(4x8GB)G_skill.jpg', 365.9000, 2, N'G.Skill ', N'Ram Memory', NULL, N'2400 MHz ', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'DDR3 SDRAM - DIMM ', NULL, NULL, N'32 GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (135, N'Crucial - DDR4 - 16 GB : 4 x 4 GB - DIMM ', N'Crucial 16GB Kit (4x4GB) DDR4 2133 MT/s (PC4-17000) CL15 SR x8 Unbuffered DIMM 288pin', N'In the ever-changing world of technology, any component more than half a decade old is usually in need of an update. At seven years old and counting, that''s exactly the state DDR3 memory is in: computers can only do so much with it.', N'mem', N'Mem16GB(4x4GB)PC4_17000.jpg', 192.2900, 2, N'Crucial', N'Ram Memory', NULL, N'2133 MHz ', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'DDR4 SDRAM - DIMM ', NULL, NULL, N'16 GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (136, N'Crucial - DDR4 - 16 GB - DIMM 288-pin', N'Crucial 16GB DDR4 2133 MT/s (PC4-2133) CL15 DR x4 VLP ECC Registered DIMM 288pin', N'More speed. More bandwidth. More efficient. Next generation DDR4 memory is here.', N'mem', N'Mem16GB_DDR4_2133DIMM.jpg', 336.1300, 5, N'Crucial', N'Ram memory', NULL, N'2133 MHz ', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'DDR4 SDRAM - DIMM ', NULL, NULL, N'16 GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (137, N'Crucial - DDR2 - 64 GB : 8 x 8 GB - FB-DIMM ', N'Crucial 64GB kit (8GBx8) DDR2 667MHz (PC2-5300) CL5 FBDIMM 495604-B2', N'Enterprise-level performance. Tested, qualified, and reliable, Crucial server memory delivers enterprise-level performance. Crucial server memory is available in LRDIMM, FBDIMM, RDIMM, and unbuffered ECC module types. With a wide variety of speeds and densities to choose from, Crucial server memory is designed to meet the needs of server platforms and operating systems, both new and old. Trust Crucial memory for your server and workstation applications, and keep your important data running smoothly.', N'mem', N'Mem64GB(8x8GB)PC2.jpg', 2396.7900, 2, N'Crucial', N'Ram Memory', NULL, N'667 MHz ', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'DDR2 SDRAM - FB-DIMM ', NULL, NULL, N'64 GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (138, N'MSI 970A-G43 AMD AM3+ 970 DDR3 ATX', N'MSI 970A-G43 - motherboard - ATX - Socket AM3+ - AMD 970', N'MSI Click BIOS II provides a consistent user interface both in the UEFI BIOS and in Windows, it provides the most convenient way for users to control system settings and supports touchscreen control.', N'mb', N'MB_MSI790A_G43.jpg', 68.9900, 5, N'MSI', N'MotherBoard', N'AM3+', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ATX', NULL, N'DDR3', NULL, NULL, N'32 GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (139, N'MSI Z97 GAMING 9 ACK S1150 Intel Z97 DDR3 ATX', N'MSI Z97 GAMING 9 ACK - motherboard - ATX - LGA1150 Socket - Z97', N'MSI GAMING motherboards are designed to provide gamers with best-in-class features and technology. Backed by the imposing looks of MSI''s Dragon, each motherboard is an engineering masterpiece tailored to gaming perfection.', N'mb', N'MB_MSI_Z97.jpg', 316.8300, 5, N'MSI', N'MotherBoard', N'LGA1150 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ATX', NULL, N'DDR3', NULL, NULL, N'32GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (140, N'ASUS SABERTOOTH Z97 MARK 1 ', N'Asus SABERTOOTH Z97 MARK 1 S1150 Intel Z97 DDR3 ATX', N'TUF ATX Intel® Z97 motherboard with strengthened backplate and flexible cooling system for non-stop stability', N'mb', N'MB_AS_Sabertooth.jpg', 257.9600, 5, N'TUF', N'MotherBoard', N'LGA1150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ATX', NULL, N'DDR3', NULL, NULL, N'32 GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (141, N'Gigabyte G1.Sniper A88X - 3.0 - motherboard ', N'Gigabyte G1.SNIPER A88X Socket FM2+ AMD A88X DDR3 ATX', N'GIGABYTE G1-Killer series motherboards are packed with absolutely everything you''ll need to build an uncompromising, high-performance gaming PC. Loaded with advanced audio technologies, maxed out multi-card gaming support, and advanced cooling and high quality heatsink design, GIGABYTE G1-Killer motherboards are the ultimate choice for serious PC gamers.', N'mb', N'MB_GB_G1_Sniper.jpg', 116.3700, 5, N'Gigabyte', N'MotherBoard', N'AMD A88X', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ATX', NULL, N'DDR3', NULL, NULL, N'64 GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (142, N'Asus H81M-K S1150 Intel H81 DDR3 mATX', N'ASUS H81M-K - motherboard - micro ATX - LGA1150 Socket - H81', N'Designed for Intel Core processors, the ASUS H81 series features exclusive ASUS 5X Protection technology for superior reliability and is available in a range of specifications that cater for a variety of PC needs.', N'mb', N'MB_ASUS H81M.jpg', 61.5600, 5, N'Asus', N'MotherBoard', N'LGA1150 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Micro ATX', NULL, N'DDR3', NULL, NULL, N'16 GB', NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (143, N'XFX 650W 80 Plus Gold Black Edition PSU', N'XFX XTR Series P1-650B-BEFX - power supply - 650 Watt', N'The simple and powerful PSU design allows you to handle many devices without worry. No matter what combination, you''ve got plenty of power.', N'ps', N'PS650wXFX.jpg', 118.2100, 5, N'XFX', N'Power Supply', NULL, NULL, NULL, NULL, 650, 1, NULL, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (144, N'EVGA 850W SuperNOVA Gold PSU', N'eVGA SuperNOVA 850 G2 - power supply - 850 Watt', N'Unleash the next generation in power with the EVGA SuperNOVA 850 G2 Power Supply. Based on the award winning G2 series Power Supplies from EVGA, this PSU features 80 PLUS Gold rated efficiency, and clean, continuous power to every component. This provides improved efficiency for longer operation, less power consumption, reduced energy costs and minimal heat dissipation. The new ECO Thermal Control Fan System offers fan modes to provide zero fan noise during low load operations. Backed by a 10 year warranty and Japanese capacitor design, the EVGA SuperNOVA 850 G2 is not only the right choice for your system today, it is also the best choice for your system tomorrow.', N'ps', N'PS850wEVGASuperNova.jpg', 153.3000, 5, N'EVGA', N'Power Supply', NULL, NULL, NULL, NULL, 850, 1, NULL, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'15 cm x 18 cm x 8.5 cm')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (145, N'Be Quiet BN220 Pure Power L8 Power Supply ', N'Be quiet! Pure Power L8-300W - power supply - 300 Watt', N'The Pure Power L8 300 W proves true affordability, means peerless dependability and best-in-class features - not cutting corners and settling for less. Pure Power L8 300 W features rock-solid voltages, strong reliability, high efficiency and exceptional quiet - simply the best combination of features, performance and quality in the class - at a very popular price. Now that is value!', N'ps', N'PS300wBeQuite.jpg', 46.4600, 5, N'Be Quite', N'Power Supply', NULL, NULL, NULL, NULL, 300, 1, NULL, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'15 cm x 15 cm x 8.6 cm')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (146, N'Corsair HX1000i - power supply - 1000 Watt', N'Corsair 1000W HX1000i High Performance 80+ Platinum Digital PSU', N'HXi Series power supplies give you extremely tight voltage control, virtually silent operation, and a fully modular cable set. With all Japanese 105°c capacitors, they''re a great choice for high performance PCs where reliability is essential. 80 PLUS Platinum efficiency reduces operating cost and excess heat, and together with Zero RPM Fan Mode technology, gives you virtually silent operation.', N'ps', N'PS1000wCorsairHX.jpg', 237.5300, 2, N'Corsair', N'Power Supply', NULL, NULL, NULL, NULL, 1000, 1, NULL, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'15 cm x 18 cm x 8.6 cm')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (147, N'Antec Neo Eco 450C - power supply ', N'Antec 450W PSU - NeoECO 450C - ATX V2.3 80+ Bronze 12cm DBB Fan', N'Get economical power today with the Neo ECO 450C, Antec''s high-efficiency power supply solution. Featuring 80 PLUS certification, a quiet double ball bearing 120mm fan, and universal input with active Power Factor Correction, the Neo ECO 450C gives you a cooler, quieter system all powered by 450 watts of continuous power.', N'ps', N'PS450wAntec.jpg', 65.9100, 5, N'Antec', N'Power Supply', NULL, NULL, NULL, NULL, 450, 1, NULL, 230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'15 cm x 14 cm x 8.6 cm')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (150, N'Toshiba MQ01ABD100 - hard drive - 1 TB - SATA', N'Toshiba 1TB SATA 3Gb/s 5400RPM 8MB 2.5" 9.5mm Hard Drive', N'The advanced MQ01ABDxxx targets markets such as portable multimedia and gaming notebooks, mobile workstations and other capacity-hungry applications like external HDDs. In addition, the drives also feature very good power efficiency value of 0.00055 for the 1 TB model. Due to the "Silent-Seek" technology featured in these drives, the HDDs are extremely quiet - ultra-silent single-platter drives are making them almost indistinguishable to the human hear.', N'hd', N'toshiba1TB2_5.jpg', 58.2600, 5, N'Toshiba', N'Hard Drive', NULL, NULL, NULL, NULL, NULL, NULL, N'70 mm x 100 mm x 9.5 mm', NULL, N'SATA 3Gb/s', N'2.5" x 1/8H', N'1 TB', NULL, NULL, NULL, NULL, N'112 g')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (152, N'Samsung SpinPoint M8 ST500LM012  ', N'Samsung SpinPoint M8 ST500LM012 - hard drive - 500 GB - SATA 3Gb/s', N'Wings on your mobile! Samsung''s Spinpoint M8 series employs advanced format technology (AFT) that raises the data storage density per unit area, enabling efficient and convenient data storage. It operates on a high-performance 3 gigabits per second SATA interface, provides an eight megabyte buffer memory and incorporates EcoSeek and NoiseGuard features for minimal noise levels. A redesign of the overall structure ensures enhanced shock resistance to protect the disc from physical fracture and data loss. Fast and reliable with a 5400rpm spin speed and 8MB buffer, Samsung''s Spinpoint M8 series is the perfect choice for use in mobile computing applications such as notebooks.', N'hd', N'Samsung500GB.jpg', 40.4100, 5, N'Samsung', N'Hard Drive', NULL, NULL, NULL, NULL, NULL, NULL, N'69.75 mm x 100.3 mm x 9.5 mm', NULL, N'SATA 3Gb/s', N'2.5" x 1/8H', N'500GB', NULL, NULL, NULL, NULL, N'107 g')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (153, N'WD Blue WD10EZEX - hard drive - 1 TB ', N'WD 1TB Blue SATA 6GB/s 7200RPM 64MB 3.5" Hard Drive', N'The advanced MQ01ABDxxx targets markets such as portable multimedia and gaming notebooks, mobile workstations and other capacity-hungry applications like external HDDs. In addition, the drives also feature very good power efficiency value of 0.00055 for the 1 TB model. Due to the "Silent-Seek" technology featured in these drives, the HDDs are extremely quiet - ultra-silent single-platter drives are making them almost indistinguishable to the human hear.', N'hd', N'WD1TB6GB3_5.jpg', 60.8400, 5, N'Western Digital', N'Hard Drive', NULL, NULL, NULL, NULL, NULL, NULL, N'10.16 cm x 14.7 cm x 2.54 cm', NULL, N'SATA 6Gb/s', N'3.5" x 1/3H', N'1 TB', NULL, NULL, NULL, NULL, N'440 g')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (154, N'Fujitsu ECO - hard drive - 500 GB ', N'Fujitsu HD SATA 6G 500GB 7.2K Hot Plug 3.5" ECO', N'The Fujitsu TS ECO HDD has a shape factor of 3.5 " . It can accommodate up to 500 GB of data . The support interface type is SATA3 . This allows data transfer rates of up to 600 megabytes per second. The magnetic letter set rotate at up to 7200 rpm (revolutions per minute).', N'hd', N'Fujtsu500GB3_5.jpg', 174.8800, 5, N'Fujitsu', N'Hard Drive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'SATA 6Gb/s', N'3.5"', N'500 GB', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (155, N'Seagate SV35 - hard drive - 3 TB ', N'Seagate 3TB SV35.6 Series SATA 6GB/s 7200RPM 64MB 3.5" Hard Drive ', N'Seagate® SV35 Series™ hard drives offer high capacities, durable reliability and performance tuned to the high-write workloads of today''s 24×7 video surveillance systems.', N'hd', N'Seagate3TB3-5.jpg', 132.1100, 5, N'Seagate', N'Hard Drive', NULL, NULL, NULL, NULL, NULL, NULL, N'10.2 cm x 14.7 cm x 2.6 cm', NULL, N'SATA 6Gb/s', N'3.5" x 1/3H', N'3 TB', NULL, NULL, NULL, NULL, N'0.63 kg')
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (156, N'HP P2000 300GB 6G SAS 15K 3.5IN H', N'HP Dual Port Enterprise - hard drive - 300 GB - SAS 6Gb/s', N'HP SAS Enterprise and Midline hard drives deliver high performance solutions for hosting high transaction based applications. Available in HP hot plug carriers or non-hot plug. HP SAS Enterprise and Midline hard drives come in both 2.5-inch (SFF) and 3.5-inch (LFF) industry standard form factors and are available in a variety of capacity points to meet a wide range of requirements. The SAS interface was designed and engineered for high availability, enterprise-class data storage where performance, reliability and data integrity are crucial. ', N'hd', N'HP300GB3_5.jpg', 328.2000, 2, N'HP', N'Hard Drive', NULL, NULL, NULL, NULL, NULL, NULL, N'Modular Smart Array ', NULL, N'SAS 6Gb/s', N'3.5"', N'300 GB', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand], [Manufacturer], [ProductType], [SocketType], [ClockSpeed], [NoStrips], [EfficiencyRating], [Wattage], [Modularity], [Dimentions], [PowerSupply], [Inter_Face], [FormFactor], [Capacity], [MemoryType], [PowerDraw], [NoCores], [MemorySize], [Weight]) VALUES (157, N'Seagate Enterprise Capacity 3.5 HDD ', N'Seagate 4TB Enterprise Capacity 3.5 HDD V.3 SATA 6GB/s 7200RPM 128MB', N'The Seagate Enterprise Capacity 3.5 HDD V.3 features the large capacities in a 3.5-inch form factor. Build cost-effective maximum capacity storage solutions with enterprise-class, 7200-RPM drives.', N'hd', N'Seagate4TB3_5.jpg', 324.3700, 2, N'Seagate', N'Hard Drive', NULL, NULL, NULL, NULL, NULL, NULL, N'101.85 mm x 147 mm x 26.1 mm', NULL, N'SATA 6Gb/s', N'3.5" x 1/3H', N'4 TB', NULL, NULL, NULL, NULL, N'700 g')

SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  Table [dbo].[Customers]    Script Date: 04/02/2015 12:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customers](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[LastName] [varchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[FirstName] [varchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[Address] [varchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[City] [varchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[County] [char](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[PhoneNumber] [varchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[Password] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[UserName] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NULL,
	[DeliveryAddress] [varchar](40) COLLATE Latin1_General_CI_AS NULL,
	[DeliveryCity] [varchar](30) COLLATE Latin1_General_CI_AS NULL,
	[DeliveryCounty] [char](4) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Customers] ON
INSERT [dbo].[Customers] ([UserId],[Email], [LastName], [FirstName], [Address], [City], [County], [PhoneNumber], [Password], [UserName], [CreatedDate], [LastLoginDate], [DeliveryAddress], [DeliveryCity], [DeliveryCounty]) VALUES (1,N'Adams3@hotmail.com', N'Adams', N'Andrea', N'485 Duane Terrace', N'Kinsale', N'CK  ', N'0875556924', N'', N'', GETDATE(),NULL, NULL, NULL, NULL)
INSERT [dbo].[Customers] ([UserId],[Email], [LastName], [FirstName], [Address], [City], [County], [PhoneNumber], [Password], [UserName], [CreatedDate], [LastLoginDate], [DeliveryAddress], [DeliveryCity], [DeliveryCounty]) VALUES (2,N'mkg@gmail.com', N'Greaney', N'Mike', N'253 Lake Drive', N'Renmore', N'GY  ', N'0867878123', N'', N'', GETDATE(), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Customers] OFF
/****** Object:  Table [dbo].[Invoices]    Script Date: 04/02/2015 12:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Invoices](
	[InvoiceNumber] [int] IDENTITY(1000,1) NOT NULL,
	[customerID][int] NOT NULL,
	[CustEmail] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[Subtotal] [money] NOT NULL,
	[ShipMethod] [varchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Shipping] [money] NOT NULL,
	[SalesTax] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[CreditCardType] [varchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[CardNumber] [varchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[ExpirationMonth] [smallint] NOT NULL,
	[ExpirationYear] [smallint] NOT NULL,
 CONSTRAINT [PK_Invoices] PRIMARY KEY CLUSTERED 
(
	[InvoiceNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Invoices] ON
INSERT [dbo].[Invoices] ([InvoiceNumber], [customerID], [CustEmail], [OrderDate], [Subtotal], [ShipMethod], [Shipping], [SalesTax], [Total], [CreditCardType], [CardNumber], [ExpirationMonth], [ExpirationYear]) VALUES (1000, 1, N'mkg@gmail.com', CAST(0x00009E0300000000 AS DateTime), 119.9700, N'UPS', 4.2500, 9.0000, 133.2200, N'VISA', N'1111-2222-3333-4444', 7, 2015)
INSERT [dbo].[Invoices] ([InvoiceNumber], [customerID], [CustEmail], [OrderDate], [Subtotal], [ShipMethod], [Shipping], [SalesTax], [Total], [CreditCardType], [CardNumber], [ExpirationMonth], [ExpirationYear]) VALUES (1001, 2, N'Adams3@hotmail.com', CAST(0x00009E0300000000 AS DateTime), 119.9100, N'UPS', 7.7500, 8.9900, 136.6500, N'VISA', N'1111-2222-3333-4444', 1, 2016)
SET IDENTITY_INSERT [dbo].[Invoices] OFF
/****** Object:  Table [dbo].[LineItems]    Script Date: 04/02/2015 12:15:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LineItems]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LineItems](
	[InvoiceNumber] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Extension]  AS ([UnitPrice]*[Quantity]) PERSISTED,
 CONSTRAINT [PK_LineItems] PRIMARY KEY CLUSTERED 
(
	[InvoiceNumber] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[LineItems] ([InvoiceNumber], [ProductID], [UnitPrice], [Quantity]) VALUES (1000, 100, 39.9900, 3)
/****** Object:  ForeignKey [FK_Customers_County]    Script Date: 04/02/2015 12:15:30 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customers_County]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_County] FOREIGN KEY([County])
REFERENCES [dbo].[County] ([CountyCode])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customers_County]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_County]
GO
/****** Object:  ForeignKey [FK_Invoices_Customers]    Script Date: 04/02/2015 12:15:30 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Invoices_Customers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Invoices]'))
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoices_Customers] FOREIGN KEY([customerID])
REFERENCES [dbo].[Customers] ([UserId])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Invoices_Customers]') AND parent_object_id = OBJECT_ID(N'[dbo].[Invoices]'))
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_Invoices_Customers]
GO
/****** Object:  ForeignKey [FK_LineItems_Invoices]    Script Date: 04/02/2015 12:15:30 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LineItems_Invoices]') AND parent_object_id = OBJECT_ID(N'[dbo].[LineItems]'))
ALTER TABLE [dbo].[LineItems]  WITH NOCHECK ADD  CONSTRAINT [FK_LineItems_Invoices] FOREIGN KEY([InvoiceNumber])
REFERENCES [dbo].[Invoices] ([InvoiceNumber])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LineItems_Invoices]') AND parent_object_id = OBJECT_ID(N'[dbo].[LineItems]'))
ALTER TABLE [dbo].[LineItems] CHECK CONSTRAINT [FK_LineItems_Invoices]
GO
/****** Object:  ForeignKey [FK_LineItems_Products]    Script Date: 04/02/2015 12:15:30 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LineItems_Products]') AND parent_object_id = OBJECT_ID(N'[dbo].[LineItems]'))
ALTER TABLE [dbo].[LineItems]  WITH NOCHECK ADD  CONSTRAINT [FK_LineItems_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LineItems_Products]') AND parent_object_id = OBJECT_ID(N'[dbo].[LineItems]'))
ALTER TABLE [dbo].[LineItems] CHECK CONSTRAINT [FK_LineItems_Products]
GO
/****** Object:  ForeignKey [FK_Products_Categories]    Script Date: 04/02/2015 12:15:30 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
ON UPDATE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO

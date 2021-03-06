/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.1742)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/

USE [AdventureworksDW2016]
GO
/****** Object:  Table [dbo].[bpcEmployee]    Script Date: 7/25/2018 12:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bpcEmployee](
	[ID] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[MI] [varchar](50) NULL,
	[StartDate] [varchar](50) NULL,
	[Hours] [varchar](50) NULL,
	[WeeklySalary] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bpcEmployeeBackup1]    Script Date: 7/25/2018 12:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bpcEmployeeBackup1](
	[ID] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[MI] [varchar](50) NULL,
	[StartDate] [varchar](50) NULL,
	[Hours] [varchar](50) NULL,
	[WeeklySalary] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bpcEmployeeBackup2]    Script Date: 7/25/2018 12:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bpcEmployeeBackup2](
	[ID] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[MI] [varchar](50) NULL,
	[StartDate] [varchar](50) NULL,
	[Hours] [varchar](50) NULL,
	[WeeklySalary] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bpcEmployeeHistory]    Script Date: 7/25/2018 12:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bpcEmployeeHistory](
	[ID] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[MI] [varchar](50) NULL,
	[StartDate] [varchar](50) NULL,
	[Hours] [varchar](50) NULL,
	[WeeklySalary] [varchar](50) NULL,
	[EndDate] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bpcEmployeeMaster]    Script Date: 7/25/2018 12:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bpcEmployeeMaster](
	[ID] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[MI] [varchar](50) NULL,
	[FullName] [varchar](500) NULL,
	[StartDate] [date] NULL,
	[TenureInMonths] [int] NULL,
	[Hours] [int] NULL,
	[WeeklySalary] [decimal](10, 2) NULL,
	[FullTimeInd] [char](1) NULL,
	[CreatedDate] [smalldatetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bpcEmployeeTransformed]    Script Date: 7/25/2018 12:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bpcEmployeeTransformed](
	[ID] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[MI] [varchar](50) NULL,
	[FullName] [varchar](500) NULL,
	[StartDate] [date] NULL,
	[TenureInMonths] [int] NULL,
	[Hours] [int] NULL,
	[WeeklySalary] [decimal](10, 2) NULL,
	[FullTimeInd] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bpcErrorOutput]    Script Date: 7/25/2018 12:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bpcErrorOutput](
	[ID] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[MI] [varchar](50) NULL,
	[StartDate] [varchar](50) NULL,
	[Hours] [varchar](50) NULL,
	[WeeklySalary] [varchar](50) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bpcInputErrors]    Script Date: 7/25/2018 12:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bpcInputErrors](
	[Flat File Source Error Output Column] [varchar](max) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[PackageName] [nvarchar](38) NULL,
	[TaskName] [nvarchar](41) NULL,
	[CreateDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bpcSales_Data]    Script Date: 7/25/2018 12:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bpcSales_Data](
	[Salespersonid] [varchar](30) NULL,
	[Lastname] [varchar](50) NULL,
	[Firstname] [varchar](50) NULL,
	[Totalsales] [varchar](20) NULL,
	[BICreatedDate] [datetime] NULL,
	[Totalsales_converted] [decimal](28, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[bpcEmployeeMaster] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

If not Exists(SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblGlVoucherHistory]') AND type in (N'U') )
Begin
CREATE TABLE [dbo].[tblGlVoucherHistory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[voucher_id] [int] NOT NULL,
	[location_id] [int] NOT NULL,
	[voucher_code] [nvarchar](29) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[finiancial_year_id] [int] NULL,
	[voucher_type_id] [int] NULL,
	[voucher_month] [nvarchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voucher_no] [nvarchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voucher_date] [datetime] NULL,
	[paid_to] [varchar](500) COLLATE Arabic_CI_AS NULL,
	[coa_detail_id] [int] NULL,
	[cheque_no] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cheque_date] [datetime] NULL,
	[cheque_paid] [bit] NULL ,
	[cheque_paid_date] [datetime] NULL,
	[post] [bit] NULL,
	[other_voucher] [bit] NULL ,
	[source] [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cheque_credited] [bit] NULL ,
	[temp_voucher_id] [int] NOT NULL ,
	[due_date] [datetime] NULL,
	[shop_id] [numeric](10, 0) NOT NULL ,
	[shop_code] [nvarchar](3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Action] [varchar] (50),
	[Action_date] datetime 
 
) ON [PRIMARY]
END
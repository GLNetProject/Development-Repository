If not Exists(SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblGlVoucherDetailHistory]') AND type in (N'U') )
Begin
--Drop table [tblGlVoucherDetailHistory]
CREATE TABLE [dbo].[tblGlVoucherDetailHistory](
	[VDetail_id] int identity (1,1) Not NULL,
	[id] int  NOT NULL ,
	[voucher_detail_id] [int] NOT NULL,
	[voucher_id] [int] NOT NULL,
	[location_id] [int] NOT NULL,
	[coa_detail_id] [int] NULL,
	[comments] [varchar](500) COLLATE Arabic_CI_AS NULL,
	[debit_amount] [money] NULL,
	[credit_amount] [money] NULL,
	[cost_center_id] [int] NULL,
	[sp_refrence] [varchar](25) COLLATE Arabic_CI_AS NULL,
	[direction] [varchar](25) COLLATE Arabic_CI_AS NULL,
	[shop_id] [numeric](10, 0) NOT NULL ,
	[Action]  [Varchar](50),
	[Action_date] datetime
) ON [PRIMARY]
END

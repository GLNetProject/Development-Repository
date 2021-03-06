 IF not EXISTS (select * from sys.tables where name='tblGLSMSConfiguration')
BEGIN

CREATE TABLE [dbo].[tblGLSMSConfiguration](
	[SMSConfig_id] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[SMS_Code] [nvarchar](15) COLLATE Arabic_CI_AS NULL,
	[Screen_Name] [nvarchar](75) COLLATE Arabic_CI_AS NULL,
	[Action] [nvarchar](75) COLLATE Arabic_CI_AS NULL,
	[Mode] [nvarchar](50) COLLATE Arabic_CI_AS NULL,
	[SMS_recipient] [nvarchar](20) COLLATE Arabic_CI_AS NULL,
	[Send_SMS] [bit] NULL,
	[SMS] [nvarchar](800) COLLATE Arabic_CI_AS NULL,
	[PhoneNumber] [nvarchar](100) COLLATE Arabic_CI_AS NULL,
 CONSTRAINT [PK_tblGLSMSConfiguration] PRIMARY KEY CLUSTERED 
(
	[SMSConfig_id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]



END 
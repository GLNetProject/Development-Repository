/****** Object:  StoredProcedure [dbo].[sp_Rpt_AgedPayableLedger]    Script Date: 06/01/2012 11:55:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Rpt_AgedPayableLedger]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Rpt_AgedPayableLedger]
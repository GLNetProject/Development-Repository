IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.Sp_SalesTaxInvoice') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Sp_SalesTaxInvoice]
CREATE VIEW [dbo].[vwGLPLNotesCurrentDtlFinal]
AS
SELECT     PL_Note_Title, sub_sub_code, sub_sub_title, Detail_Code, detail_Title, SUM(debit_amount) AS debit_amount, SUM(credit_amount) AS credit_amount, 
                      SUM(ClosingAmount) AS ClosingAmount, year_code
FROM         dbo.vwGLPLNotesCurrentDtl
GROUP BY PL_Note_Title, sub_sub_code, sub_sub_title, Detail_Code, detail_Title, year_code
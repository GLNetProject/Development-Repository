CREATE VIEW [dbo].[vwGLPLNotesDetail]
AS
SELECT     TOP (100) PERCENT dbo.tblGlDefGLNotes.note_no, dbo.tblGlDefGLNotes.note_title, dbo.tblGlCOAMainSubSub.sub_sub_code, 
                      dbo.tblGlCOAMainSubSub.sub_sub_title, ISNULL(dbo.vwGLPLNotesCurrentDtlFinal.Detail_Code, dbo.vwGLPLNotesPrevDtlFinal.detail_code) 
                      AS Detail_Code, ISNULL(dbo.vwGLPLNotesCurrentDtlFinal.detail_Title, dbo.vwGLPLNotesPrevDtlFinal.detail_title) AS detail_Title, 
                      ISNULL(dbo.vwGLPLNotesCurrentDtlFinal.debit_amount,0) as debit_amount, Isnull(dbo.vwGLPLNotesCurrentDtlFinal.credit_amount,0) as  credit_amount,
					 Isnull(dbo.vwGLPLNotesCurrentDtlFinal.ClosingAmount,0) as ClosingAmount, 
                      ISNULL(dbo.vwGLPLNotesPrevDtlFinal.debit_amount, 0) AS debit_amount_Prev, ISNULL(dbo.vwGLPLNotesPrevDtlFinal.credit_amount, 0) 
                      AS credit_amount_Prev, ISNULL(dbo.vwGLPLNotesPrevDtlFinal.ClosingAmount, 0) AS ClosingAmount_Prev
FROM         dbo.tblGlDefGLNotes INNER JOIN
                      dbo.tblGlCOAMainSubSub ON dbo.tblGlDefGLNotes.gl_note_id = dbo.tblGlCOAMainSubSub.PL_note_id INNER JOIN
                      dbo.tblGlCOAMainSubSubDetail ON dbo.tblGlCOAMainSubSub.main_sub_sub_id = dbo.tblGlCOAMainSubSubDetail.main_sub_sub_id LEFT OUTER JOIN
                      dbo.vwGLPLNotesPrevDtlFinal ON dbo.tblGlCOAMainSubSubDetail.detail_code = dbo.vwGLPLNotesPrevDtlFinal.detail_code AND 
                      dbo.tblGlCOAMainSubSub.sub_sub_code = dbo.vwGLPLNotesPrevDtlFinal.sub_sub_code LEFT OUTER JOIN
                      dbo.vwGLPLNotesCurrentDtlFinal ON dbo.tblGlCOAMainSubSubDetail.detail_code = dbo.vwGLPLNotesCurrentDtlFinal.Detail_Code AND 
                      dbo.tblGlCOAMainSubSub.sub_sub_code = dbo.vwGLPLNotesCurrentDtlFinal.sub_sub_code
WHERE     (NOT (ISNULL(dbo.vwGLPLNotesCurrentDtlFinal.detail_Title, dbo.vwGLPLNotesPrevDtlFinal.detail_title) IS NULL))
ORDER BY dbo.tblGlDefGLNotes.note_no
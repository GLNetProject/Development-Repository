CREATE VIEW [dbo].[vwGLPLNotesDetail]
AS
SELECT     TOP (100) PERCENT dbo.tblGlDefGLNotes.note_no, dbo.tblGlDefGLNotes.note_title, dbo.tblGlCOAMainSubSub.sub_sub_code, 
                      dbo.tblGlCOAMainSubSub.sub_sub_title, dbo.vwGLPLNotesCurrentDtlFinal.Detail_Code, dbo.vwGLPLNotesCurrentDtlFinal.detail_Title, 
                      dbo.vwGLPLNotesCurrentDtlFinal.debit_amount, dbo.vwGLPLNotesCurrentDtlFinal.credit_amount, dbo.vwGLPLNotesCurrentDtlFinal.ClosingAmount, 
                      ISNULL(dbo.vwGLPLNotesPrevDtlFinal.debit_amount, 0) AS debit_amount_Prev, ISNULL(dbo.vwGLPLNotesPrevDtlFinal.credit_amount, 0) 
                      AS credit_amount_Prev, ISNULL(dbo.vwGLPLNotesPrevDtlFinal.ClosingAmount, 0) AS ClosingAmount_Prev
FROM         dbo.tblGlDefGLNotes INNER JOIN
                      dbo.tblGlCOAMainSubSub ON dbo.tblGlDefGLNotes.gl_note_id = dbo.tblGlCOAMainSubSub.PL_note_id INNER JOIN
                      dbo.tblGlCOAMainSubSubDetail ON dbo.tblGlCOAMainSubSub.main_sub_sub_id = dbo.tblGlCOAMainSubSubDetail.main_sub_sub_id LEFT OUTER JOIN
                      dbo.vwGLPLNotesPrevDtlFinal ON dbo.tblGlCOAMainSubSubDetail.detail_code = dbo.vwGLPLNotesPrevDtlFinal.detail_code AND 
                      dbo.tblGlCOAMainSubSub.sub_sub_code = dbo.vwGLPLNotesPrevDtlFinal.sub_sub_code LEFT OUTER JOIN
                      dbo.vwGLPLNotesCurrentDtlFinal ON dbo.tblGlCOAMainSubSubDetail.detail_code = dbo.vwGLPLNotesCurrentDtlFinal.Detail_Code AND 
                      dbo.tblGlCOAMainSubSub.sub_sub_code = dbo.vwGLPLNotesCurrentDtlFinal.sub_sub_code
WHERE     (NOT (dbo.vwGLPLNotesCurrentDtlFinal.detail_Title IS NULL))
ORDER BY dbo.tblGlDefGLNotes.note_no
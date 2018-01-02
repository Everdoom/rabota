Attribute VB_Name = "NewMacros"
Sub ИМТ()
'
' ИМТ Макрос
'
'
UserForm1.Show
End Sub
Sub Жалобы()
'
' ИМТ Макрос
'
'
Jalob.Show 0
End Sub
Sub Макрос1()
Attribute Макрос1.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Макрос1"
'
' Макрос1 Макрос
'
'
    Selection.PasteAndFormat (wdFormatPlainText)
End Sub
Sub Макрос2()
Attribute Макрос2.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Макрос2"
'
' Макрос2 Макрос
'
'
    Selection.MoveUp Unit:=wdLine, Count:=2
    Selection.MoveLeft Unit:=wdCharacter, Count:=4
End Sub

Sub Макрос3()
Attribute Макрос3.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Макрос3"
'
' Макрос3 Макрос
'
'
    ActiveWindow.Close
End Sub
Sub Макрос4()
Attribute Макрос4.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Макрос4"
'
' Макрос4 Макрос
'
'
    Application.PrintOut FileName:="", Range:=wdPrintRangeOfPages, Item:= _
        wdPrintDocumentWithMarkup, Copies:=1, Pages:="1,1,1,2,2,2", PageType:= _
        wdPrintAllPages, Collate:=True, Background:=True, PrintToFile:=False, _
        PrintZoomColumn:=0, PrintZoomRow:=0, PrintZoomPaperWidth:=0, _
        PrintZoomPaperHeight:=0
End Sub
Sub canvert()
Dim A As String
Dim B As String
Dim C As String
Dim D As String
Dim i As Integer
Dim j As Integer
A = "`1234567890-=qwertyuiop[]asdfghjkl;'\zxcvbnm,./ ~!@#$%^&*()_+QWERTYUIOP{}ASDFGHJKL:|ZXCVBNM<>?"
B = "ё1234567890-=йцукенгшщзхъфывапролджэ\ячсмитьбю. Ё!@№;%:?*()_+ЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖ/ЯЧСМИТЬБЮ,"
C = Selection.Text
For i = 1 To Len(C)
   For j = 1 To Len(A)
     If Mid$(A, j, 1) = Mid$(C, i, 1) Then D = D + Mid$(B, j, 1)
   Next
Next
Selection.Text = D

End Sub
Sub Ss()
'
' Макрос3 Макрос
'
'
   skf.Show
End Sub

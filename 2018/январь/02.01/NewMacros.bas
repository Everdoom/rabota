Attribute VB_Name = "NewMacros"
Sub ���()
'
' ��� ������
'
'
UserForm1.Show
End Sub
Sub ������()
'
' ��� ������
'
'
Jalob.Show 0
End Sub
Sub ������1()
Attribute ������1.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.������1"
'
' ������1 ������
'
'
    Selection.PasteAndFormat (wdFormatPlainText)
End Sub
Sub ������2()
Attribute ������2.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.������2"
'
' ������2 ������
'
'
    Selection.MoveUp Unit:=wdLine, Count:=2
    Selection.MoveLeft Unit:=wdCharacter, Count:=4
End Sub

Sub ������3()
Attribute ������3.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.������3"
'
' ������3 ������
'
'
    ActiveWindow.Close
End Sub
Sub ������4()
Attribute ������4.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.������4"
'
' ������4 ������
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
B = "�1234567890-=�����������������������\���������. �!@�;%:?*()_+����������������������/���������,"
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
' ������3 ������
'
'
   skf.Show
End Sub

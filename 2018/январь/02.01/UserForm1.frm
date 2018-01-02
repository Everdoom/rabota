VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserForm1 
   Caption         =   "ИМТ"
   ClientHeight    =   3225
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4710
   OleObjectBlob   =   "UserForm1.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UserForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CommandButton1_Click()
On Error Resume Next

Selection.TypeText Text:=Label4.Caption
UserForm1.Hide
End Sub

Private Sub TextBox1_Change()
On Error Resume Next
Dim A As String

A = Round(TextBox2.Text / (TextBox1.Text * TextBox1.Text), 1)
D = 40
If A > D Then
Label4.Caption = "Ожирение III" + "ст. (ИМТ " + A + "кг/м2) алим.-конституционального генеза, стабильное течение."
Else:
If A < D And A > 35 Then
Label4.Caption = "Ожирение II" + "ст. (ИМТ " + A + "кг/м2) алим.-конституционального генеза, стабильное течение."
Else:
If A < 35 And A > 30 Then
Label4.Caption = "Ожирение I" + "ст. (ИМТ " + A + "кг/м2) алим.-конституционального генеза, стабильное течение."
Else:
If A < 30 And A > 20 Then
Label4.Caption = "Нормальный вес"
Else:
Label4.Caption = "недостаточный вес"
End If
End If
End If
 End If
Label3.Caption = A

End Sub

Private Sub TextBox2_Change()
On Error Resume Next
Dim A As String
A = Round(TextBox2.Text / (TextBox1.Text * TextBox1.Text), 1)
D = 40
If A > D Then
Label4.Caption = "Ожирение III" + "ст. (ИМТ " + A + "кг/м2) алим.-конституционального генеза, стабильное течение."
Else:
If A < D And A > 35 Then
Label4.Caption = "Ожирение II" + "ст. (ИМТ " + A + "кг/м2) алим.-конституционального генеза, стабильное течение."
Else:
If A < 35 And A > 30 Then
Label4.Caption = "Ожирение I" + "ст. (ИМТ " + A + "кг/м2) алим.-конституционального генеза, стабильное течение."
Else:
If A < 30 And A > 20 Then
Label4.Caption = "Нормальный вес"
Else:
Label4.Caption = "недостаточный вес"
End If
End If
End If
 End If
Label3.Caption = A

End Sub

Private Sub UserForm_Click()

End Sub

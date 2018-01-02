VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserForm3 
   Caption         =   "UserForm3"
   ClientHeight    =   4110
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6165
   OleObjectBlob   =   "UserForm3.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UserForm3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CommandButton1_Click()
Dim txtSampleTextBox As MSForms.TextBox
For i = 1 To 5
Set txtSampleTextBox = Controls.Add("Forms.TextBox.1", "txtSampleTextBox")
 txtSampleTextBox.Top = 20 + i * 20

txtSampleTextBox.Text = i + 1
 
Next i
End Sub

Private Sub TextBox1_Change()
If TextBox1.Text = "" Then
CheckBox4.Value = False
Else
CheckBox4.Value = True
CheckBox4.Caption = "увеличение веса на "
CheckBox4.Caption = CheckBox4.Caption + TextBox1.Text + " кг"

End If
End Sub

Private Sub UserForm_Click()

End Sub



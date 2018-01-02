VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} SKF 
   Caption         =   "ÑÊÔ"
   ClientHeight    =   3225
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4710
   OleObjectBlob   =   "SKF.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "SKF"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Label1_Click()
skfs
End Sub


Private Sub Label4_Click()
skf.Hide
End Sub

Private Sub UserForm_Click()

End Sub
Private Sub skfs()
On Error Resume Next
Dim A As String
Dim B As String
A = Round((1.23 * (((140 - TextBox3.Text) * TextBox1.Text) / TextBox4.Text)), 1)
B = Round((1.05 * (((140 - TextBox3.Text) * TextBox1.Text) / TextBox4.Text)), 1)
Label5.Caption = "Ìóæ. " + A
Label6.Caption = "Æåí. " + B

End Sub


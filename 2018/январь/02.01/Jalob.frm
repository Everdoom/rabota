VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} Jalob 
   Caption         =   "Жалобы"
   ClientHeight    =   7035
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   10530
   OleObjectBlob   =   "Jalob.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "Jalob"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub CheckBox5_Click()

End Sub

Private Sub ComboBox1_Change()
TextBox2.Text = TextBox2.Text + ComboBox1.Text + ", "

End Sub

Private Sub CommandButton1_Click()
Label1.Caption = ""
Dim ctl As Control
For Each ctl In Me.Controls
If TypeName(ctl) = "CheckBox" Then
If ctl.Value = True Then
' Do what you want to do if checkbox is checked
'ctl.BackColor = 555
Label1.Caption = Label1.Caption + ctl.Caption + ", "
Else
' Label1.BackColor = 444
' Debug.Print ctl.Name & " is not checked."
Label1.Caption = Label1.Caption
End If
End If
'
Next
TextBox2.Text = Label1.Caption
End Sub

Private Sub CommandButton2_Click()
Label1.Caption = ""
Dim ctl As Control
For Each ctl In Me.Controls
If TypeName(ctl) = "CheckBox" Then
If ctl.Value = True Then
If ctl.TabIndex = 1 Then
' Do what you want to do if checkbox is checked
'ctl.BackColor = 555
Label1.Caption = Label1.Caption + ctl.Caption + ", "
Else
' Label1.BackColor = 444
' Debug.Print ctl.Name & " is not checked."
Label1.Caption = Label1.Caption
End If
End If
End If
'
Next
End Sub

Private Sub CommandButton3_Click()
Selection.TypeText Text:=Label1.Caption
Me.Hide
End Sub

Private Sub CommandButton4_Click()
CheckBox1 = True
CheckBox2 = True
CheckBox6 = True
CheckBox7 = True
CheckBox8 = True
CheckBox9 = True
End Sub

Private Sub CommandButton5_Click()
Dim ctl As Control
For Each ctl In Me.Controls
If TypeName(ctl) = "CheckBox" Then
ctl.Value = False
Else
End If
Next
End Sub

Private Sub CommandButton8_Click()
Время.Show 0

End Sub

Private Sub OptionButton1_Click()
If OptionButton1 = True Then
CheckBox5.Caption = "увеличение веса на " + TextBox1.Text + " кг"
'CheckBox5.Caption = CheckBox5.Caption + TextBox1.Text + " кг"
Else
CheckBox5.Caption = "cнижение веса на " + TextBox1.Text + " кг"
'CheckBox5.Caption = CheckBox5.Caption + TextBox1.Text + " кг"
End If
End Sub

Private Sub OptionButton2_Click()
If OptionButton1 = True Then
CheckBox5.Caption = "увеличение веса на " + TextBox1.Text + " кг"
'CheckBox5.Caption = CheckBox5.Caption + TextBox1.Text + " кг"
Else
CheckBox5.Caption = "cнижение веса на " + TextBox1.Text + " кг"
'CheckBox5.Caption = CheckBox5.Caption + TextBox1.Text + " кг"
End If
End Sub


Private Sub OptionButton5_Click()
If OptionButton5 = True Then
CheckBox18.Caption = "повышение АД до " + TextBox3.Text + " мм.рт.ст"
'CheckBox5.Caption = CheckBox5.Caption + TextBox1.Text + " кг"
Else
CheckBox18.Caption = "cнижение АД на " + TextBox3.Text + " мм.рт.ст"
'CheckBox5.Caption = CheckBox5.Caption + TextBox1.Text + " кг"
End If
End Sub

Private Sub OptionButton6_Click()
If OptionButton5 = True Then
CheckBox18.Caption = "повышение АД до " + TextBox3.Text + " мм.рт.ст"
'CheckBox5.Caption = CheckBox5.Caption + TextBox1.Text + " кг"
Else
CheckBox18.Caption = "cнижение АД на " + TextBox3.Text + " мм.рт.ст"
'CheckBox5.Caption = CheckBox5.Caption + TextBox1.Text + " кг"
End If
End Sub

Private Sub TextBox1_Change()
OptionButton1_Click
'CheckBox5.Caption = CheckBox5.Caption + TextBox1.Text
If TextBox1.Text = "" Then
CheckBox5.Value = False
Else
CheckBox5.Value = True
End If
End Sub

Private Sub TextBox3_Change()
OptionButton5_Click
'CheckBox5.Caption = CheckBox5.Caption + TextBox1.Text
If TextBox3.Text = "" Then
CheckBox18.Value = False
Else
CheckBox18.Value = True
End If
End Sub

Private Sub UserForm_Activate()
ComboBox1.AddItem "дыня"
ComboBox1.AddItem "дыня2"
ComboBox1.AddItem "дыня3"
ComboBox1.AddItem "дыня5"
End Sub

Private Sub UserForm_Click()
Label1.Caption = ""
End Sub

Private Sub UserForm_MouseMove(ByVal Button As Integer, ByVal Shift As Integer, ByVal X As Single, ByVal Y As Single)
Label1.Caption = ""
Dim ctl As Control
For Each ctl In Jalob.Controls
If TypeName(ctl) = "CheckBox" Then
If ctl.Value = True Then
'If ctl.TabIndex = 1 Then
' Do what you want to do if checkbox is checked
'ctl.BackColor = 555
Label1.Caption = Label1.Caption + ctl.Caption + ", "
Else
' Label1.BackColor = 444
' Debug.Print ctl.Name & " is not checked."
Label1.Caption = Label1.Caption
End If
End If
'End If
'
Next
End Sub

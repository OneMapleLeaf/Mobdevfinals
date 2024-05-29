B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Activity
Version=12.8
@EndOfDesignText@
#Region  Activity Attributes 
	#FullScreen: False
	#IncludeTitle: false
#End Region

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'These variables can be accessed from all modules.

End Sub

Sub Globals
	'These global variables will be redeclared each time the activity is created.
	'These variables can only be accessed from this module.

	Private LabelRegisterNow As Label
	Private LabelForgetPassword As Label
	Private ButtonLogin As Button
	Private EditTextEmail As EditText
	Private EditTextPassword As EditText
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("LayoutLogin")

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Private Sub ButtonLogin_Click
	If EditTextEmail.Text = "" Or EditTextPassword.Text = "" Then
		ToastMessageShow("PLease fill up all fields", True)
		Return
	End If
	Starter.cursor = Starter.sql.ExecQuery($"SELECT email, password FROM user_info WHERE email = '${EditTextEmail.Text}' AND password = '${EditTextPassword.Text}'"$)
	If Starter.cursor.RowCount > 0 Then
		StartActivity(Main)
	Else
		ToastMessageShow("Wrong email or password. Try again", True)
	End If
End Sub

Private Sub LabelForgetPassword_Click
	
End Sub

Private Sub LabelRegisterNow_Click
	StartActivity(Register)
End Sub
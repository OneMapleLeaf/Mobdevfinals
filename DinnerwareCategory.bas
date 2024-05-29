B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Activity
Version=12.8
@EndOfDesignText@
#Region  Activity Attributes 
	#FullScreen: False
	#IncludeTitle: False
#End Region

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'These variables can be accessed from all modules.

End Sub

Sub Globals
	'These global variables will be redeclared each time the activity is created.
	'These variables can only be accessed from this module.

	Private ImageViewDinnerware1 As ImageView
	Private ProductDinnerware1Name As Label
	Private ProductDinnerware1Price As Label
	Private ImageViewDinnerware2 As ImageView
	Private ProductDinnerware2Name As Label
	Private ProductDinnerware2Price As Label
	Private ImageViewDinnerware3 As ImageView
	Private ProductDinnerware3Name As Label
	Private ProductDinnerware3Price As Label
	Private ImageViewDinnerware4 As ImageView
	Private ProductDinnerware4Name As Label
	Private ProductDinnerware4Price As Label
	Private ImageViewDinnerware5 As ImageView
	Private ProductDinnerware5Name As Label
	Private ProductDinnerware5Price As Label
	Private ImageViewDinnerware6 As ImageView
	Private ProductDinnerware6Name As Label
	Private ProductDinnerware6Price As Label
	
	Private PanelDinnerware1 As Panel
	Private PanelDinnerware2 As Panel
	Private PanelDinnerware3 As Panel
	Private PanelDinnerware4 As Panel
	Private PanelDinnerware5 As Panel
	Private PanelDinnerware6 As Panel
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("LayoutDinnerware")

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub

Private Sub PanelDinnerware1_Click
	ProductDescription.Image = ImageViewDinnerware1.Bitmap
	ProductDescription.Name = ProductDinnerware1Name.Text
	ProductDescription.Price = ProductDinnerware1Price.Text
	ProductDescription.Series = "klar"
	ProductDescription.Model = "Kl002+"
	ProductDescription.Number = "4001"
	ProductDescription.Material = "Clear Glass"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelDinnerware2_Click
	ProductDescription.Image = ImageViewDinnerware2.Bitmap
	ProductDescription.Name = ProductDinnerware2Name.Text
	ProductDescription.Price = ProductDinnerware2Price.Text
	ProductDescription.Series = "klar"
	ProductDescription.Model = "Kl002"
	ProductDescription.Number = "4002"
	ProductDescription.Material = "Clear Glass"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelDinnerware3_Click
	ProductDescription.Image = ImageViewDinnerware3.Bitmap
	ProductDescription.Name = ProductDinnerware3Name.Text
	ProductDescription.Price = ProductDinnerware3Price.Text
	ProductDescription.Series = "Ritvia"
	ProductDescription.Model = "113"
	ProductDescription.Number = "4003"
	ProductDescription.Material = "Stainless Steel"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelDinnerware4_Click
	ProductDescription.Image = ImageViewDinnerware4.Bitmap
	ProductDescription.Name = ProductDinnerware4Name.Text
	ProductDescription.Price = ProductDinnerware4Price.Text
	ProductDescription.Series = "Ritvia"
	ProductDescription.Model = "113"
	ProductDescription.Number = "4004"
	ProductDescription.Material = "Stainless Steel"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelDinnerware5_Click
	ProductDescription.Image = ImageViewDinnerware5.Bitmap
	ProductDescription.Name = ProductDinnerware5Name.Text
	ProductDescription.Price = ProductDinnerware5Price.Text
	ProductDescription.Series = "Ritvia"
	ProductDescription.Model = "113"
	ProductDescription.Number = "4005"
	ProductDescription.Material = "Stainless Steel"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelDinnerware6_Click
	ProductDescription.Image = ImageViewDinnerware6.Bitmap
	ProductDescription.Name = ProductDinnerware6Name.Text
	ProductDescription.Price = ProductDinnerware6Price.Text
	ProductDescription.Series = "Nordic"
	ProductDescription.Model = "Pty"
	ProductDescription.Number = "4006"
	ProductDescription.Material = "Stainless Steel"
	
	StartActivity(ProductDescription)
End Sub

Private Sub LabelShoppingCart_Click
	StartActivity(ShoppingCart)
End Sub
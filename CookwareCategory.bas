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

	Private LabelHome As Label
	Private LabelCookware As Label
	Private PanelCookware6 As Panel
	Private PanelCookware5 As Panel
	Private PanelCookware4 As Panel
	Private PanelCookware3 As Panel
	Private PanelCookware2 As Panel
	Private PanelCookware1 As Panel
	Private ImageViewCookware1 As ImageView
	Private ProductCookware1Name As Label
	Private ProductCookware1Price As Label
	Private ImageViewCookware2 As ImageView
	Private ProductCookware2Name As Label
	Private ProductCookware2Price As Label
	Private ImageViewCookware3 As ImageView
	Private ProductCookware3Name As Label
	Private ProductCookware3Price As Label
	Private ImageViewCookware4 As ImageView
	Private ProductCookware4Name As Label
	Private ProductCookware4Price As Label
	Private ImageViewCookware5 As ImageView
	Private ProductCookware5Name As Label
	Private ProductCookware5Price As Label
	Private ImageViewCookware6 As ImageView
	Private ProductCookware6Name As Label
	Private ProductCookware6Price As Label
	Private LabelShoppingCart As Label
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("LayoutCookware")
End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Private Sub LabelCookware_Click
	
End Sub

Private Sub LabelHome_Click
	
End Sub

Private Sub PanelCookware1_Click
	ProductDescription.Image = ImageViewCookware1.Bitmap
	ProductDescription.Name = ProductCookware1Name.Text
	ProductDescription.Price = ProductCookware1Price.Text
	ProductDescription.Series = "Rela"
	ProductDescription.Model = "406"
	ProductDescription.Number = "1001"
	ProductDescription.Material = "Stainless Steel"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelCookware2_Click
	ProductDescription.Image = ImageViewCookware2.Bitmap
	ProductDescription.Name = ProductCookware2Name.Text
	ProductDescription.Price = ProductCookware2Price.Text
	ProductDescription.Series = "Armor"
	ProductDescription.Model = "tqf28"
	ProductDescription.Number = "1002"
	ProductDescription.Material = "Aluminum"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelCookware3_Click
	ProductDescription.Image = ImageViewCookware3.Bitmap
	ProductDescription.Name = ProductCookware3Name.Text
	ProductDescription.Price = ProductCookware3Price.Text
	ProductDescription.Series = "Rooster Rock"
	ProductDescription.Model = "Ew553"
	ProductDescription.Number = "1003"
	ProductDescription.Material = "Aluminum"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelCookware4_Click
	ProductDescription.Image = ImageViewCookware4.Bitmap
	ProductDescription.Name = ProductCookware4Name.Text
	ProductDescription.Price = ProductCookware4Price.Text
	ProductDescription.Series = "Food Warmer"
	ProductDescription.Model = "K500"
	ProductDescription.Number = "1004"
	ProductDescription.Material = "Stainless Steel"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelCookware5_Click
	ProductDescription.Image = ImageViewCookware5.Bitmap
	ProductDescription.Name = ProductCookware5Name.Text
	ProductDescription.Price = ProductCookware5Price.Text
	ProductDescription.Series = "Nature"
	ProductDescription.Model = "Mw32"
	ProductDescription.Number = "1005"
	ProductDescription.Material = "Stainless Steel"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelCookware6_Click
	ProductDescription.Image = ImageViewCookware6.Bitmap
	ProductDescription.Name = ProductCookware6Name.Text
	ProductDescription.Price = ProductCookware6Price.Text
	ProductDescription.Series = "Kessel"
	ProductDescription.Model = "Ts28"
	ProductDescription.Number = "1006"
	ProductDescription.Material = "Stainless Steel"
	
	StartActivity(ProductDescription)
End Sub

Private Sub LabelShoppingCart_Click
	StartActivity(ShoppingCart)
End Sub
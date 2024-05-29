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

	Private PanelKitchenTools2 As Panel
	Private PanelKitchenTools1 As Panel
	Private ImageViewKitchenTools1 As ImageView
	Private ProductKitchenTools1Name As Label
	Private ProductKitchenTools1Price As Label
	Private ImageViewKitchenTools2 As ImageView
	Private ProductKitchenTools2Name As Label
	Private ProductKitchenTools2Price As Label
	Private PanelKitchenTools4 As Panel
	Private ProductKitchenTools4Price As Label
	Private ProductKitchenTools4Name As Label
	Private ImageViewKitchenTools3 As ImageView
	Private ImageViewKitchenTools4 As ImageView
	Private ProductKitchenTools3Name As Label
	Private ProductKitchenTools3Price As Label
	Private ImageViewKitchenTools5 As ImageView
	Private ImageViewKitchenTools6 As ImageView
	Private ProductKitchenTools6Name As Label
	Private ProductKitchenTools6Price As Label
	Private ProductKitchenTools5Price As Label
	Private ProductKitchenTools5Name As Label
	Private PanelKitchenTools5 As Panel
	Private PanelKitchenTools6 As Panel
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("layoutKitchenTools")
End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub

Private Sub PanelKitchenTools1_Click
	ProductDescription.Image = ImageViewKitchenTools1.Bitmap
	ProductDescription.Name = ProductKitchenTools1Name.Text
	ProductDescription.Price = ProductKitchenTools1Price.Text
	ProductDescription.Series = "Yoko"
	ProductDescription.Model = "HinLabaYoko"
	ProductDescription.Number = "2001"
	ProductDescription.Material = "Plastic"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelKitchenTools2_Click
	ProductDescription.Image = ImageViewKitchenTools2.Bitmap
	ProductDescription.Name = ProductKitchenTools2Name.Text
	ProductDescription.Price = ProductKitchenTools2Price.Text
	ProductDescription.Series = "Kari"
	ProductDescription.Model = "05vi"
	ProductDescription.Number = "2002"
	ProductDescription.Material = "Plastic"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelKitchenTools3_Click
	ProductDescription.Image = ImageViewKitchenTools3.Bitmap
	ProductDescription.Name = ProductKitchenTools3Name.Text
	ProductDescription.Price = ProductKitchenTools3Price.Text
	ProductDescription.Series = "GTRock"
	ProductDescription.Model = "KT17"
	ProductDescription.Number = "1003"
	ProductDescription.Material = "Aluminum"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelKitchenTools4_Click
	ProductDescription.Image = ImageViewKitchenTools4.Bitmap
	ProductDescription.Name = ProductKitchenTools4Name.Text
	ProductDescription.Price = ProductKitchenTools4Price.Text
	ProductDescription.Series = "Onsen"
	ProductDescription.Model = "Mp37"
	ProductDescription.Number = "2004"
	ProductDescription.Material = "Wood"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelKitchenTools5_Click
	ProductDescription.Image = ImageViewKitchenTools5.Bitmap
	ProductDescription.Name = ProductKitchenTools5Name.Text
	ProductDescription.Price = ProductKitchenTools5Price.Text
	ProductDescription.Series = "Shinsen"
	ProductDescription.Model = "Sld01"
	ProductDescription.Number = "2005"
	ProductDescription.Material = "Plastic"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelKitchenTools6_Click
	ProductDescription.Image = ImageViewKitchenTools6.Bitmap
	ProductDescription.Name = ProductKitchenTools5Name.Text
	ProductDescription.Price = ProductKitchenTools6Price.Text
	ProductDescription.Series = "Euroware"
	ProductDescription.Model = "2106"
	ProductDescription.Number = "2006"
	ProductDescription.Material = "Stainless Steel"
	
	StartActivity(ProductDescription)
End Sub

Private Sub LabelShoppingCart_Click
	StartActivity(ShoppingCart)
End Sub
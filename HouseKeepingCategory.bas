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

	Private ImageViewHouseKeeping1 As ImageView
	Private ProductHouseKeeping1Price As Label
	Private ImageViewHouseKeeping2 As ImageView
	Private ProductHouseKeeping2Name As Label
	Private ProductHouseKeeping2Price As Label
	Private ImageViewHouseKeeping3 As ImageView
	Private ProductHouseKeeping3Name As Label
	Private ProductHouseKeeping3Price As Label
	Private ImageViewHouseKeeping4 As ImageView
	Private ProductHouseKeeping4Name As Label
	Private ProductHouseKeeping4Price As Label
	Private ImageViewHouseKeeping5 As ImageView
	Private ProductHouseKeeping5Name As Label
	Private ProductHouseKeeping5Price As Label
	Private ImageViewHouseKeeping6 As ImageView
	Private ProductHouseKeeping6Name As Label
	Private ProductHouseKeeping6Price As Label
	Private ProductHouseKeeping1Name As Label
	
	Private PanelHouseKeeping1 As Panel
	Private PanelHouseKeeping2 As Panel
	Private PanelHouseKeeping3 As Panel
	Private PanelHouseKeeping4 As Panel
	Private PanelHouseKeeping5 As Panel
	Private PanelHouseKeeping6 As Panel
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("LayoutHouseKeeping")

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub

Private Sub PanelHouseKeeping1_Click
	ProductDescription.Image = ImageViewHouseKeeping1.Bitmap
	ProductDescription.Name = ProductHouseKeeping1Name.Text
	ProductDescription.Price = ProductHouseKeeping1Price.Text
	ProductDescription.Series = "Cotton Floor Mat"
	ProductDescription.Model = "3140a"
	ProductDescription.Number = "5001"
	ProductDescription.Material = "Cotton+Latex"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelHouseKeeping2_Click
	ProductDescription.Image = ImageViewHouseKeeping2.Bitmap
	ProductDescription.Name = ProductHouseKeeping2Name.Text
	ProductDescription.Price = ProductHouseKeeping2Price.Text
	ProductDescription.Series = "Ezweep"
	ProductDescription.Model = "890n"
	ProductDescription.Number = "5002"
	ProductDescription.Material = "Plastic"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelHouseKeeping3_Click
	ProductDescription.Image = ImageViewHouseKeeping3.Bitmap
	ProductDescription.Name = ProductHouseKeeping3Name.Text
	ProductDescription.Price = ProductHouseKeeping3Price.Text
	ProductDescription.Series = "Tokyo"
	ProductDescription.Model = "Hin.Kedd.Toky"
	ProductDescription.Number = "5003"
	ProductDescription.Material = "Plastic"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelHouseKeeping4_Click
	ProductDescription.Image = ImageViewHouseKeeping4.Bitmap
	ProductDescription.Name = ProductHouseKeeping4Name.Text
	ProductDescription.Price = ProductHouseKeeping4Price.Text
	ProductDescription.Series = "Hiro"
	ProductDescription.Model = "RO15"
	ProductDescription.Number = "5004"
	ProductDescription.Material = "Plastic"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelHouseKeeping5_Click
	ProductDescription.Image = ImageViewHouseKeeping5.Bitmap
	ProductDescription.Name = ProductHouseKeeping5Name.Text
	ProductDescription.Price = ProductHouseKeeping5Price.Text
	ProductDescription.Series = "Step Stool"
	ProductDescription.Model = "Step Stool"
	ProductDescription.Number = "5005"
	ProductDescription.Material = "Plastic"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelHouseKeeping6_Click
	ProductDescription.Image = ImageViewHouseKeeping6.Bitmap
	ProductDescription.Name = ProductHouseKeeping6Name.Text
	ProductDescription.Price = ProductHouseKeeping6Price.Text
	ProductDescription.Series = "NC"
	ProductDescription.Model = "Mps4"
	ProductDescription.Number = "5006"
	ProductDescription.Material = "Plastic"
	
	StartActivity(ProductDescription)
End Sub

Private Sub LabelShoppingCart_Click
	StartActivity(ShoppingCart)
End Sub
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

	Private ImageViewFoodStorage1 As ImageView
	Private ProductFoodStorage1Name As Label
	Private ProductFoodStorage1Price As Label
	Private ImageViewFoodStorage2 As ImageView
	Private ProductFoodStorage2Name As Label
	Private ProductFoodStorage2Price As Label
	Private ImageViewFoodStorage3 As ImageView
	Private ProductFoodStorage3Name As Label
	Private ProductFoodStorage3Price As Label
	Private ImageViewFoodStorage4 As ImageView
	Private ProductFoodStorage4Name As Label
	Private ProductFoodStorage4Price As Label
	Private ImageViewFoodStorage5 As ImageView
	Private ProductFoodStorage5Name As Label
	Private ProductFoodStorage5Price As Label
	Private ImageViewFoodStorage6 As ImageView
	Private ProductFoodStorage6Name As Label
	Private ProductFoodStorage6Price As Label
	
	Private PanelFoodStorage1 As Panel
	Private PanelFoodStorage2 As Panel
	Private PanelFoodStorage3 As Panel
	Private PanelFoodStorage4 As Panel
	Private PanelFoodStorage6 As Panel
	Private PanelFoodStorage5 As Panel
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("LayoutFoodStorage")

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub

Private Sub PanelFoodStorage1_Click
	ProductDescription.Image = ImageViewFoodStorage1.Bitmap
	ProductDescription.Name = ProductFoodStorage1Name.Text
	ProductDescription.Price = ProductFoodStorage1Price.Text
	ProductDescription.Series = "Kumla"
	ProductDescription.Model = "w4"
	ProductDescription.Number = "3001"
	ProductDescription.Material = "Clear Glass"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelFoodStorage2_Click
	ProductDescription.Image = ImageViewFoodStorage2.Bitmap
	ProductDescription.Name = ProductFoodStorage2Name.Text
	ProductDescription.Price = ProductFoodStorage2Price.Text
	ProductDescription.Series = "Home Basics"
	ProductDescription.Model = "7336"
	ProductDescription.Number = "3002"
	ProductDescription.Material = "Clear Glass"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelFoodStorage3_Click
	ProductDescription.Image = ImageViewFoodStorage3.Bitmap
	ProductDescription.Name = ProductFoodStorage3Name.Text
	ProductDescription.Price = ProductFoodStorage3Price.Text
	ProductDescription.Series = "How Basics"
	ProductDescription.Model = "337D"
	ProductDescription.Number = "3003"
	ProductDescription.Material = "Clear Glass"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelFoodStorage4_Click
	ProductDescription.Image = ImageViewFoodStorage4.Bitmap
	ProductDescription.Name = ProductFoodStorage4Name.Text
	ProductDescription.Price = ProductFoodStorage4Price.Text
	ProductDescription.Series = "Home Basics"
	ProductDescription.Model = "338D"
	ProductDescription.Number = "3004"
	ProductDescription.Material = "Clear Glass"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelFoodStorage5_Click
	ProductDescription.Image = ImageViewFoodStorage5.Bitmap
	ProductDescription.Name = ProductFoodStorage5Name.Text
	ProductDescription.Price = ProductFoodStorage5Price.Text
	ProductDescription.Series = "Home Basics"
	ProductDescription.Model = "8212D"
	ProductDescription.Number = "3005"
	ProductDescription.Material = "Clear Glass"
	
	StartActivity(ProductDescription)
End Sub

Private Sub PanelFoodStorage6_Click
	ProductDescription.Image = ImageViewFoodStorage6.Bitmap
	ProductDescription.Name = ProductFoodStorage6Name.Text
	ProductDescription.Price = ProductFoodStorage6Price.Text
	ProductDescription.Series = "Home Basics"
	ProductDescription.Model = "857D"
	ProductDescription.Number = "3006"
	ProductDescription.Material = "Clear Glass"
	
	StartActivity(ProductDescription)
End Sub

Private Sub LabelShoppingCart_Click
	StartActivity(ShoppingCart)
End Sub
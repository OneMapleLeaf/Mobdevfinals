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
	Public Image As Bitmap
	Public Name As String 
	Public Series As String 
	Public Model As String
	Public Number As String
	Public Material As String
	Public Price As Int 
	Public Quantity As Int 
	
	
End Sub

Sub Globals
	'These global variables will be redeclared each time the activity is created.
	'These variables can only be accessed from this module.

	Private LabelProductName As Label
	Private LabelProductPrice As Label
	Private PanelInScrollViewProductDescription As Panel
	Private ScrollViewProductDescription As ScrollView

	Private LabelSeries As Label
	Private LabelModel As Label
	Private LabelItemNumber As Label
	Private LabelMaterial As Label
	Private LPDBuy_Btn As Button
	Private LabelQuantity As EditText
	

	Private ImageView1 As ImageView
	Private decrease_btn As Button
	Private increase_btn As Button
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("LayoutProductDescription")
	ScrollViewProductDescription.Panel.LoadLayout("LayoutScrollViewProductDescription")
	ScrollViewProductDescription.Panel.Height = PanelInScrollViewProductDescription.Height

	ImageView1.Bitmap = Image
	LabelProductName.Text = $"${Name}"$
	LabelSeries.Text = $"Series: ${Series}"$
	LabelModel.Text = $"Model: ${Model}"$
	LabelItemNumber.Text = $"Item Number: ${Number}"$
	LabelMaterial.Text = $"Material: ${Material}"$
	LabelProductPrice.Text = $"${Price}"$
	Quantity = LabelQuantity.Text

	If FirstTime Then
		ProductInfo.imageList.Initialize
		ProductInfo.nameList.Initialize
		ProductInfo.priceList.Initialize
		ProductInfo.quantityList.Initialize
	End If
	
	
End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Private Sub LPDBuy_Btn_Click
	MoveToCart
	Activity.Finish
	StartActivity(ShoppingCart)
End Sub

Private Sub ATC_Btn_Click
	MoveToCart
	ToastMessageShow("Product added to cart", False)
End Sub

Private Sub MoveToCart
	ProductInfo.imageList.Add(Image)
	ProductInfo.nameList.Add(Name)
	ProductInfo.quantityList.Add(Quantity)
	ProductInfo.priceList.Add(Price * Quantity)
	ShoppingCart.isCartAdded = True
	
	LabelQuantity.Text = 1
	Quantity = LabelQuantity.Text 
End Sub
Private Sub LabelShoppingCart_Click
	StartActivity(ShoppingCart)
End Sub

Private Sub increase_btn_Click
	Dim updatedQuantity As Int = LabelQuantity.Text
	If updatedQuantity < 50 Then
		updatedQuantity = updatedQuantity + 1
	End If
	LabelQuantity.Text = updatedQuantity
	Quantity = LabelQuantity.Text
End Sub

Private Sub decrease_btn_Click
	Dim updatedQuantity As Int = LabelQuantity.Text
	If updatedQuantity > 1 Then
		updatedQuantity = updatedQuantity - 1
	End If
	LabelQuantity.Text = updatedQuantity
	Quantity = LabelQuantity.Text
End Sub
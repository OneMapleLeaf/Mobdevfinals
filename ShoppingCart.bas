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
	Public isCartAdded As Boolean
End Sub

Sub Globals
	'These global variables will be redeclared each time the activity is created.
	'These variables can only be accessed from this module.

	Private CustomListViewShoppingCart As CustomListView
	Private CartProdName As Label
	Private CartProdQuant As Label
	Private CartProdPrice As Label
	Private CartCheckBox As Label
	Private LabelPrice As Label
	
	Private CartProdImage As ImageView
	
	Private ButtonMinus As Button
	Private ButtonAdd As Button
	
	Private del_btn As Button
	Private QuantValue As Label
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("LayoutShoppingCart")

	If FirstTime Then
		If isCartAdded Then
			For i = 0 To ProductInfo.nameList.Size - 1
				AddProductToList(ProductInfo.imageList.Get(i), ProductInfo.nameList.Get(i), ProductInfo.priceList.Get(i), ProductInfo.quantityList.Get(i))
				LabelPrice.Text = LabelPrice.Text + ProductInfo.priceList.Get(i)
				isCartAdded = False
			Next
		End If
	End If

	

End Sub

Sub Activity_Resume
	If isCartAdded Then
		For i = 0 To ProductInfo.nameList.Size - 1
			AddProductToList(ProductInfo.imageList.Get(i), ProductInfo.nameList.Get(i), ProductInfo.priceList.Get(i), ProductInfo.quantityList.Get(i))
			LabelPrice.Text = LabelPrice.Text + ProductInfo.priceList.Get(i)
			isCartAdded = False
		Next
	End If
End Sub

Sub Activity_Pause (UserClosed As Boolean)
	isCartAdded = True
End Sub

Sub updateProducts
	CustomListViewShoppingCart.Clear
	For i = 0 To ProductInfo.nameList.Size - 1
		AddProductToList(ProductInfo.imageList.Get(i), ProductInfo.nameList.Get(i), ProductInfo.priceList.Get(i), ProductInfo.quantityList.Get(i))
		LabelPrice.Text = LabelPrice.Text + ProductInfo.priceList.Get(i)
		isCartAdded = False
	Next
End Sub
Private Sub AddProductToList(prodImage As Bitmap, prodName As String, prodPrice As String, prodQuant As String)
	Dim pnl As B4XView	
	Dim isDuplicate As Boolean = False
	Dim duplicateIndex As Int = -1
	
	For i = 0 To CustomListViewShoppingCart.Size - 1
		pnl = CustomListViewShoppingCart.GetPanel(i)
		If pnl.GetView(0).GetView(3).Text = prodName Then
			isDuplicate = True
			duplicateIndex = i
			Exit
		End If
	Next
	If isDuplicate Then
		Log("dupe")
		pnl = CustomListViewShoppingCart.GetPanel(duplicateIndex)
		Dim oldQuant As Int = pnl.GetView(0).GetView(2).Text.SubString2(10, pnl.GetView(0).GetView(2).Text.Length)
		Dim newQuant As Int = oldQuant + prodQuant
		pnl.GetView(0).GetView(2).Text = $"Quantity: ${newQuant}"$
		Dim oldPrice As Int = pnl.GetView(0).GetView(5).Text
		Dim newPrice As Int = oldPrice + prodPrice
		pnl.GetView(0).GetView(5).Text = newPrice
	Else
		Dim pnl2 As Panel
		pnl2.Initialize("LayoutCustomListViewShoppingCartContent")
		pnl2.LoadLayout("LayoutCustomListViewShoppingCartContent")
		pnl2.SetLayoutAnimated(100,0,0,50%x,180dip)
		pnl2.Tag = CustomListViewShoppingCart.Size
		CartProdImage.Bitmap = prodImage
		CartProdName.Text = prodName
		CartProdPrice.Text = prodPrice
		CartProdQuant.Text = $"Quantity: ${prodQuant}"$
		
		
		del_btn.Tag = CustomListViewShoppingCart.Size
		ButtonAdd.Tag = CustomListViewShoppingCart.Size
		ButtonMinus.Tag = CustomListViewShoppingCart.Size
		del_btn.Initialize("del_btn")
		ButtonAdd.Initialize("ButtonAdd")
		ButtonMinus.Initialize("ButtonMinus")
		
        
		CustomListViewShoppingCart.Add(pnl2, "")
	End If
End Sub






Private Sub CustomListViewShoppingCart_ItemClick (Index As Int, Value As Object)
	Log(Index)
	Dim pnl As B4XView = CustomListViewShoppingCart.GetPanel(Index)
		For i = 0 To pnl.GetView(0).NumberOfViews - 1
		Dim v As View = pnl.GetView(0).GetView(i)
	   Log(v)
		Next
	If pnl.GetView(0).GetView(0).Text = "" Then
		pnl.GetView(0).GetView(0).Text = ""
	Else
		pnl.GetView(0).GetView(0).Text = ""
	End If
	

	'check = 
	'square = 
	If pnl.GetView(0).GetView(0).Text = "" Then
		LabelPrice.Text = LabelPrice.Text + pnl.GetView(0).GetView(5).Text
	End If
	If pnl.GetView(0).GetView(0).Text = "" Then
		LabelPrice.Text = LabelPrice.Text - pnl.GetView(0).GetView(5).Text
	End If
End Sub


Private Sub del_btn_Click
	Dim btn As Button = Sender
	Dim index As Int = btn.Tag

	If index >= 0 And index < CustomListViewShoppingCart.Size Then
		LabelPrice.Text = LabelPrice.Text - ProductInfo.priceList.Get(index)
		CustomListViewShoppingCart.RemoveAt(index)
		ProductInfo.imageList.RemoveAt(index)
		ProductInfo.nameList.RemoveAt(index)
		ProductInfo.quantityList.RemoveAt(index)
		ProductInfo.priceList.RemoveAt(index)
		For i = index To CustomListViewShoppingCart.Size - 1
			CustomListViewShoppingCart.GetPanel(i).GetView(0).GetView(8).Tag = i
			CustomListViewShoppingCart.GetPanel(i).GetView(0).GetView(7).Tag = i
			CustomListViewShoppingCart.GetPanel(i).GetView(0).GetView(6).Tag = i
		Next
		If CustomListViewShoppingCart.Size <= 0 Then
			Return
		End If
	End If
End Sub


Private Sub ButtonAdd_Click
	Dim btn As Button = Sender
	Dim index As Int = btn.Tag
	Dim pnl As B4XView = CustomListViewShoppingCart.GetPanel(index)
	Dim quant As Int = pnl.GetView(0).GetView(2).Text.SubString2(10, pnl.GetView(0).GetView(2).Text.Length)
	If index >= 0 And index < CustomListViewShoppingCart.Size Then
		If quant < 50 Then
			quant = quant + 1
			pnl.GetView(0).GetView(2).Text = $"Quantity: ${quant}"$
			Dim origPrice As Int = ProductInfo.priceList.Get(index) / ProductInfo.quantityList.Get(index)
			pnl.GetView(0).GetView(5).Text = pnl.GetView(0).GetView(5).Text + origPrice
			LabelPrice.Text = LabelPrice.Text + origPrice
			ProductInfo.priceList.Set(index, pnl.GetView(0).GetView(5).Text)
			ProductInfo.quantityList.Set(index, quant)
			
		End If
	End If
End Sub

Private Sub ButtonMinus_Click
	Dim btn As Button = Sender
	Dim index As Int = btn.Tag
	Dim pnl As B4XView = CustomListViewShoppingCart.GetPanel(index)
	Dim quant As Int = pnl.GetView(0).GetView(2).Text.SubString2(10, pnl.GetView(0).GetView(2).Text.Length)
	If index >= 0 And index < CustomListViewShoppingCart.Size Then
		If quant > 1 Then
			quant = quant - 1
			pnl.GetView(0).GetView(2).Text = $"Quantity: ${quant}"$
			Dim origPrice As Int = ProductInfo.priceList.Get(index) / ProductInfo.quantityList.Get(index)
			pnl.GetView(0).GetView(5).Text = pnl.GetView(0).GetView(5).Text - origPrice
			LabelPrice.Text = LabelPrice.Text - origPrice
			ProductInfo.priceList.Set(index, pnl.GetView(0).GetView(5).Text)
			ProductInfo.quantityList.Set(index, quant)
		End If
	End If
End Sub
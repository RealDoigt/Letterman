Class Character

	Private X
	Private Y
	Public Shape
	Private ElementId

	Private Sub Class_Initialize()

		X = 0
		Y = 0
		Shape = "T"
		ElementId = 0
	End Sub

	Public Property Get PosX

		PosX = X
	End Property

	Public Property Get PosY
		
		PosY = Y
	End Property
	
	Public Property Get Id
		
		Id = ElementId
	End Property

	Private Sub ChangeId()
		
		ElementId = X + (Y * .01)
	End Sub
	
	Public Sub MoveX(num)
	
		X = X + num
		ChangeId()
	End Sub

	Public Sub MoveY(num)
		
		Y = Y + num
		ChangeId()
	End Sub

	Public Sub Draw()
		
		document.getElementById(ElementId).innerText = Shape
	End Sub
End Class
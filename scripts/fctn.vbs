Function CanGoThrough(futurePosX, futurePosY)

	Dim boolCGT : boolCGT = True

	If futurePosX <= UBound(MAP) AND futurePosX >= 0 AND futurePosY <= UBound(MAP, 2) AND futurePosY >= 0 then

		For Each thing in obstacle

			If map(futurePosX, futurePosY) = thing AND boolCGT AND thing <> obstacle(4) then

				boolCGT = False
			End If
		Next

		Else
			boolCGT = False
	End If

	CanGoThrough = boolCGT
 End Function
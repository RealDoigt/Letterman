Sub Erase(id)

	document.getElementById(id).innerText = ""
End Sub

Sub Document_OnKeyUp()

	input = Window.Event.Keycode
	
	' Down: WASD; IJKL
	If (input = 83 OR input = 73) AND CanGoThrough(LetterMan.PosX, LetterMan.PosY + 1) then

		Erase(LetterMan.Id)
		LetterMan.MoveY(1)
		LetterMan.Draw()
	End If

	' Up: WASD; IJKL
	If (input = 87 OR input = 75) AND CanGoThrough(LetterMan.PosX, LetterMan.PosY - 1) then

		Erase(LetterMan.Id)
		LetterMan.MoveY(-1)
		LetterMan.Draw()
	End If

	' Left: WASD; IJKL
	If (input = 65 OR input = 74) AND CanGoThrough(LetterMan.PosX - 1, LetterMan.PosY) then

		Erase(LetterMan.Id)
		LetterMan.MoveX(-1)
		LetterMan.Draw()
	End If

	' Right: WASD; IJKL
	If (input = 68 OR input = 76) AND CanGoThrough(LetterMan.PosX + 1, LetterMan.PosY) then

		Erase(LetterMan.Id)
		LetterMan.MoveX(1)
		LetterMan.Draw()
	End If
End Sub

' Incomplete: prototype
Sub SaveGame(fileName)

	'Binary Save File
	'Prevents people from easily editing their save games.

	file = fileName & ".bsf"
	Set streamWrite = CreateObject("Scripting.FileSystemObject")
	Set saveFile = streamWrite.CreateTextFile(file, True)
	saveFile.WriteLine("This is a test.")
	saveFile.WriteLine("This is a test.")
	saveFile.Close
End Sub

Sub LoadMap(fileName)

	file = fileName & ".map"
	Set streamRead = CreateObject("Scripting.FileSystemObject")
	Set mapFile = streamRead.OpenTextFile(file)

	Dim count : count = 0

	Do Until mapFile.AtEndOfStream

		line = Split(mapFile.ReadLine,";")

		For scount = 0 to UBound(Map, 2) Step 1

			map(scount, count) = obstacle(line(scount))
		Next

		count = count + 1
	Loop
End Sub

Sub DrawMap(map)

	For count = 0 to UBound(Map, 2) Step 1

		For scount = 0 to UBound(Map) Step 1
			
			Dim temp : temp = scount + (count * .01)
			document.getElementById(temp).innerText = map(scount, count)
			
			If Map(scount, count) = obstacle(0) then
			
				document.getElementById(temp).style.background = "url(img/bricks.png)"
			
				ElseIf Not Map(scount, count) = obstacle(4) then
			
					document.getElementById(temp).innerHtml = "<img src='img/" & Map(scount, count) & ".png')/>"
					
			End If
			
			If Map(scount, count) = obstacle(0) OR Map(scount, count) = "none" then
			
				document.getElementById(temp).innerText = " "
			End If
		Next
	Next
End Sub

Sub Torture()

	Dim torture : torture = 0

	Do Until torture = 100

		Dim choice
		choice = Msgbox("LetterMan, the T-shaped man, is depressed. He does not want to go anywhere unless he is told that he is loved enough times to lift his depression. Do you wish to tell LetterMan, the T-shaped man, that you love him?",4)
			
		If choice = 6 then

			torture = torture + 1
		 
			Else
				torture = 0
		End If

	Loop
End Sub
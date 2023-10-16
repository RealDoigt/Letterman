Dim obstacle(4)
obstacle(0) = "wall" : obstacle(1) = "door" : obstacle(2) = "chest" : obstacle(3) = "enemy" : obstacle(4) = "none"

Dim map(99, 99)

' Msgbox "Welcome to LetterMan: The Game"
' Msgbox "The goal of the game is to move LetterMan, the T-shaped man, to the end of the Deadly Labyrinth of Dreadfully Ill Omen. Be warned, this game is not remotely fair. This game was designed with one very specific goal: induce feelings of intense hatred, annoyance and rage to the player. You were warned."
' Msgbox "By the way, the story of the game goes as follow: Once upon a time, a man dared LetterMan, the T-shaped man, to find the treasure of the Deadly Labyrinth of Dreadfully Ill Omen and consume the fabled item."
' Msgbox "The treasure is said to be some kind of magical liquid which, when ingested, will have one of the following effects on the person drinking the potion: eternal youth, super strength, telekinetic powers....."
' Msgbox ".....a blue tongue, highly flexible toes and thumbs...... or death. Good luck and good game. Do not forget to die regularly; it is more entertaining that way!"
' Msgbox "Oh and also, the rumours which say that you get a monetary incentive/compensation for playing this game are false. Every single person who propagated these rumours are paid actors; they are expert propagandists, they cannot be trusted."
' Msgbox "So, huh, what are you still doing here? Should not you be playing this game right about now?"
' Msgbox "One last thing before you start. Your time will not be refunded. If your time was so precious, you would not have wasted it reading these unending messages."

' Torture()

' TODOSOONER: CREATE VISUAL TABLE MAP WITH ID PER ROOM, CHEST, GUARD
' TODOSOONER: CREATE INTRO TEXT WITH HOW TO GAME

' TODOSOONISH: SAVE GAME (ROOM/CORRIDOR DISCOVERED, POS, INV, CUSTOM SAVE FILE NAME, HAS STARTED BOOLEAN)
' TODOSOONISH: LOAD GAME
' TODOSOONISH: LOAD MAP FROM FILE

' TODOLATER: CREATE GUARD BEHAVIOUR WHEN PLAYER IN SIGHT RANGE
' TODOLATER: CREATE THING OBJECT GUARD
' TODOLATER: ROOMS/CORRIDORS WITH NON HTML IDs
' TODOLATER: DOORS ASSOCIATED TO ROOMS/CORRIDORS
' TODOLATER: CHESTS (WITH INVENTORY IN CHEST)
' TODOLATER: FURNITURE
' TODOLATER: ENCRYPT SAVE FILES
' TODOLATER: TELEPORTERS


LoadMap("map")
DrawMap(map)

Dim LetterMan : Set LetterMan = New Character
LetterMan.MoveY(99)
LetterMan.Draw()
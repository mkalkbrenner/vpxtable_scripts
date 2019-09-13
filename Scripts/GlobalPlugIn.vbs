Option Explicit

Dim mk47LUTs, mk47LUTPos

mk47LUTs = array("colorgradelut256x16_1to1SL10", "colorgradelut256x16_1to1SL20", "colorgradelut256x16_1to1SL30", "colorgradelut256x16_1to1SL40", "colorgradelut256x16_1to1SL50", "colorgradelut256x16_1to1SL60", "colorgradelut256x16_1to1SL70", "colorgradelut256x16_1to1SL80", "colorgradelut256x16_1to1SL90")

mk47LUTPos = 0

Sub nextLUT(tableObject)
	mk47LUTPos = mk47LUTPos + 1
	If mk47LUTPos > ubound(mk47LUTs) Then
		mk47LUTPos = 0
	end if
	tableObject.ColorGradeImage = mk47LUTs(mk47LUTPos)
End Sub

Sub prevLUT(tableObject)
	mk47LUTPos = mk47LUTPos - 1
	If mk47LUTPos < 0 Then
		mk47LUTPos = ubound(mk47LUTs)
	end if
	tableObject.ColorGradeImage = mk47LUTs(mk47LUTPos)
End Sub

Sub switchLUT(tableObject, ByVal keycode)
	If keycode = 51 then
		prevLUT tableObject
	End If
	If keycode = 52 then
		nextLUT tableObject
	End If
End Sub

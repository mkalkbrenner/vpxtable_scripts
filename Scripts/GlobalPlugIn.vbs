Option Explicit

Dim luts, lutpos

luts = array("colorgradelut256x16_1to1SL10", "colorgradelut256x16_1to1SL20", "colorgradelut256x16_1to1SL30", "colorgradelut256x16_1to1SL40", "colorgradelut256x16_1to1SL50", "colorgradelut256x16_1to1SL60", "colorgradelut256x16_1to1SL70", "colorgradelut256x16_1to1SL80", "colorgradelut256x16_1to1SL90")

lutpos = 0

Sub nextLUT(tableObject)
	lutpos = lutpos + 1
	If lutpos > ubound(luts) Then
		lutpos = 0
	end if
	tableObject.ColorGradeImage = luts(lutpos)
End Sub

Sub prevLUT(tableObject)
	lutpos = lutpos - 1
	If lutpos < 0 Then
		lutpos = ubound(luts)
	end if
	tableObject.ColorGradeImage = luts(lutpos)
End Sub

Sub switchLUT(tableObject, ByVal keycode)
	If keycode = 51 then
		prevLUT tableObject
	End If
	If keycode = 52 then
		nextLUT tableObject
	End If
End Sub

Sub LUT_KeyDown(ByVal Keycode)
    switchLUT Table1, keycode
End Sub
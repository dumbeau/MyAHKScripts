z::		
	WinMinimize, A
	Return
3::	
	FormatTime, time, A_now,yyMMdd
	send, % time
	Soundplay, %A_ScriptDir%\Sound\Blip.mp3
	return
4::
	MouseGetPos, mx, my
	PixelGetColor, pixelcol, mx, my, RGB
	pixelcol := SubStr(pixelcol, 3, 6)
	clipboard = %pixelcol%
	Soundplay, %A_ScriptDir%\Sound\Blip.mp3
	Return
+4::
	MouseGetPos, mx, my
	PixelGetColor, pixelcol, mx, my, RGB
	pixelcol := SubStr(pixelcol, 3, 6)
	CR := "#" . pixelcol
	NumPut( "0x" SubStr(CR,-5), (V:="000000") )
	clipboard := NumGet(V,2,"UChar") "," NumGet(V,1,"UChar") "," NumGet(V,0,"UChar")
	Soundplay, %A_ScriptDir%\Sound\Blip.mp3
	Return
e::
	Send, {end}
	sleep, 5
	Send, +{home}
	Return
c::
	Send, {end}
	sleep, 5
	Send, +{home}
	sleep, 5
	Send, ^c
	Return
r::
	WinGetTitle, WinTitle, A
	WinGetPos, winX, winY, width, height, A
	CoordMode, Mouse, Screen
	MouseGetPos, mouseSX, mouseSY
	CoordMode, Mouse, Relative
	MouseGetPos, mouseRX, mouseRY
	if (mouseSX < winX){
		if (mouseSY > winY){
			WinMove, %WinTitle%,,mouseSX,, width+(winX-mouseSX), mouseRY
		}else{
			WinMove, %WinTitle%,, mouseSX, mouseSY, width+(winX-mouseSX), height+(winY-mouseSY)		
		}	
	}else{ ;mouse in front of origin
		if (mouseSY > winY){ ;mouse below origin
			WinMove, %WinTitle%,,,, mouseRX, mouseRY
		} else { ;mouse above origin
			WinMove, %WinTitle%,,,mouseSY, mouseRX, height+(winY-mouseSY)
		}	
	}	
	Return
	
+r::
	CoordMode, Mouse, Screen
	MouseGetPos, mouseSX, mouseSY
	WinGetPos, winX, winY, width, height, A
	WinMove, A, , mouseSX-(width/2), mouseSY-(width/3)
	Return

+w::send #{up}
+a::send #{left}
+s::send #{down}
+d::send #{right}
	
F4::
	Run, "%A_ScriptDir%\General\Close All Scripts.ahk"
	Return
; w::
	; MouseGetPos, mX, mY
	; CoordMode, Mouse, Screen
	; WinMove,mX, mY
	; return
	
	

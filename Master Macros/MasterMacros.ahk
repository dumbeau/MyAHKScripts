;Ctrl ^ Shift + Alt !

#Persistent
#SingleInstance ignore
#MaxHotkeysPerInterval 5000
CoordMode, Mouse, Screen


humansleep := 3
InputMod := 0
BlockX := 0

; BlockOverride := 0
gpress := 0


GroupAdd, RegApps, ahk_exe Animate.exe
GroupAdd, RegApps, ahk_exe AfterFX.exe
GroupAdd, RegApps, ahk_class Photoshop
GroupAdd, RegApps, ahk_exe Illustrator.exe
GroupAdd, RegApps, ahk_exe Adobe Premiere Pro.exe
GroupAdd, RegApps, ahk_exe FL64.exe
GroupAdd, RegApps, ahk_class Notepad++



#Include %A_ScriptDir%\General\1GlobalFunctions.ahk
return

;---------------
;Default Profile
;---------------
#If !WinActive("ahk_group RegApps")
{
#Include %A_ScriptDir%\General\1pgmod.ahk
return
}

#If InputMod = 1 && !WinActive("ahk_group RegApps")
{
;Minimize Active Window
z::
	If gpress = 0
		BlockX := 1
	WinMinimize, A
	Return
4::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%\General\CopyHexcode.ahk"
	Return
e::
	If gpress = 0
		BlockX := 1
	#Include %A_ScriptDir%\General\Select Line.ahk
	Return
c::
	If gpress = 0
		BlockX := 1
	#Include %A_ScriptDir%\General\Copy Line.ahk
	Return
r::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%\General\Resize Window.ahk"
	Return
F4::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%\General\Close All Scripts.ahk"
	Return
}


;---------
;FL Studio
;---------

#IfWinActive ahk_exe FL64.exe
{
#IncludeAgain %A_ScriptDir%\General\1pgmod.ahk
}

#If InputMod = 1 && WinActive("ahk_exe FL64.exe")
{
1::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%/FL Studio/Add Param EQ.exe"
Return

2::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%/FL Studio/Add Limiter.exe"
Return

3::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%/FL Studio/Add Edison.exe"
Return

4::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%/FL Studio/Delete Effect.exe"
Return

F4::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%/FL Studio/ASIO Set 16.exe"
Return

F5::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%/FL Studio/ASIO Set 32.exe"
Return

F6::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%/FL Studio/ASIO Set 220.exe"
Return

F7::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%/FL Studio/ASIO Set 256.exe"
Return

F8::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%/FL Studio/ASIO Set 512.exe"
Return

F9::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%/FL Studio/ASIO Set 1024.exe"
Return

a::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%/FL Studio/Turn off Window Closing.exe"
Return

c::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%/FL Studio/Clear Windows.exe"
Return

f::	
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%/FL Studio/Add Formula Controller.exe"
Return

q::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%/FL Studio/Add FabFilter ProQ2.exe"
Return

r::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%/FL Studio/Add Valhalla Room.exe"
Return

s::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%/FL Studio/Add Saturn.exe"
Return

w::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%/FL Studio/Add PanOMatic.exe"
Return

t::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%/FL Studio/Add VintageVerb.exe"
Return
;Minimize Active Window
z::
	If gpress = 0
		BlockX := 1
	WinMinimize, A
	Return

}




;----------------
;Notepad++ Macros
;----------------

#IfWinActive ahk_class Notepad++
{
#IncludeAgain %A_ScriptDir%\General\1pgmod.ahk
}

#If InputMod = 1 && WinActive("ahk_class Notepad++")
{
z::
	If gpress = 0
		BlockX := 1
	WinMinimize, A
	Return
4::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%\General\CopyHexcode.ahk"
	Return
e::
	If gpress = 0
		BlockX := 1
	#IncludeAgain %A_ScriptDir%\General\Select Line.ahk
	Return
c::
	If gpress = 0
		BlockX := 1
	#IncludeAgain %A_ScriptDir%\General\Copy Line.ahk
	Return
r::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%\General\Resize Window.ahk"
	Return
F4::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%\General\Close All Scripts.ahk"
	Return
}



;-------
;Animate
;-------

#IfWinActive ahk_exe Animate.exe
{
;Deals with global PgUp functions
#IncludeAgain %A_ScriptDir%\General\1pgmod.ahk
}

#If InputMod = 1 && WinActive("ahk_exe Animate.exe")
{
z::
	If gpress = 0
		BlockX := 1
	WinMinimize, A
	Return
4::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%\General\CopyHexcode.ahk"
	Return
e::
	If gpress = 0
		BlockX := 1
	#IncludeAgain %A_ScriptDir%\General\Select Line.ahk
	Return
c::
	If gpress = 0
		BlockX := 1
	#IncludeAgain %A_ScriptDir%\General\Copy Line.ahk
	Return
F4::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%\General\Close All Scripts.ahk"
	Return
}


;---------
;Photoshop
;---------

#IfWinActive ahk_class Photoshop
{
;Deals with PgDn PgUp Modifications
#IncludeAgain %A_ScriptDir%\General\1pgmod.ahk
MButton::
	Send, {Space down}{LButton down}
	KeyWait, MButton
	Send, {LButton up}{Space up}
	Return
}

#If InputMod = 1 && WinActive("ahk_class Photoshop")
{
z::
	If gpress = 0
		BlockX := 1
	WinMinimize, A
	Return
4::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%\General\CopyHexcode.ahk"
	Return
e::
	If gpress = 0
		BlockX := 1
	#IncludeAgain %A_ScriptDir%\General\Select Line.ahk
	Return
c::
	If gpress = 0
		BlockX := 1
	#IncludeAgain %A_ScriptDir%\General\Copy Line.ahk
	Return
F4::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%\General\Close All Scripts.ahk"
	Return
}

;-------------
;After Effects
;-------------

#IfWinActive ahk_exe AfterFX.exe
{
#IncludeAgain %A_ScriptDir%\General\1pgmod.ahk
}

#If InputMod = 1 && WinActive("ahk_exe AfterFX.exe")
{
z::
	If gpress = 0
		BlockX := 1
	WinMinimize, A
	Return
4::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%\General\CopyHexcode.ahk"
	Return
e::
	If gpress = 0
		BlockX := 1
	#IncludeAgain %A_ScriptDir%\General\Select Line.ahk
	Return
c::
	If gpress = 0
		BlockX := 1
	#IncludeAgain %A_ScriptDir%\General\Copy Line.ahk
	Return
F4::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%\General\Close All Scripts.ahk"
	Return
f::
	If gpress = 0
		BlockX := 1
	If GetKeyState("Shift", "P")
	Run, "%A_ScriptDir%\Adobe\AfterEffects\Toggle Fill.ahk"
	else
	Run, "%A_ScriptDir%\Adobe\AfterEffects\Fill Type.ahk"
	Return
s::
	If gpress = 0
		BlockX := 1
	If GetKeyState("Shift", "P")
	Run, "%A_ScriptDir%\Adobe\AfterEffects\Toggle Stroke.ahk"
	else
	Run, "%A_ScriptDir%\Adobe\AfterEffects\Stroke Type.ahk"
	Return
d::
	If gpress = 0
		BlockX := 1
	Send, ^d
	sleep, 10
	Send, !^{up}
	sleep, 10
	Send, !^{down}
	Return

w:: ;Playhead to Cursor
	If gpress = 0
		BlockX := 1
	AEoffset := 8
	MouseGetPos, AEMouseX, AEMouseY 
	;check if tag icon has moved (or was ever found)
	Imagesearch, , , AETagX, AETagY, AETagX+11, AETagY+13, %A_ScriptDir%\Adobe\AfterEffects\ImageSearch\AELockIconS100.png
	If ErrorLevel = 1
		{
		ImageSearch, AETagX, AETagY, 0, 15, AEMouseX, AEMouseY,  %A_ScriptDir%\Adobe\AfterEffects\ImageSearch\AELockIconS100.png
		If ErrorLevel = 1
			Return
		}
	MouseClick, Left, AEMouseX, AETagY-11, ,0, D
	MouseGetPos, AEMouseX, 
	MouseMove, AEMouseX, AEMouseY
	loop
		{
		If !GetKeyState("w","P")
		break
		sleep, 3
		}
	Click, up
Return
	
1:: ;Toggle Visibility
	If gpress = 0
		BlockX := 1
	AEoffset := 8
	BlockInput, MouseMove
	MouseGetPos, AEMouseX, AEMouseY 
	;check if tag icon has moved (or was ever found)
	Imagesearch, , , AETagX, AETagY, AETagX+11, AETagY+13, %A_ScriptDir%\Adobe\AfterEffects\ImageSearch\AELockIconS100.png
	If ErrorLevel = 1
		{
		ImageSearch, AETagX, AETagY, 0, 15, AEMouseX, AEMouseY,  %A_ScriptDir%\Adobe\AfterEffects\ImageSearch\AELockIconS100.png
		If ErrorLevel = 1
			Return
		}
	PixelGetColor, selectcolori, AETagX+15, AEMouseY, fast
	loop, 20  ;A PixelSearech method could be faster than this.
		{
		PixelGetColor, selectcolorf, AETagX+15, AEMouseY+A_Index, fast
		; MouseMove, AETagX+15, AEMouseY+A_Index
		; sleep, 1000
		if (selectcolorf != selectcolori)
			{
			AElineY := AEMouseY+A_Index-AEoffset
			break
			}
		if A_Index = 21
			{
			Soundplay, %A_ScriptDir%\Sound\ToggleOff.wav
			BlockInput, MouseMoveOff
			Return
			}
		}

	; PixelSearch, AEClickX, , AETagX+15, AELineY, AETagX+340, AELineY, 0x909090, 60,Fast
	If Errorlevel = 1
		{
		Soundplay, %A_ScriptDir%\Sound\ToggleOff.wav
		BlockInput, MouseMoveOff
		Return
		}
	
	Else
	{
	MouseClick, Left, AETagX-40, AELineY, ,0
	MouseMove, AEMouseX, AEMouseY, 0
	}
	BlockInput, MouseMoveOff
Return

2:: ;Toggle Solo
	If gpress = 0
		BlockX := 1
	AEoffset := 8
	BlockInput, MouseMove
	MouseGetPos, AEMouseX, AEMouseY 
	;check if tag icon has moved (or was ever found)
	Imagesearch, , , AETagX, AETagY, AETagX+11, AETagY+13, %A_ScriptDir%\Adobe\AfterEffects\ImageSearch\AELockIconS100.png
	If ErrorLevel = 1
		{
		ImageSearch, AETagX, AETagY, 0, 15, AEMouseX, AEMouseY,  %A_ScriptDir%\Adobe\AfterEffects\ImageSearch\AELockIconS100.png
		If ErrorLevel = 1
			Return
		}
	PixelGetColor, selectcolori, AETagX+15, AEMouseY, fast
	loop, 20  ;A PixelSearech method could be faster than this.
		{
		PixelGetColor, selectcolorf, AETagX+15, AEMouseY+A_Index, fast
		; MouseMove, AETagX+15, AEMouseY+A_Index
		; sleep, 1000
		if (selectcolorf != selectcolori)
			{
			AElineY := AEMouseY+A_Index-AEoffset
			break
			}
		if A_Index = 21
			{
			Soundplay, %A_ScriptDir%\Sound\ToggleOff.wav
			BlockInput, MouseMoveOff
			Return
			}
		}

	; PixelSearch, AEClickX, , AETagX+15, AELineY, AETagX+340, AELineY, 0x909090, 60,Fast
	If Errorlevel = 1
		{
		Soundplay, %A_ScriptDir%\Sound\ToggleOff.wav
		BlockInput, MouseMoveOff
		Return
		}
	
	Else
	{
	MouseClick, Left, AETagX-8, AELineY, ,0
	MouseMove, AEMouseX, AEMouseY, 0
	}
	BlockInput, MouseMoveOff
Return		

3:: ;Toggle Lock
	If gpress = 0
		BlockX := 1
	AEoffset := 8
	BlockInput, MouseMove
	MouseGetPos, AEMouseX, AEMouseY 
	;check if tag icon has moved (or was ever found)
	Imagesearch, , , AETagX, AETagY, AETagX+11, AETagY+13, %A_ScriptDir%\Adobe\AfterEffects\ImageSearch\AELockIconS100.png
	If ErrorLevel = 1
		{
		ImageSearch, AETagX, AETagY, 0, 15, AEMouseX, AEMouseY,  %A_ScriptDir%\Adobe\AfterEffects\ImageSearch\AELockIconS100.png
		}
	PixelGetColor, selectcolori, AETagX+15, AEMouseY, fast
	loop, 20  ;A PixelSearech method could be faster than this.
		{
		PixelGetColor, selectcolorf, AETagX+15, AEMouseY+A_Index, fast
		; MouseMove, AETagX+15, AEMouseY+A_Index
		; sleep, 1000
		if (selectcolorf != selectcolori)
			{
			AElineY := AEMouseY+A_Index-AEoffset
			break
			}
		if A_Index = 21
			{
			Soundplay, %A_ScriptDir%\Sound\ToggleOff.wav
			BlockInput, MouseMoveOff
			Return
			}
		}

	; PixelSearch, AEClickX, , AETagX+15, AELineY, AETagX+340, AELineY, 0x909090, 60,Fast
	If Errorlevel = 1
		{
		Soundplay, %A_ScriptDir%\Sound\ToggleOff.wav
		BlockInput, MouseMoveOff
		Return
		}
	
	Else
	{
	MouseClick, Left, AETagX+5, AELineY, ,0
	MouseMove, AEMouseX, AEMouseY, 0
	}
	BlockInput, MouseMoveOff
Return		

a:: 
	If gpress = 0
		BlockX := 1
	AEoffset := 8
	BlockInput, MouseMove
	MouseGetPos, AEMouseX, AEMouseY 
	;check if tag icon has moved (or was ever found)
	Imagesearch, , , AETagX, AETagY, AETagX+11, AETagY+13, %A_ScriptDir%\Adobe\AfterEffects\ImageSearch\AELockIconS100.png
	If ErrorLevel = 1
		{
		ImageSearch, AETagX, AETagY, 0, 15, AEMouseX, AEMouseY,  %A_ScriptDir%\Adobe\AfterEffects\ImageSearch\AELockIconS100.png
		}
	PixelGetColor, selectcolori, AETagX+15, AEMouseY, fast
	loop, 20  ;A PixelSearech method could be faster than this.
		{
		PixelGetColor, selectcolorf, AETagX+15, AEMouseY+A_Index, fast
		; MouseMove, AETagX+15, AEMouseY+A_Index
		; sleep, 1000
		if (selectcolorf != selectcolori)
			{
			AElineY := AEMouseY+A_Index-AEoffset
			break
			}
		if A_Index = 21
			{
			Soundplay, %A_ScriptDir%\Sound\ToggleOff.wav
			BlockInput, MouseMoveOff
			Return
			}
		}

	PixelSearch, AEClickX, , AETagX+15, AELineY, AETagX+340, AELineY, 0x909090, 60,Fast
	If Errorlevel = 1
		{
		Soundplay, %A_ScriptDir%\Sound\ToggleOff.wav
		BlockInput, MouseMoveOff
		Return
		}
	
	Else
	{
	MouseClick, Left, AEClickX+2, AELineY, ,0
	MouseMove, AEMouseX, AEMouseY, 0
	}
	BlockInput, MouseMoveOff
Return	
}


;-----------
;Illustrator
;-----------

#IfWinActive ahk_exe Illustrator.exe
{
;Deals with PgDn PgUp modifications and global PgUp functions
#IncludeAgain %A_ScriptDir%\General\1pgmod.ahk
*MButton::
	Send, {Space down}{LButton down}
	loop
		{
		If !GetKeyState("MButton", "P")
			Break
		sleep, 6
		}
	Send, {LButton up}{Space up}
	Return
}

#If InputMod = 1 && WinActive("ahk_exe Illustrator.exe")
{
z::
	If gpress = 0
		BlockX := 1
	WinMinimize, A
	Return
4::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%\General\CopyHexcode.ahk"
	Return
e::
	If gpress = 0
		BlockX := 1
	#IncludeAgain %A_ScriptDir%\General\Select Line.ahk
	Return
c::
	If gpress = 0
		BlockX := 1
	#IncludeAgain %A_ScriptDir%\General\Copy Line.ahk
	Return
F4::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%\General\Close All Scripts.ahk"
	Return
f::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%\Adobe\Illustrator\SelectFillColor.ahk"
	Return
s::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%\Adobe\Illustrator\SelectStrokeColor.ahk"
	Return
}




;------------
;Premiere Pro
;------------

#IfWinActive ahk_exe Adobe Premiere Pro.exe
{

*WheelUp::
	If InputMod = 0
		{
		SendInput, {blind}{WheelUp}
		Return
		}
	If InputMod = 1
		{
		If gpress = 0
			BlockX := 1
		SendInput, {blind}{Left}
		Return
		}
	If InputMod = 2
		{
		SendInput, {blind}{Up}
		Return
		}
	Else
		{
		If gpress = 0
			BlockX := 1
		SendInput, {blind}{WheelUp}
		Return
		}


*WheelDown::
	If InputMod = 0
		{
		SendInput, {blind}{WheelDown}
		Return
		}
	If InputMod = 1
		{
		If gpress = 0
			BlockX := 1
		SendInput, {blind}{Right}
		Return
		}
	If InputMod = 2
		{
		SendInput, {blind}{Down}
		Return
		}
	Else
		{
		If gpress = 0
			BlockX := 1
		SendInput, {blind}{WheelDown}
		Return
		}

*Xbutton1::
	If (BlockX = 0)
		{
		SendInput, {blind}{XButton1}
		}
	BlockX := 0
	Return

*XButton2::
	If (BlockX = 0)
		{
		SendInput, {blind}{XButton2}
		}
	BlockX := 0
	Return

*NumpadDiv::
sleep, %humansleep%
If !GetKeyState("NumpadDiv", "P")
	{
	; LGS Press
	gpress := 1
	BlockX := 0
	}
Else
	{
	Send, {blind}{NumpadDiv}
	}
Return

*PrintScreen:: ;Deactivate Mods
sleep, %humansleep%
If !GetKeyState("PrintScreen", "P")
	{
	;LGS Press
	; BlockX := 0
	gpress := 0	
	InputMod := 0
	}
Else
	{
	;Human Press
	InputMod := 0
	; Send, {blind}{PrintScreen}
	}
Return

*PgDn::
sleep, %humansleep%
If !GetKeyState("PgDn", "P")
	{
	;LGS Press
	InputMod := 1
	}
Else
	{
	;Human Press
	Send, {blind}{PgDn}
	}
Return

*PgUp::
sleep, %humansleep%
If !GetKeyState("PgUp", "P")
	{
	;LGS Press g4&5
	InputMod := 2
	}
Else
	{
	;Human Press
	Send, {blind}{PgUp}
	}
Return

*Pause::
sleep, %humansleep%
If !GetKeyState("Pause", "P")
	{
	;LGS Press g5
	InputMod := 3
	Loop
		{
		send, {NumpadDiv}
		sleep 3
		If InputMod != 3
			break
		}
	}
Else
	{
	;Human Press
	Send, {blind}{Pause}
	}
Return

; #Include %A_ScriptDir%\Adobe\Premiere\1pgmodPre.ahk
;Premiere Pro Hot Text Edit Fix
~LButton::
If WinActive("ahk_exe Adobe Premiere Pro.exe")
	DllCall("SystemParametersInfo", UInt, 0x71, UInt, 0, UInt, 11, UInt, 0) ; Slightly Faster then Windows default
Return

~LButton Up::
DllCall("SystemParametersInfo", UInt, 0x70, UInt, 0, UInt, MOUSE_NOW, UInt, 0)
If MOUSE_NOW != 10 ; Check if the speed is not default, adjust this as needed.
	DllCall("SystemParametersInfo", UInt, 0x71, UInt, 0, UInt, 10, UInt, 0) ; Default Windows 6 Ticks [10], adjust this as needed. 
Return

MButton::
Send, h{LButton down}
loop
	{
	If !GetKeyState("MButton", "P")
		Break
	sleep, 2
	}
Send, {h up}v{LButton up}
Return
}

#If InputMod = 1 && WinActive("ahk_exe Adobe Premiere Pro.exe")
{
;Minimize Active Window
z::
	If gpress = 0
		BlockX := 1
	WinMinimize, A
	Return
4::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%\General\CopyHexcode.ahk"
	Return
e::
	If gpress = 0
		BlockX := 1
	#Include %A_ScriptDir%\General\Select Line.ahk
	Return
c::
	If gpress = 0
		BlockX := 1
	#Include %A_ScriptDir%\General\Copy Line.ahk
	Return
r::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%\General\Resize Window.ahk"
	Return
F4::
	If gpress = 0
		BlockX := 1
	Run, "%A_ScriptDir%\General\Close All Scripts.ahk"
	Return
}


















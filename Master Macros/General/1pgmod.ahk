;SC045 Pause
;SC027 semicolon
;SC028 apostrophe
;SC01A left bracket
;SC01B right bracket

;InputMod
; 0 = normal
; 1 = LEFT RIGHT
; 2 = UP DOWN
; 3 = COMMA PERIOD

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
	If InputMod = 3
		{
		If gpress = 0
			BlockX := 1
		SendInput, {blind}{SC033}
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
	If InputMod = 3
		{
		If gpress = 0
			BlockX := 1
		SendInput, {blind}{SC034}
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
	;LGS Press
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
	;LGS Press
	InputMod := 3
	}
Else
	{
	;Human Press
	Send, {blind}{Pause}
	}
Return



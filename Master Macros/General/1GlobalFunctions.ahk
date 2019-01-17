;After Effects     A
;Audacity          5
;Acrobat           1
;Blender           B
;Excel             X
;Explorer          E
;Fl Studio         F
;GitHub            G
;iCue              ;
;KeePass           K
;Illustrator       I
;Logitech GS       L
;Media Encoder     Q
;Messages          M
;Notepad           4
;Notepad++         N
;Premiere Pro      D
;Photoshop         P
;Powerpoint        2
;Slack             C
;Spotify           S
;ToDo              T
;Vivaldi           V
;Window Spy        0
;Word              W



CoordMode, Mouse, Relative
; CoordMode, Mouse, Client ;in case it's being weird with relative
#If InputMod = 3
{
; *LAlt::
; If gpress = 0
	; BlockX := 1
	; send, {Numpad0}
; Return

space::
If gpress = 0
	BlockX := 1
	send, {Numpad0}
Return

4::
If gpress = 0
	BlockX := 1
send, {NumpadSub}
Return

r::
If gpress = 0
	BlockX := 1
send, {NumpadAdd}
Return

f::
If gpress = 0
	BlockX := 1
send, {backspace}
Return

z::
If gpress = 0
	BlockX := 1
send, {SC033}
Return

+z::
If gpress = 0
	BlockX := 1
send, {{}
Return

x::
If gpress = 0
	BlockX := 1
send, {NumpadDot}
Return

+x::
If gpress = 0
	BlockX := 1
send, {}}
Return

v::
If gpress = 0
	BlockX := 1
send, {NumpadEnter}
Return

c::
If gpress = 0
	BlockX := 1
send, {NumpadSub}
Return

a::
If gpress = 0
	BlockX := 1
send, {Numpad1}
Return

+a::
If gpress = 0
	BlockX := 1
send, {[}
Return

s::
If gpress = 0
	BlockX := 1
send, {Numpad2}
Return

+s::
If gpress = 0
	BlockX := 1
send, {]}
Return

d::
If gpress = 0
	BlockX := 1
send, {Numpad3}
return

+d::
If gpress = 0
	BlockX := 1
send, {NumpadAdd}
return

q::
If gpress = 0
	BlockX := 1
send, {Numpad4}
return

+q::
If gpress = 0
	BlockX := 1
send, {NumpadDiv}
return

w::
If gpress = 0
	BlockX := 1
send, {Numpad5}
return

+w::
If gpress = 0
	BlockX := 1
send, {NumpadMult}
return

e::
If gpress = 0
	BlockX := 1
send, {Numpad6}
return

+e::
If gpress = 0
	BlockX := 1
send, {NumpadSub}
return

1::
If gpress = 0
	BlockX := 1
send, {Numpad7}
Return

+1::
If gpress = 0
	BlockX := 1
send, {(}
Return

2::
If gpress = 0
	BlockX := 1
send, {Numpad8}
return

+2::
If gpress = 0
	BlockX := 1
send, {)}
return

3::
If gpress = 0
	BlockX := 1
send, {Numpad9}
Return
}


#If InputMod = 2
{
;----------
;Acrobat DC
;----------
*1::
If GetKeyState("Ctrl", "P")
    {
    Run, "C:\Program Files (x86)\Adobe\Acrobat DC\Acrobat\Acrobat.exe"
	GroupAdd, bgacrobat, ahk_exe Acrobat.exe
    }
Else
    {
    IfWinNotExist, ahk_exe Acrobat.exe
        {
        Run, "C:\Program Files (x86)\Adobe\Acrobat DC\Acrobat\Acrobat.exe"
        GroupAdd, bgacrobat, ahk_exe Acrobat.exe
        Return
        }
    GroupAdd, bgacrobat, ahk_exe Acrobat.exe
    if WinActive("ahk_exe Acrobat.exe")
        {
        GroupActivate, bgacrobat, r
        sleep, 5
        }
    else
        {
        WinActivate ahk_exe Acrobat.exe
        }
    }
Return

;-------------
;After Effects
;-------------
*a::
If !WinExist("ahk_exe AfterFX.exe")
	{
	Run, "C:\Program Files\Adobe\Adobe After Effects CC 2019\Support Files\AfterFX.exe"
	}
Else
	{
	WinActivate ahk_exe AfterFX.exe
	}
Return

;--------
;Audacity
;--------
*5::
If !WinExist("ahk_exe audacity.exe")
	{
	Run, "C:\Program Files (x86)\Audacity\audacity.exe"
	}
Else
	{
	WinActivate ahk_exe audacity.exe
	}
Return


;-------
;Blender
;-------
*b::
If !WinExist("ahk_exe blender.exe")
	{
	Run, "C:\Program Files\Blender Foundation\blender-2.80 x64\blender.exe"
	}
Else
	{
	WinActivate ahk_exe blender.exe
	}
Return

;-----
;Excel
;-----
*x::
If GetKeyState("Ctrl", "P")
	{
	Run, "C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE"
	GroupAdd, bgexcels, ahk_class XLMAIN
	}
Else
	{
	IfWinNotExist, ahk_class XLMAIN
		{
		Run, "C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE"
		GroupAdd, bgexcels, ahk_class XLMAIN
		Return
		}
	GroupAdd, bgexcels, ahk_class XLMAIN
	if WinActive("ahk_class XLMAIN")
		{
		GroupActivate, bgexcels, r
		sleep, 5
		}
	else
		{
		WinActivate ahk_class XLMAIN
		}
	}
Return

;--------
;Explorer
;--------
*e::
If GetKeyState("Ctrl", "P")
	{
	Run, explorer.exe
	GroupAdd, bgexplorers, ahk_class CabinetWClass
	}
Else
	{
	IfWinNotExist, ahk_class CabinetWClass
		{
		Run, explorer.exe
		GroupAdd, bgexplorers, ahk_class CabinetWClass
		Return
		}
	GroupAdd, bgexplorers, ahk_class CabinetWClass
	if WinActive("ahk_exe explorer.exe")
		{
		GroupActivate, bgexplorers, r
		sleep, 5
		}
	else
		{
		WinActivate ahk_class CabinetWClass
		}
	}
Return

;---------
;FL Studio
;---------
*f::
If !WinExist("ahk_class TFruityLoopsMainForm")
	{
	Run, "C:\Program Files\Image-Line\FL Studio 20\FL64.exe"
	}
Else
	{
	WinActivate ahk_class TFruityLoopsMainForm
	}
Return

;---------
;GitHub
;---------
*g::
If !WinExist("ahk_exe GitHubDesktop.exe")
	{
	Run, "C:\Users\beaug\AppData\Local\GitHubDesktop\app-1.5.1\GitHubDesktop.exe"
	}
Else
	{
	WinActivate ahk_exe GitHubDesktop.exe
	}
Return

;----
;iCue
;----
*SC027::
If !WinExist("ahk_exe iCUE.exe")
	{
	Run, "C:\Program Files (x86)\Corsair\CORSAIR iCUE Software\iCUE.exe"
	}
Else
	{
	WinActivate ahk_exe iCUE.exe
	}
Return

;-------
;KeePass
;-------
*k::
If !WinExist("ahk_exe KeePass.exe")
	{
	Run, "C:\Program Files (x86)\KeePass Password Safe 2\KeePass.exe"
	}
Else
	{
	WinActivate ahk_exe KeePass.exe
	}
Return



;-----------
;Illustrator
;-----------
*i::
If !WinExist("ahk_exe Illustrator.exe")
	{
	Run, "C:\Program Files\Adobe\Adobe Illustrator CC 2019\Support Files\Contents\Windows\Illustrator.exe"
	}
Else
	{
	WinActivate ahk_exe Illustrator.exe
	}
Return



;--------
;Logitech
;--------
*l::
If !WinExist("ahk_exe LCore.exe")
	{
	Run, "C:\Program Files\Logitech Gaming Software\LCore.exe"
	}
Else
	{
	WinActivate ahk_exe LCore.exe
	}
Return


;-------------
;Media Encoder
;-------------
*q::
If !WinExist("ahk_exe Adobe Media Encoder.exe")
	{
	Run, "C:\Program Files\Adobe\Adobe Media Encoder CC 2019\Adobe Media Encoder.exe"
	}
Else
	{
	WinActivate ahk_exe Adobe Media Encoder.exe
	}
Return


;--------
;Messages
;--------
*m::
If !WinExist("ahk_exe chrome.exe")
	{
	Run, chrome.exe "https://messages.android.com/"
	}
Else
	{
	WinActivate ahk_exe chrome.exe
	}
Return


;-------
;Notepad
;-------
*4::
If GetKeyState("Ctrl", "P")
	{
	Run, notepad.exe
	GroupAdd, bgnotepads, ahk_class Notepad
	}
Else
	{
	IfWinNotExist, ahk_class Notepad
		{
		Run, notepad.exe
		GroupAdd, bgnotepads, ahk_class Notepad
		Return
		}
	GroupAdd, bgnotepads, ahk_class Notepad
	if WinActive("ahk_class Notepad")
		{
		GroupActivate, bgnotepads, r
		sleep, 5
		}
	else
		{
		WinActivate ahk_class Notepad
		}
	}
Return

;---------
;Notepad++
;---------
*n::
If GetKeyState("Ctrl", "P")
	{
	Run, notepad++.exe
	GroupAdd, bgnoteplus, ahk_class Notepad++
	}
Else
	{
	IfWinNotExist, ahk_class Notepad++
		{
		Run, notepad++.exe
		GroupAdd, bgnoteplus, ahk_class Notepad++
		Return
		}
	GroupAdd, bgnoteplus, ahk_class Notepad++
	if WinActive("ahk_class Notepad++")
		{
		GroupActivate, bgnoteplus, r
		sleep, 5
		}
	else
		{
		WinActivate ahk_class Notepad++
		}
	}
Return

;------------
;Premiere Pro
;------------
*d::
If !WinExist("ahk_class Premiere Pro")
	{
	Run, "C:\Program Files\Adobe\Adobe Premiere Pro CC 2019\Adobe Premiere Pro.exe"
	}
Else
	{
	WinActivate ahk_class Premiere Pro
	}
Return


;---------
;Photoshop
;---------
*p::
If !WinExist("ahk_class Photoshop")
	{
	Run, "C:\Program Files\Adobe\Adobe Photoshop CC 2019\Photoshop.exe"
	}
Else
	{
	WinActivate ahk_class Photoshop
	}
Return

;----------
;Powerpoint
;----------
*3::
If GetKeyState("Ctrl", "P")
    {
    Run, "C:\Program Files (x86)\Microsoft Office\root\Office16\POWERPOINT.EXE"
	GroupAdd, bgpowerpoint, ahk_class PPTFrameClass
    }
Else
    {
    IfWinNotExist, ahk_class PPTFrameClass
        {
        Run, "C:\Program Files\Microsoft Office\root\Office16\POWERPNT.EXE"
        GroupAdd, bgpowerpoint, ahk_class PPTFrameClass
        Return
        }
    GroupAdd, bgpowerpoint, ahk_class PPTFrameClass
    if WinActive("ahk_class PPTFrameClass")
        {
        GroupActivate, bgpowerpoint, r
        sleep, 5
        }
    else
        {
        WinActivate ahk_class PPTFrameClass
        }
    }
Return

;-------
;PureRef
;-------
*r::
If GetKeyState("Ctrl", "P")
    {
    Run, "C:\Program Files\PureRef\PureRef.exe"
	GroupAdd, bgpureref, ahk_exe PureRef.exe
    }
Else
    {
    IfWinNotExist, ahk_exe PureRef.exe
        {
        Run, "C:\Program Files\PureRef\PureRef.exe"
        GroupAdd, bgpureref, ahk_exe PureRef.exe
        Return
        }
    GroupAdd, bgpureref, ahk_exe PureRef.exe
    if WinActive("ahk_exe PureRef.exe")
        {
        GroupActivate, bgpureref, r
        sleep, 5
        }
    else
        {
        WinActivate ahk_exe PureRef.exe
        }
    }
Return


;-----
;Slack
;-----
*c::
If !WinExist("ahk_exe Slack.exe")
	{
	Run, Slack.exe
	}
Else
	{
	WinActivate ahk_exe Slack.exe
	}
Return


;-------
;Spotify
;-------
*s::
If !WinExist("ahk_exe Spotify.exe")
	{
	Run, Spotify.exe
	}
Else
	{
	WinActivate ahk_exe Spotify.exe
	}
Return

;-----
;To Do
;-----
*t::
If !WinExist("Microsoft To-Do")
	{
	Run, "%A_ScriptDir%\General\RunTodo.bat"
	}
Else
	{
	WinActivate Microsoft To-Do
	}
Return


;-------
;Vivaldi
;-------
*v::
If GetKeyState("Ctrl", "P")
	{
	Run, "C:\Users\beaug\AppData\Local\Vivaldi\Application\vivaldi.exe"
	GroupAdd, bgvivaldis, ahk_exe vivaldi.exe
	}
Else
	{
	IfWinNotExist, ahk_exe vivaldi.exe
		{
		Run, "C:\Users\beaug\AppData\Local\Vivaldi\Application\vivaldi.exe"
		GroupAdd, bgvivaldis, ahk_exe vivaldi.exe
		Return
		}
	GroupAdd, bgvivaldis, ahk_exe vivaldi.exe
	if WinActive("ahk_exe vivaldi.exe")
		{
		GroupActivate, bgvivaldis, r
		sleep, 5
		}
	else
		{
		WinActivate ahk_exe vivaldi.exe
		}
	}
Return

;--------
;Window Spy
;--------
*0::
If !WinExist("WindowSpy.ahk")
	{
	Run, "C:\Program Files\AutoHotkey\WindowSpy.ahk"
	}
Else
	{
	WinActivate WindowSpy.ahk
	}
Return


;----
;Word
;----
*w::
If GetKeyState("Ctrl", "P")
	{
	Run, "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE"
	GroupAdd, bgwords, ahk_class OpusApp
	}
Else
	{
	IfWinNotExist, ahk_class OpusApp
		{
		Run, "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE"
		GroupAdd, bgwords, ahk_class OpusApp
		Return
		}
	GroupAdd, bgwords, ahk_class OpusApp
	if WinActive("ahk_class OpusApp")
		{
		GroupActivate, bgwords, r
		sleep, 5
		}
	else
		{
		WinActivate ahk_class OpusApp
		}
	}
Return
}








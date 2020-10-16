;After Effects     A
;Acrobat           1
;Airtable          2
;Blender           B
;Calculator        `
;Excel             X
;Explorer          E
;Fl Studio         F
;PyCharm           G
;iCue              ;
;KeePass           K
;Illustrator       I
;Logitech GS       L
;Media Encoder     Q
;Messages          M
;Notepad           4
;Notepad++         N
;OBS Studio        6
;Premiere Pro      D
;Photoshop         P
;Powerpoint        3
;Slack             C
;Spotify           S
;ToDo              T
;Chrome            V
;Visual Studio     H
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
multipleInstanceProgram("C:\Program Files (x86)\Adobe\Acrobat DC\Acrobat\Acrobat.exe", "ahk_exe Acrobat.exe", "bgacrobat")
Return

;-------------
;After Effects
;-------------
*a::
singleInstanceProgram("C:\Program Files\Adobe\Adobe After Effects 2020\Support Files\AfterFX.exe", "ahk_exe AfterFX.exe")
Return

;--------
;Airtable
;--------
*2::
singleInstanceProgram("C:\Users\beaug\AppData\Local\Airtable\app-1.4.2\Airtable.exe", "ahk_exe Airtable.exe")
Return

;-------
;Blender
;-------
*b::
singleInstanceProgram("C:\Program Files\Blender Foundation\Blender 2.90\blender.exe", "ahk_exe blender.exe")
Return

;-------
;Calculator
;-------
*`::
multipleInstanceProgram("calc.exe", "Calculator", "bgcalc")
Return

;-----
;Excel
;-----
*x::
multipleInstanceProgram("C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE", "ahk_class XLMAIN", "bgexcels")
Return

;--------
;Explorer
;--------
*e::
multipleInstanceProgram("explorer.exe", "ahk_class CabinetWClass", "bgexplorers")
Return

;---------
;FL Studio
;---------
*f::
singleInstanceProgram("C:\Program Files\Image-Line\FL Studio 20\FL64.exe", "ahk_class TFruityLoopsMainForm")
Return

;---------
;VCode
;---------
*g::
singleInstanceProgram("C:\Users\beaug\AppData\Local\Programs\Microsoft VS Code\Code.exe", "ahk_exe Code.exe")
Return

;----
;iCue
;----
*SC027::
singleInstanceProgram("C:\Program Files (x86)\Corsair\CORSAIR iCUE Software\iCUE.exe", "ahk_exe iCUE.exe")
Return

;-------
;KeePass
;-------
*k::
singleInstanceProgram("C:\Program Files (x86)\KeePass Password Safe 2\KeePass.exe", "ahk_exe KeePass.exe")
Return

;-----------
;Illustrator
;-----------
*i::
singleInstanceProgram("C:\Program Files\Adobe\Adobe Illustrator 2020\Support Files\Contents\Windows\Illustrator.exe", "ahk_exe Illustrator.exe")
Return

;-----------
;Intelli J
;-----------
*j::
singleInstanceProgram("C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2019.3.2\bin\idea64.exe", "ahk_exe idea64.exe")
Return

;--------
;Logitech
;--------
*l::
singleInstanceProgram("C:\Program Files\LGHUB\lghub.exe", "ahk_exe lghub.exe")
Return


;-------------
;Media Encoder
;-------------
*q::
singleInstanceProgram("C:\Program Files\Adobe\Adobe Media Encoder 2020\Adobe Media Encoder.exe", "ahk_exe Adobe Media Encoder.exe")
Return


;--------
;Messages
;--------
*m::
singleInstanceProgram("C:\Users\beaug\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Messages.lnk", "Messages for web")
Return


;-------
;Notepad
;-------
*4::
; multipleInstanceProgram("notepad.exe", "ahk_class Notepad", "bgnotepads")
multipleInstanceProgram("C:\Users\beaug\Documents\AutoHotKey Scripts\General\UWPShortcuts\Notepads.lnk", "Notepads", "bgnotepads")
Return


;Notepad++
*n::
multipleInstanceProgram("C:\Program Files\Notepad++\notepad++.exe", "ahk_class Notepad++", "bgnoteplus")
Return


;OBS Studio
*6::
singleInstanceProgram("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\OBS Studio\OBS Studio (64bit)", "ahk_exe obs64.exe")
Return


;Premiere Pro
*d::
singleInstanceProgram("C:\Program Files\Adobe\Adobe Premiere Pro 2020\Adobe Premiere Pro.exe", "ahk_class Premiere Pro")
Return



;Photoshop
*p::
singleInstanceProgram("C:\Program Files\Adobe\Adobe Photoshop 2020\Photoshop.exe", "ahk_class Photoshop")
Return


;PureRef
*3::
singleInstanceProgram("C:\Program Files\PureRef\PureRef.exe", "ahk_exe PureRef.exe")
return

;Resolve
*r::
singleInstanceProgram("C:\Program Files\Blackmagic Design\DaVinci Resolve\Resolve.exe", "ahk_exe Resolve.exe")
Return



;Slack
*c::
singleInstanceProgram("Slack.exe", "ahk_exe Slack.exe")
Return


;Spotify
*s::
singleInstanceProgram("C:\Users\beaug\AppData\Roaming\Spotify\Spotify.exe", "ahk_exe Spotify.exe")
Return


;To Do
*t::
singleInstanceProgram( A_ScriptDir . "\General\RunTodo.bat", "Microsoft To Do")
return


;Chrome
*v::
multipleInstanceProgram("C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe", "ahk_exe msedge.exe", "bgchrome")
Return

;Houdini
*h::
singleInstanceProgram("C:\Program Files\Side Effects Software\Houdini 18.0.416\bin\houdini.exe", "ahk_exe houdini.exe")
Return

; Visual Studio
; *j::
; singleInstanceProgram("C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\devenv.exe", "ahk_exe devenv.exe")
; Return

;Unity
*u::
singleInstanceProgram("C:\Program Files\Unity\Hub\Editor\2019.2.11f1\Editor\Unity.exe", "ahk_exe Unity.exe")
return

;Window Spy
*0::
singleInstanceProgram("C:\Program Files\AutoHotkey\WindowSpy.ahk", "WindowSpy")
Return

*z::
singleInstanceProgram("C:\Users\beaug\AppData\Local\Discord\app-0.0.307\Discord.exe", "ahk_exe Discord.exe")
return


;Word
*w::
multipleInstanceProgram("C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE", "ahk_class OpusApp", "bgwords")
Return


;Elan Videomaker
F11::
Run, "C:\Users\beaug\beaugilles\Projects\MOJO\Automation\MOBOT\Elan Mobile Pitch\ElanMobilePitch.bat"
return

;DemoVideoMaker
F12::
Run, "C:\Users\beaug\beaugilles\Projects\MOJO\Automation\MOBOT\MBA Demo\RunMBADemo.bat"
return
}


runEdge(){
IApplicationActivationManager := ComObjCreate("{45BA127D-10A8-46EA-8AB7-56EA9078943C}", "{2e941141-7f97-4756-ba1d-9decde894a3d}")
DllCall(NumGet(NumGet(IApplicationActivationManager+0)+3*A_PtrSize), "Ptr", IApplicationActivationManager, "Str", "Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge", "Str", "", "UInt", 0, "IntP", processId)
ObjRelease(IApplicationActivationManager)
}

singleInstanceProgram(exePath, ahkHandle){
If !WinExist(ahkHandle)
	{
	Run, %exePath%
	}
Else
	{
	WinActivate, %ahkHandle%
	}
Return
}

multipleInstanceProgram(exePath, ahkHandle, Byref ahkGroup){
If GetKeyState("Ctrl", "P")
	{
	Run, %exePath%
	GroupAdd, %ahkGroup%, %ahkHandle%
	}
Else
	{
	If !WinExist(ahkHandle)
		{
		Run, %exePath%
		GroupAdd, %ahkGroup%, %ahkHandle%
		Return
		}
	GroupAdd, %ahkGroup%, %ahkHandle%
	if WinActive(ahkHandle)
		{
		GroupActivate, %ahkGroup%, r
		sleep, 5
		}
	else
		{
		WinActivate, %ahkHandle%
		}
	}
Return
}


;Microsoft Edge
; *v::
; SetTitleMatchMode, 2
; If GetKeyState("Ctrl", "P")
	; {
	; runEdge()
	; GroupAdd, bgedge, - Microsoft Edge ahk_exe ApplicationFrameHost.exe
	; }
; Else
	; {
	; If !WinExist("`- Microsoft Edge ahk_exe ApplicationFrameHost.exe")
		; {
		; runEdge()
		; GroupAdd, bgedge, - Microsoft Edge ahk_exe ApplicationFrameHost.exe
		; Return
		; }
	; GroupAdd, bgedge, "`- Microsoft Edge ahk_exe ApplicationFrameHost.exe"
	; if WinActive("`- Microsoft Edge ahk_exe ApplicationFrameHost.exe")
		; {

		; GroupActivate, bgedge, r
		; sleep, 5
		; }
	; else
		; {
		; WinActivate - Microsoft Edge ahk_exe ApplicationFrameHost.exe
		; }
	; }
; SetTitleMatchMode, 1
; Return







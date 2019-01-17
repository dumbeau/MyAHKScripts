#NoEnv 
DetectHiddenWindows, On
SetTitleMatchMode, 2

If !WinExist("MasterMacros.ahk")
	{
	Soundplay, %A_ScriptDir%\Sound\ToggleOn.wav
	Run, "%A_ScriptDir%\MasterMacros.ahk"
	Sleep, 200	
	exitapp
	}
else
	{
	Soundplay, %A_ScriptDir%\Sound\ToggleOff.wav
	WinClose, %A_ScriptDir%\MasterMacros.ahk
	sleep, 200
	}
exitapp
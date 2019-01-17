ControlGetFocus, OutputVar, A
; if % OutputVar != "Edit1" or OutputVar != "Edit2"
	; {
    ; MsgBox, Control with focus = %OutputVar%
	; exitapp
	; }
; else
{
DetectHiddenWindows, On
SetTitleMatchMode, 2
IfWinNotExist, TimestampDate.ahk
	{
	Run, "%A_ScriptDir%\TimestampDate.ahk"
	exitapp
	}
Send, _
Run, "%A_ScriptDir%\TimestampTime.ahk"
exitapp
}
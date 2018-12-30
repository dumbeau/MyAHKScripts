#SingleInstance ignore
#IfWinActive ahk_exe Illustrator.exe
{
;Middle Mouse Button activates hand tool dragging.
MButton::
Send, {Space down}{LButton down}
KeyWait, MButton
Send, {LButton up}{Space up}
Return
}
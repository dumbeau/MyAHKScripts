;Ctrl ^ Shift + Alt !
#SingleInstance force ;If this app is run while it's already running, the previously running version will be closed.
#IfWinActive ahk_exe Illustrator.exe ;Find the ahk_exe or ahk_class of the app these functions will apply to using WindowSpy (which came with AHK) and place that code here
{
XButton1 & WheelDown::
SendInput, ^z  ;Put whatever function you want here, I just put redo here
Return

XButton1 & WheelUp::  ;XButton1 is the 'Back' function on the mouse (the side button)
SendInput, ^+z  ;This is the 'redo' keyboard shortcut just to complement the undo.
Return
}
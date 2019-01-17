WinGetTitle, WinTitle, A
WinGetPos, winX, winY, width, height, A
CoordMode, Mouse, Relative
MouseGetPos, mousex, mousey
WinMove, %WinTitle%,,,, mousex, mousey
exitapp

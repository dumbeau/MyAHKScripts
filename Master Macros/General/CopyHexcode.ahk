#NoEnv 
SendMode Input
MouseGetPos, mx, my
PixelGetColor, pixelcol, mx, my, RGB
pixelcol := SubStr(pixelcol, 3, 6)
clipboard = %pixelcol%
exitapp

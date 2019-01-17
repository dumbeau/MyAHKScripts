#NoEnv 
WinGet, activewin, ID, A
WinActivate, Program Manager
sleep, 50
WinGet, active, ID, A
WinActivate, ahk_id %activewin%
exitapp


--Copy this code into the default profile in the LGS software and remove functions off of all the G keys.  Your macros should be put into this script in the functions at the bottom of the script.
g4down = false
g5down = false
gmodpressed = false

function OnEvent(event, arg)
	OutputLogMessage("event = %s, arg = %s\n", event, arg);
	if event == "PROFILE_ACTIVATED" then
		appstartG4 = true
		appstartG5 = true
	end
 
	if event == "MOUSE_BUTTON_PRESSED" and arg == 4 and g5down == false then
		PressKey("PageDown")
		ReleaseKey("PageDown")
		g4down = true
		appstartG4 = false
	end
	if event == "MOUSE_BUTTON_PRESSED" and arg == 4 and g5down == true then
		PressKey("PageUp")
		ReleaseKey("PageUp")
		gpress()
		g4down = true
	end
	if event == "MOUSE_BUTTON_RELEASED" and arg == 4 and g5down == false then
		PressKey("PrintScreen")
		ReleaseKey("PrintScreen")
		g4down = false
		if gmodpressed == false and appstartG4 == false then
			G4()
		end
		gmodpressed = false

	end
	if event == "MOUSE_BUTTON_RELEASED" and arg == 4 and g5down == true then
		PressKey("Pause")
		ReleaseKey("Pause")
		g4down = false
	end
	if event == "MOUSE_BUTTON_PRESSED" and arg == 5 and g4down == false then
		PressKey("Pause")
		ReleaseKey("Pause")
		g5down = true
		appstartG5 = false
	end

	if event == "MOUSE_BUTTON_PRESSED" and arg == 5 and g4down == true  then 
		PressKey("PageUp")
		ReleaseKey("PageUp")
		g5down = true
		gpress()
	end
	if event == "MOUSE_BUTTON_RELEASED" and arg == 5 and g4down == false then
		PressKey("PrintScreen")
		ReleaseKey("PrintScreen")
		g5down = false
		if gmodpressed == false and appstartG5 == false then
			G5()
		end
		gmodpressed = false
		appstartG5 = false
	end

	if event == "MOUSE_BUTTON_RELEASED" and arg == 5 and g4down == true then
		PressKey("PageDown")
		ReleaseKey("PageDown")
		g5down = false
	end


	if event == "MOUSE_BUTTON_PRESSED" and arg == 6 and g4down == true and g5down == false then
		gpress()
		G4G6()
	end
	if event == "MOUSE_BUTTON_PRESSED" and arg == 7 and g4down == true and g5down == false then
		gpress()
		G4G7()
	end
	if event == "MOUSE_BUTTON_PRESSED" and arg == 8 and g4down == true and g5down == false then
		gpress()
		G4G8()
	end
	if event == "MOUSE_BUTTON_PRESSED" and arg == 9 and g4down == true and g5down == false then
		gpress()
		G4G9()
	end
	if event == "MOUSE_BUTTON_PRESSED" and arg == 10 and g4down == true and g5down == false then
		gpress()
		G4G10()
	end
	if event == "MOUSE_BUTTON_PRESSED" and arg == 11 and g4down == true and g5down == false then
		gpress()
		G4G11()
	end
	
	
	
	if event == "MOUSE_BUTTON_PRESSED" and arg == 6 and g4down == false and g5down == true then
		gpress()
		G5G6()
	end
	if event == "MOUSE_BUTTON_PRESSED" and arg == 7 and g4down == false and g5down == true then
		gpress()
		G5G7()
	end
	if event == "MOUSE_BUTTON_PRESSED" and arg == 8 and g4down == false and g5down == true then
		gpress()
		G5G8()
	end
	if event == "MOUSE_BUTTON_PRESSED" and arg == 9 and g4down == false and g5down == true then
		gpress()
		G5G9()
	end
	if event == "MOUSE_BUTTON_PRESSED" and arg == 10 and g4down == false and g5down == true then
		gpress()
		G5G10()
	end
	if event == "MOUSE_BUTTON_PRESSED" and arg == 11 and g4down == false and g5down == true then
		gpress()
		G5G11()
	end
	
	if event == "MOUSE_BUTTON_PRESSED" and arg == 6 and g4down == false and g5down == false then
		G6D()
	end
	if event == "MOUSE_BUTTON_RELEASED" and arg == 6 and g4down == false and g5down == false then
		G6U()
	end
	
	if event == "MOUSE_BUTTON_PRESSED" and arg == 7 and g4down == false and g5down == false then
		G7D()
	end
	if event == "MOUSE_BUTTON_RELEASED" and arg == 7 and g4down == false and g5down == false then
		G7U()
	end
	
	if event == "MOUSE_BUTTON_PRESSED" and arg == 8 and g4down == false and g5down == false then
		G8D()
	end
	if event == "MOUSE_BUTTON_RELEASED" and arg == 8 and g4down == false and g5down == false then
		G8U()
	end
	
	if event == "MOUSE_BUTTON_PRESSED" and arg == 9 and g4down == false and g5down == false then
		G9D()
	end
	if event == "MOUSE_BUTTON_RELEASED" and arg == 9 and g4down == false and g5down == false then
		G9U()
	end
	
	if event == "MOUSE_BUTTON_PRESSED" and arg == 10 and g4down == false and g5down == false then
		G10D()
	end
	if event == "MOUSE_BUTTON_RELEASED" and arg == 10 and g4down == false and g5down == false then
		G10U()
	end
	
	if event == "MOUSE_BUTTON_PRESSED" and arg == 11 and g4down == false and g5down == false then
		G11D()
	end
	if event == "MOUSE_BUTTON_RELEASED" and arg == 11 and g4down == false and g5down == false then
		G11U()
	end
	
end


--YOU CAN TOUCH STUFF AFTER THIS
--Here's some useful functions
--PressAndReleaseKey("keyname") PressKey("keyname") ReleaseKey("keyname")
--"lshift" "lalt" "lctrl" " are mod keys
--Refer to G-series Lua API Appendix A for key names

function gpress()
OutputLogMessage("Gmod Sent")
gmodpressed = true
PressKey("numslash")
ReleaseKey("numslash")
end

--Functions for Single Gkeys (4,5,8 and 9 are modifiers)
--Function for G4 mouse button when released
function G4()
OutputLogMessage("XBut4\n")
PressAndReleaseMouseButton(4)
end

--Function for G5 mouse button when released
function G5()
OutputLogMessage("XBut5\n")
PressAndReleaseMouseButton(5)
end

--Function for G6 mouse button
function G6D()
OutputLogMessage("G6D")
PressKey("LCtrl")
PressAndReleaseKey("w")
ReleaseKey("LCtrl")
end

function G6U()
OutputLogMessage("G6U")

end

--Function for G7 mouse button
function G7D()
	PressKey("delete")
end

function G7U()
OutputLogMessage("G7U")
	ReleaseKey("delete")
end

--Function for G8 mouse button
function G8D()
OutputLogMessage("G8D")
end

function G8U()
OutputLogMessage("G8U")
end

--Function for G9 mouse button
function G9D()
OutputLogMessage("G9D")
end

function G9U()
OutputLogMessage("G9U")
end

--Function for G10 mouse button
function G10D()
PressKey("enter")
end

function G10U()
ReleaseKey("enter")
end

--Function for G11 mouse button
function G11D()
OutputLogMessage("G11")
end

function G11U()

end

--Functions for Gkeys (5-11) when G4 is held down
--Function for G5 when G4 is held down
function G4G5()
OutputLogMessage("G4G5")

end

--Function for G6 when G4 is held down
function G4G6()
OutputLogMessage("G4G6")
PressAndReleaseKey("F2")
end

--Function for G7 when G4 is held down
function G4G7()
OutputLogMessage("G4G7")
PressAndReleaseKey("backspace")
end

--Function for G8 when G4 is held down
function G4G8()
OutputLogMessage("G4G8")
end

--Function for G9 when G4 is held down
function G4G9()
OutputLogMessage("G4G9")
end

--Function for G10 when G4 is held down
function G4G10()
OutputLogMessage("G4G10")
end

--Function for G11 when G4 is held down
function G4G11()
OutputLogMessage("G4G11")
end

--Functions for Gkeys (4,6-11) when G5 is held down
--Function for G4 when G5 is held down
function G5G4()
OutputLogMessage("G5G4")
g4pressed = true
ReleaseKey("PageDown")
PressKey("PageUp")
end

--Function for G6 when G5 is held down
function G5G6()
PressKey("lalt")
PressAndReleaseKey("f4")
ReleaseKey("lalt")
end

--Function for G7 when G5 is held down
function G5G7()
PressAndReleaseKey("delete")
end

--Function for G8 when G5 is held down
function G5G8()
OutputLogMessage("G5G8")
end

--Function for G9 when G5 is held down
function G5G9()
OutputLogMessage("G5G9")
end

--Function for G10 when G5 is held down
function G5G10()
PressKey("lctrl")
PressAndReleaseKey("v")
ReleaseKey("lctrl")
end

--Function for G11 when G5 is held down
function G5G11()
PressKey("lctrl")
PressAndReleaseKey("c")
ReleaseKey("lctrl")
end
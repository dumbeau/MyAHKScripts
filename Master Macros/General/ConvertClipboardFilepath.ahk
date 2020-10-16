toggleMacWinPath(inputPath) {
If InStr(SubStr(inputPath, 1, 12), "Volumes/")
	{	
	;Remove "Volumes/"
	inputPath := SubStr(inputPath,InStr(inputPath, "Volumes/")+8)
	;Get drive name
	driveName := SubStr(inputPath, 1, InStr(inputPath,"/")-1)
	;Find drive letter matching drive name
	DriveGet, driveList, List
	Loop, Parse, driveList
		{		
		DriveGet, gotDriveName, Label, %A_LoopField%:
		If (gotDriveName = driveName)
			{
			driveLetter := A_LoopField			
			break
			}
		}
	inputPath := StrReplace(inputPath, driveName, driveLetter . ":")
	outputPath := StrReplace(inputPath, "/", "\")	
	}
else if (InStr(inputPath, ":\") > 0)
	{
	; msgbox % "windows filepath"  inputPath	
	;remove quotes

	If (SubStr(inputPath, 1, 1) = """") ;is the first character a quotation
		inputPath := SubStr(inputPath, 2)
	If (SubStr(inputPath, 0, 1) = """") ;is the last character a quotation
		inputPath := SubStr(inputPath, 1, -1)	
	
	;replace \ with /
	inputPath := StrReplace(inputPath, "\", "/")
	
	
	;Get drive letter name
	driveLetter := SubStr(inputPath, 1, 1)
	DriveGet, driveName, Label, %driveLetter%:
	
	;remove first two characters -> pathname end
	inputPath := SubStr(inputPath, 3)
	
	outputPath := "Volumes/" . driveName . inputPath
	;"Volumes/" + DriveLetterName + pathname end	
	}
else
	{
	return
	}
return outputPath
}

a::
Clipboard := toggleMacWinPath(Clipboard)
return





escape::
exitapp
return

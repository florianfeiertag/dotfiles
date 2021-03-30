<#!s::
Run "y:\03_Büro\03_Mitarbeiter\Feiertag\Stunden_FF_2021.xlsx"
WinWait, Stunden_FF_2021.xlsx - Excel
WinMaximize
return

<+#Enter::
	Run  "C:\Users\Feiertag\msys2\msys2_shell.cmd" "-msys"
	WinMove, ahk_exe mintty.exe,,10,10,945,1060
	GroupAdd, minttys, ahk_exe mintty.exe
	return

<#Enter::
IfWinNotExist, ahk_exe mintty.exe
{
	Run  "C:\Users\Feiertag\msys2\msys2_shell.cmd" "-msys"
	WinMove, ahk_exe mintty.exe,,10,10,945,1060
	GroupAdd, minttys, ahk_exe mintty.exe
	return
}
else
{
		IfWinActive, ahk_exe mintty.exe
		{
			GroupActivate, minttys, R
			return
		}
	else
		{
			WinActivate, ahk_exe mintty.exe
			return
		}
}

;<#s::
;if WinExist("C:\Users\Feiertag\_scratchpad - Notepad++")
;{
	;WinActivate
	;return
;}
;else
;{
	;Run "c:\Users\Feiertag\bin\npp\notepad++.exe" "c:\Users\feiertag\_scratchpad"
	;WinWait, ahk_exe notepad++.exe
	;WinMove, ahk_exe notepad++.exe,,633,90,654,907
	;WinActivate, ahk_exe notepad++.exe
	;return
;}

<#s::
IfWinExist, scratchpad
{
	WinActivate
	return
}
else
{
	Run "c:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -command "& c:\Users\Florian\bin\scratchpad.ps1",,,scratchpadPID
	WinActivate, scratchpad
	return
}

<+#Enter::
	Run  "c:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -command "c:\Users\Florian\bin\terminal.ps1"
	WinMove, ahk_exe mintty.exe,,10,10,945,1060
	GroupAdd, minttys, ahk_exe mintty.exe
	return

<#Enter::
IfWinNotExist, ahk_exe mintty.exe
{
	Run  "c:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -command "c:\Users\Florian\bin\terminal.ps1"
	WinMove, ahk_exe mintty.exe,,10,10,945,1060
	GroupAdd, minttys, ahk_exe mintty.exe
	return
}
else
{
		IfWinActive, ahk_exe mintty.exe
		{
			GroupActivate, minttys, R
			return
		}
	else
		{
			WinActivate, ahk_exe mintty.exe
			return
		}
}

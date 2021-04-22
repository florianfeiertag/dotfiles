#SingleInstance force

;;; Begin autoexecute section ;;;

SetTitleMatchMode, 2
GroupAdd, excel, ahk_exe EXCEL.EXE
GroupAdd, word, ahk_exe WINWORD.EXE
GroupAdd, mail, ahk_class rctrl_renwnd32
return

;;; End of autoexecute section ;;;

; ### shortcuts ###
^!+t::
Winset, Alwaysontop, , A
return

<#!s::
Run "y:\03_Büro\03_Mitarbeiter\Feiertag\Stunden_FF_2021.xlsx"
WinWait, Stunden_FF_2021.xlsx - Excel
WinMaximize
return

<#v::
IfWinExist, ahk_exe Vectorworks2021.exe
{
	;WinRestore, ahk_exe Vectorworks2021.exe
	WinActivate, Vectorworks
	WinMaximize, Vectorworks
	WinSet, Style, -0xC00000, Vectorworks
	return
}
else
{
	Run c:\Program Files\Vectorworks 2021\Vectorworks2021.exe
	WinWait, Vectorworks
	WinMaximize, Vectorworks
	WinSet, Style, -0xC00000, Vectorworks
	WinActivate, Vectorworks
	return
}

<#x::
GroupActivate, excel, r
return

<#w::
GroupActivate, word, r
return

<#o::
if !WinExist("ahk_class rctrl_renwnd32")
{
	Run "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE" /recycle
	WinWait, ahk_class rctrl_renwnd32
}
GroupActivate, mail, r
return


		;IfWinActive, ahk_exe OUTLOOK.EXE
		;{
			;WinGet, Instances, Count, ahk_exe OUTLOOK.EXE
			;If Instances > 1
			;WinSet, Bottom,, A
			;WinActivate, ahk_EXE OUTLOOK.EXE
			;return
		;}
	;else
		;{
			;WinActivate, ahk_exe OUTLOOK.EXE
			;return
		;}
;}

<#c::
Run c:\Users\Feiertag\bin\TotalCMD\TOTALCMD64.EXE
WinWait, ahk_exe TOTALCMD64.EXE
WinMove, ahk_exe TOTALCMD64.EXE,,7,10,1906,1063
WinSet, Style, -0xC00000, ahk_exe TOTALCMD64.EXE
WinActivate, ahk_exe TOTALCMD64.EXE
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

<#b::
IfWinNotExist, ahk_exe chrome.exe
{
	Run "c:\Users\Feiertag\AppData\Local\Google\Chrome\Application\chrome.exe"
	WinWait, ahk_exe chrome.exe
	WinActivate, ahk_exe chrome.exe
	return
}
else
{
	IfWinActive, ahk_exe chrome.exe
	{
		Send ^{Tab}
		return
	}
	else
	{
		WinActivate
		return
	}
}

<#p::
IfWinNotExist, ahk_exe PDFXEdit.exe
{
	Run "c:\Users\Feiertag\bin\pdfxchange\PDFXEdit.exe"
	WinWait, ahk_exe PDFXEdit.exe
	WinActivate, ahk_exe PDFXEdit.exe
	GroupAdd, pdfs, ahk_exe PDFXEdit.exe
	return
}
; ### with tabs like in PDF-XChange
else
{
	IfWinActive, ahk_exe PDFXEdit.exe
	{
		Send ^{Tab}
		return
	}
	else
	{
		WinActivate
		return
	}
}
; ### with one instance for each pdf
;else
;{
;		IfWinActive, ahk_exe Acrobat.exe
;		{
;			GroupActivate, pdfs, R
;			return
;		}
;	else
;		{
;			WinActivate, ahk_exe Acrobat.exe
;			return
;		}
;}

<#1::
IfWinExist, ahk_exe i_view64.exe 
{
	WinActivate
	return
}
else
{
	Run "c:\Users\Feiertag\bin\IrfanView\i_view64_ohne.bat"
	WinWait, ahk_exe i_view64.exe 
	WinActivate, ahk_exe i_view64.exe
	return
}

<#h::
WinMinimize, A
return

F1::
WinGet Style, Style, A
if (Style & 0xC00000) 
{
	WinSet, Style, -0xC00000, A
}
else
{
	WinSet, Style, +0xC00000, A
}
return

CapsLock::
Send ^q
return


<#s::
if WinExist("C:\Users\Feiertag\_scratchpad - Notepad++")
{
	WinActivate
	return
}
else
{
	Run "c:\Users\Feiertag\bin\npp\notepad++.exe" "c:\Users\feiertag\_scratchpad"
	WinWait, ahk_exe notepad++.exe
	WinMove, ahk_exe notepad++.exe,,633,90,654,907
	WinActivate, ahk_exe notepad++.exe
	return
}

<#t::
if WinExist("todo")
{
    WinActivate
    return
}
else
{
    Run "c:\Users\Feiertag\msys2\todo.cmd" "-msys"
    WinWait, todo
    WinMove, todo,,473,180,974,547
    WinActivate, todo
    return
}

#!d::
FormatTime, CurrentDate,, yyyy-MM-dd
SendInput %CurrentDate%
return




; old stuff
;#########################
;### putty ###
;<#t::
;if WinExist("ahk_exe PUTTY.EXE")
;{
;	WinActivate
;	return
;}
;else
;{
;	Run "c:\Users\Feiertag\bin\putty\PUTTY.EXE" -load "lautrec"
;	WinWait, ahk_exe PUTTY.EXE
;	WinMove, ahk_exe PUTTY.EXE,,473,180,974,547
;	WinActivate, ahk_exe PUTTY.EXE
;	return
;}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;#PgDn::        ; Next Window
;WinGetClass, CurrentActive, A
;WinGet, Instances, Count, ahk_class %CurrentActive%
;If Instances > 1
;WinSet, Bottom,, A
;WinActivate, ahk_class %CurrentActive%
;return
;#PgUp::        ; Previous Window
;WinGetClass, CurrentActive, A
;WinGet, Instances, Count, ahk_class %CurrentActive%
;If Instances > 1
;WinActivateBottom, ahk_class %CurrentActive%
;return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;### calc ###
;#.::
;IfWinExist ahk_exe calc.exe
;{
;	WinActivate
;	return
;}
;else
;{
;	Sleep, 100
;	Run c:\Windows\System32\calc.exe
;	WinWait, ahk_exe calc.exe 
;	WinMove, ahk_exe calc.exe,,1496,760,417,313
;	return
;}

;<#w::
;IfWinNotExist, ahk_exe WINWORD.EXE
;{
	;MsgBox,0,Word,No Word running...,5
	;return
;}
;else
;{
	;IfWinActive, ahk_exe WINWORD.EXE
	;{
		;WinGet, Instances, Count, ahk_exe WINWORD.EXE
		;If Instances > 1
		;WinSet, Bottom,, A
		;WinActivate, ahk_exe WINWORD.EXE
		;return
	;}
	;else
		;{
		;WinActivate, ahk_exe WINWORD.EXE
		;return
		;}
	;}
	
;<#x::
;IfWinNotExist, ahk_exe EXCEL.EXE
;{
	;MsgBox,0,Excel,No Excel running...,5
	;return
;}
;else
;{
	;IfWinActive, ahk_exe EXCEL.EXE
	;{
		;WinGet, Instances, Count, ahk_exe EXCEL.EXE
		;If Instances > 1
		;WinSet, Bottom,, A
		;WinActivate, ahk_EXE EXCEL.EXE
		;return
	;}
	;else
		;{
		;WinActivate, ahk_exe EXCEL.EXE
		;return
		;}
	;}
	
;#Tab::
;Run c:\Users\feiertag\Documents\Dexpot\dexpot.exe /d
;return
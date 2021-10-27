#SingleInstance force

;#Escape::
;toggle := !toggle
;if ( toggle = 0 ) {
	;WinHide, ahk_class Shell_TrayWnd
	;return
;}
;else {
	;WinShow, ahk_class Shell_TrayWnd
	;return
;}
;return

flag = 1
Loop
{
    if (flag == 1){
        if (WinExist("ahk_class Shell_TrayWnd")){
            WinHide ahk_class Shell_TrayWnd
        }
    }else{
        if (!WinExist("ahk_class Shell_TrayWnd")){
            WinShow ahk_class Shell_TrayWnd
        }
    }
    sleep 1
}

#Esc::
    if (flag == 1)
        flag = 0
    else
        flag = 1
return

^!+t::
Winset, Alwaysontop, , A
return

;LWin & s::
;Sleep, 100
;Run y:\03_Büro\03_Mitarbeiter\Feiertag\Stunden_FF_2020.xlsx
;WinWait, Stunden_FF_2020.xlsx - Excel
;WinMaximize
;return

LWin & Tab::
Run c:\Program Files (x86)\Dexpot\dexpot.exe /d
return

LWin & v::
IfWinExist, ahk_exe Vectorworks2021.exe
{
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

<#w::
IfWinNotExist, ahk_exe WINWORD.EXE
{
	MsgBox,0,Word,No Word running...,5
	return
}
else
{
		IfWinActive, ahk_exe WINWORD.EXE
		{
			WinGet, Instances, Count, ahk_exe WINWORD.EXE
			If Instances > 1
			WinSet, Bottom,, A
			WinActivate, ahk_EXE WINWORD.EXE
			return
		}
	else
		{
			WinActivate, ahk_exe WINWORD.EXE
			return
		}
}

<#x::
IfWinNotExist, ahk_exe EXCEL.EXE
{
	MsgBox,0,Excel,No Excel running...,5
	return
}
else
{
		IfWinActive, ahk_exe EXCEL.EXE
		{
			WinGet, Instances, Count, ahk_exe EXCEL.EXE
			If Instances > 1
			WinSet, Bottom,, A
			WinActivate, ahk_EXE EXCEL.EXE
			return
		}
	else
		{
			WinActivate, ahk_exe EXCEL.EXE
			return
		}
}

#.::
IfWinExist, ahk_exe calc1.exe 
{
	WinActivate
	return
}
else
{
	Sleep, 100
	Run c:\Windows\System32\calc1.exe
	WinWait, ahk_exe calc1.exe 
	WinMove, ahk_exe calc1.exe,,1492,753,417,317
	return
}

<#o::
IfWinNotExist, ahk_exe OUTLOOK.EXE
{
	Sleep, 100
	Run C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE /recycle
	return
}
else
{
		IfWinActive, ahk_exe OUTLOOK.EXE
		{
			WinGet, Instances, Count, ahk_exe OUTLOOK.EXE
			If Instances > 1
			WinSet, Bottom,, A
			WinActivate, ahk_EXE OUTLOOK.EXE
			return
		}
	else
		{
			WinActivate, ahk_exe OUTLOOK.EXE
			return
		}
}

<#p::
IfWinNotExist, ahk_exe PDFXEdit.exe
{
	Run "C:\Program Files\Tracker Software\PDF Editor\PDFXEdit.exe"
	WinWait, ahk_exe PDFXEdit.exe
	WinActivate, ahk_exe PDFXEdit.exe
	return
}
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

<#m::
IfWinNotExist, ahk_exe thunderbird.exe
{
	Run "C:\Program Files (x86)\Mozilla Thunderbird\thunderbird.exe"
	WinWait, ahk_exe thunderbird.exe
	WinActivate, ahk_exe thunderbird.exe
	return
}
else
{
		IfWinActive, ahk_exe thunderbird.exe
		{
			WinGet, Instances, Count, ahk_exe thunderbird.exe
			If Instances > 1
			WinSet, Bottom,, A
			WinActivate, ahk_EXE thunderbird.exe
			return
		}
	else
		{
			WinActivate, ahk_exe thunderbird.exe
			return
		}
}

<#c::
	Run c:\Program Files\totalcmd\TOTALCMD64.EXE 
	WinWait, ahk_exe TOTALCMD64.EXE
	WinMove, ahk_exe TOTALCMD64.EXE,,10,10,1900,1060
	WinSet, Style, -0xC00000, ahk_exe TOTALCMD64.EXE
	WinActivate, ahk_exe TOTALCMD64.EXE
	return

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
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;#PgDn::	; Next Window
;WinGetClass, CurrentActive, A
;WinGet, Instances, Count, ahk_class %CurrentActive%
;If Instances > 1
	;WinSet, Bottom,, A
;WinActivate, ahk_class %CurrentActive%
;return

;#PgUp::	; Previous Window
;WinGetClass, CurrentActive, A
;WinGet, Instances, Count, ahk_class %CurrentActive%
;If Instances > 1
	;WinActivateBottom, ahk_class %CurrentActive%
;return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

;<#b::
;IfWinExist, ahk_exe qutebrowser.exe 
;{
	;WinActivate
	;return
;}
;else
;{
	;Run "c:\Program Files\qutebrowser\qutebrowser.exe",,,qutePID
	;WinWait, ahk_exe qutebrowser.exe,,,,
	;WinMove, ahk_exe qutebrowser.exe,,10,10,1900,1060
	;WinSet, Style, -0xC00000, ahk_exe qutebrowser.exe
	;WinActivate, ahk_exe qutebrowser.exe
	;return
;}

<#b::
IfWinNotExist, ahk_exe qutebrowser.exe
{
	Run "c:\Program Files\qutebrowser\qutebrowser.exe"
	WinWait, ahk_exe qutebrowser.exe
	WinMove, ahk_exe qutebrowser.exe,,10,10,1900,1060
	WinSet, Style, -0xC00000, ahk_exe qutebrowser.exe
	WinActivate, ahk_exe qutebrowser.exe
	return
}
else
{
IfWinActive, ahk_exe qutebrowser.exe
	{
		Send, +J
		return
	}
	else
	{
		WinActivate
		return
	}
}

<#1::
IfWinExist, ahk_exe i_view64.exe 
{
	WinActivate
	return
}
else
{
	Run "c:\Program Files\IrfanView\i_view64.exe ",,,iviewPID
	WinWait, ahk_pid %iviewPID%
	WinActivate, ahk_pid %iviewPID%
	return
}

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
	
;-Caption
LWIN & LButton::
WinSet, Style, -0xC00000, A
return

;+Caption 
LWIN & RButton::
WinSet, Style, +0xC00000, A
return

;LWin & f::return
; Fullscreen
; ----------
;LWin & f::
;WinGet Style, Style, A
;if(Style & 0xC40000) {
;  WinSet, Style, -0xC40000, A
;  WinMaximize, A 
;} else {
;  WinSet, Style, +0xC40000, A
;  WinRestore, A
;}
;return

<#h::
WinMinimize, A
return

CapsLock::^q

; Clear console log with Ctrl+L and exit it with Ctrl+D
; -----------------------------------------------------------------------------
;<^l::
;	SetTitleMatchMode,2
;	IfWinActive, ahk_class ConsoleWindowClass
;	{
;		SendInput ^c
;		SendInput cls{ENTER}
;		Return
;	}
;	Else SendInput ^l
;	Return
;
;<^d::
;	SetTitleMatchMode,2
;	IfWinActive, ahk_class ConsoleWindowClass
;	{
;		SendInput ^c
;		SendInput exit{ENTER}
;		Return
;	}
;	Else SendInput ^d
;	Return

<#t::
if WinExist("ahk_pid todo")
{
    WinActivate
	;GroupActivate, todo, R
	return
}
else
{
	Run, "c:\Users\Florian\msys2\todo.cmd" "-msys",,,todo
    WinWait ahk_pid todo
    WinActivate ahk_pid todo
	;GroupAdd, todo, ahk_exe mintty.exe
	;GroupActivate, todo, R
	return
}

#!d::
FormatTime,Datum,,yyyy-MM-dd
send, %Datum%
return

#f::

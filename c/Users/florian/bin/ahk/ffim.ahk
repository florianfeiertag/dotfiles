#SingleInstance force

;;; Begin autoexecute section ;;;;

SetTitleMatchMode, 2
GroupAdd, excel, ahk_class XLMAIN
GroupAdd, word, ahk_exe WINWORD.EXE
GroupAdd, mail, ahk_class rctrl_renwnd32
GroupAdd, vectorworks, ahk_exe Vectorworks2021.exe
GroupAdd, pdf, ahk_exe PDFXEdit.exe
GroupAdd, thunderbird, ahk_exe thunderbird.exe
GroupAdd, term, ahk_exe mintty.exe
return

;;; End of autoexecute section ;;;

;;; Windows Shortcuts ;;;;;;;;;;;;

; disable Feedback-Hub
<#!f::
return
<#f::
return

; Always on top
^!+t::
Winset, Alwaysontop, , A
return

; Minimize
<#h::
WinMinimize, A
return

; Disable Top Bar
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

; CapsLock as preview in TotalCMD
CapsLock::
Send ^q
return

; Insert date in format YYYY-MM-DD
#!d::
FormatTime, CurrentDate,, yyyy-MM-dd
SendInput %CurrentDate%
return

; Dexpot
<#Tab::
Run c:\Program Files (x86)\Dexpot\dexpot.exe /d
return

;;; Software ;;;;;;;;;;;;;;;;;;;;;

; Vectorworks
<#v::
if !WinExist("ahk_exe Vectorworks2021.exe")
{
	Run c:\Program Files\Vectorworks 2021\Vectorworks2021.exe
	WinWait, Vectorworks
	WinMaximize, Vectorworks
	WinSet, Style, -0xC00000, Vectorworks
	WinActivate, Vectorworks
	return
}
GroupActivate, vectorworks, r
WinSet, Style, -0xC00000, Vectorworks
WinActivate, Vectorworks
return

; Excel
<#x::
if WinExist("ahk_exe EXCEL.EXE")
{
    GroupActivate, excel, r
    return
}
else
{
    MsgBox,0,Excel,No Excel running...,5
    return
}

; Word 
<#w::
GroupActivate, word, r
return

; Mozilla Thunderbird
<#m::
if !WinExist("ahk_exe thunderbird.exe")
{
	Run "C:\Program Files (x86)\Mozilla Thunderbird\thunderbird.exe"
	WinWait, ahk_exe thunderbird.exe
}
GroupActivate, thunderbird, r
return

; Outlook
<#o::
if !WinExist("ahk_class rctrl_renwnd32")
{
	Run "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE" /recycle
	WinWait, ahk_class rctrl_renwnd32
}
GroupActivate, mail, r
return

; TotalCMD
<#c::
Run c:\Program Files\totalcmd\TOTALCMD64.EXE
WinWait, ahk_exe TOTALCMD64.EXE
WinMove, ahk_exe TOTALCMD64.EXE,,10,10,1900,1060
WinSet, Style, -0xC00000, ahk_exe TOTALCMD64.EXE
WinActivate, ahk_exe TOTALCMD64.EXE
return

; Chrome
if !WinExist("ahk_exe chrome.exe")
{
	Run "c:\Users\Feiertag\AppData\Local\Google\Chrome\Application\chrome.exe"
	WinWait, ahk_exe chrome.exe
	WinActivate, ahk_exe chrome.exe
	return
}
if WinActive("ahk_exe chrome.exe")
{
    Send ^{Tab}
    return
}

; PDF X-Change
<#p::
if !WinExist("ahk_exe PDFXEdit.exe")
{
	Run "c:\Program Files\Tracker Software\PDF Editor\PDFXEdit.exe"
	WinWait, ahk_exe PDFXEdit.exe
	WinActivate, ahk_exe PDFXEdit.exe
	return
}
if WinActive("ahk_exe PDFXEdit.exe")
{
	Send ^{Tab}
	return
}
WinActivate
return

; IrfanView
<#1::
if !WinExist("ahk_exe i_view64.exe")
{
	Run "c:\Program Files\IrfanView\i_view64.exe" /hide=5
	WinWait, ahk_exe i_view64.exe 
	WinActivate, ahk_exe i_view64.exe
	return
}
WinActivate
return

; Calculator
#.::
if !WinExist("ahk_exe speedcrunch.exe")
{
    Run "c:\Users\Florian\bin\speedcrunch\speedcrunch.exe")
    WinWait, ahk_exe speedcrunch.exe
    WinMove, ahk_exe speedcrunch.exe,,1283,545,627,525
    WinActivate, ahk_exe speedcrunch.exe
    return
}
WinActivate
return

;IfWinExist, ahk_exe calc1.exe 
;{
	;WinActivate
	;return
;}
;else
;{
	;Sleep, 100
	;Run c:\Windows\System32\calc1.exe
	;WinWait, ahk_exe calc1.exe 
	;WinMove, ahk_exe calc1.exe,,1492,753,417,317
	;return
;}

;<#b::
;IfWinNotExist, ahk_exe qutebrowser.exe
;{
    ;Run "c:\Program Files\qutebrowser\qutebrowser.exe"
    ;WinWait, ahk_exe qutebrowser.exe
    ;WinMove, ahk_exe qutebrowser.exe,,10,10,1900,1060
    ;WinSet, Style, -0xC00000, ahk_exe qutebrowser.exe
    ;WinActivate, ahk_exe qutebrowser.exe
    ;return
;}
;else
;{
;IfWinActive, ahk_exe qutebrowser.exe
    ;{
        ;Send, +J
        ;return
    ;}
    ;else
    ;{
        ;WinActivate
        ;return
    ;}
;}

<#b::
IfWinNotExist, ahk_exe brave.exe
{
	Run "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"
	WinWait, ahk_exe brave.exe
	WinMove, ahk_exe brave.exe,,10,10,1900,1060
	;WinSet, Style, -0xC00000, ahk_exe qutebrowser.exe
	WinActivate, ahk_exe brave.exe
	return
}
else
{
IfWinActive, ahk_exe brave.exe
	{
		Send, ^{Tab} 
		return
	}
	else
	{
		WinActivate
		return
	}
}

;;; Terminals ;;;;;;;;;;;;;;;;;;;;

; Terminal for Todo.txt
<#t::
if WinExist("todo")
{
    WinActivate
    return
}
else
{
    Run "c:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -command "& c:\Users\Florian\bin\todo.ps1",,,todoPID
    WinActivate, todo
    return
}

; scratchpad
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

; First Terminal & switching
<#Enter::
if !WinExist("ahk_exe mintty.exe")
{
	Run  "c:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -command "c:\Users\Florian\bin\terminal.ps1"
	WinMove, ahk_exe mintty.exe,,10,10,945,1060
    return
}
if WinActive("ahk_exe mintty.exe")
{
    GroupActivate, term, r
    return
}
WinActivate
return

; open new terminal
<#+Enter::
Run  "c:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -command "c:\Users\Florian\bin\terminal.ps1"
WinMove, ahk_exe mintty.exe,,10,10,945,1060
return

; open GVIM
~v & Enter::
;GetKeyState, state, #
;if state = D
IfWinExist, ahk_exe gvim.exe
{
    WinActivate
    return
}
else
{
    Run "c:\Users\Florian\bin\gvim\vim82\gvim.exe"
    WinWait, ahk_exe gvim.exe
    WinMove, ahk_exe gvim.exe,,10,10,945,1060
    return
}

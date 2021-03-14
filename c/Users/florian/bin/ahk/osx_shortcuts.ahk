#NoEnv		; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn		; Enable warnings to assist with detecting common errors.
SendMode Input	; Recommended for new scripts due to its superior speed and reliability.

;;;;;;;;;;;;;;;;;;
; OSX style keys ;
;;;;;;;;;;;;;;;;;;


; alt-delete deletes previous word
!BS::Send {LShift down}{LCtrl down}{Left}{LShift Up}{Lctrl up}{Backspace}

#BS::
if WinActive("ahk_exe explorer.exe")
	Send {Del} ; Win+Backspace deletes files in Explorer
else
	Send {LShift down}{Home}{LShift Up}{Backspace} ; Win+Backspace deletes whole line
Return


; Navigation of smaller chunks (skip word)
!Left::Send {ctrl down}{Left}{ctrl up}
!Right::Send {ctrl down}{Right}{ctrl up}

; Navigation using of bigger chunks (Skip to start/end of line)
#Left::Send {Home}
#Right::Send {End}
#Up::Send {PgUp}
#Down::Send {PgDown}


; Selection (uses a combination of the above with shift)
!+Left::Send {ctrl down}{shift down}{Left}{shift up}{ctrl up}
!+Right::Send {ctrl down}{shift down}{Right}{shift up}{ctrl up}
^+Left::Send {shift down}{Home}}{shift up}
^+Right::Send {shift down}{End}}{shift up}
!+Up::Send {ctrl down}{shift down}{Up}}{shift up}{ctrl up}
!+Down::Send {ctrl down}{shift down}{Down}}{shift up}{ctrl up}
^+Up::Send {Lctrl down}{shift down}{Home}}{shift up}{Lctrl up}
^+Down::Send {Lctrl down}{shift down}{End}}{shift up}{Lctrl up}


; Virtual Desktop navigation
^Up::#Tab
^Down::return ; no good alternative for App Expose
^Left::#^Left
^Right::#^Right


; Task manager
#!Esc::Send ^+{Esc}

; Start Menu
#Space::Send ^{Esc}

; Do not open start menu on Windows key
~LWin Up:: return


; Closing windows and programs (using the Win Key)
#w::^F4
#q::!F4


; The following section replaces Ctrl+Key with  Win+Key
#a::^a
#b::^b
#c::^c
#d::^d
#e::^e
;following will not remap using the normal method
#f::Send {LCtrl down}{f}{LCtrl up}
#g::^g
#h::^h
#i::^i
#j::^j
#k::^k
#l::Send {LCtrl down}{l}{LCtrl up}
#m::^m
#n::^n
#o::^o
#p::^p
;#q::^q ;disabled --remapped to alt-F4 instead
#r::^r
#s::^s
#t::^t
#u::^u
#v::^v
;#w::^w ;disabled --remapped to ctrl-F4 instead
#x::^x

#4::^4
#5::^5
#6::^6
#7::^7
#8::^8
#9::^9
#0::^0
#,::Send {LCtrl down}{,}{LCtrl up}
#.::^.

; The following section replaces Ctrl+Shift+Key with  Win+Shift+Key
#+a::^+a
#+b::^+b
#+c::^+c
#+d::^+d
#+e::^+e
;following won't remap using the normal method
#+f::Send {LCtrl down}{LShift down}{f}{LShift up}{LCtrl up}
#+g::^+g
#+h::^+h
#+i::^+i
#+j::^+j
#+k::^+k
#+l::Send {LCtrl down}{LShift down}{l}{LShift up}{LCtrl up}
#+m::^+m
#+n::^+n
#+o::^+o
#+p::^+p
#+q::^+q
#+r::^+r
#+s::^+s
#+t::^+t
#+u::^+u
#+v::^+v
#+w::^+w
#+x::^+x
#+z::^y
#+1::^+1
#+2::^+2
#+3::^+3
#+4::^+4
#+5::^+5
#+6::^+6
#+7::^+7
#+8::^+8
#+9::^+9
#+0::^+0
#+,::Send {LCtrl down}{LShift down}{,}{LShift up}{LCtrl up}
#+.::^+.

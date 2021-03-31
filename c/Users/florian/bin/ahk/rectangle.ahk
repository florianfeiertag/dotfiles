#SingleInstance force
#NoTrayIcon

;Left
^#h::
WinMove,A,,10,10,945,1060
return

;Down
^#j::
WinMove,A,,10,545,1900,525
return

;Up
^#k::
WinMove,A,,10,10,1900,525
return

;Right
^#l::
WinMove,A,,965,10,945,1060
return

;First Third
^#d::
WinMove,A,,10,10,627,1060
return

;First Two Thirds
^#e::
WinMove,A,,10,10,1263,1060
return

;Center Third
^#f::
WinMove,A,,647,10,627,1060
return

;Last Two Thirds
^#t::
WinMove,A,,647,10,1263,1060
return

;Last Third
^#g::
WinMove,A,,1283,10,627,1060
return

;Almost Maximize / Fullscreen
^#!t::
WinMove,A,,10,10,1900,1060
return

;Center
^#c::
WinMove,A,,488,278,945,525
return

;keyboardhook.ahk - View key history and script info

;Top Left Sixth
^#SC019::
WinMove,A,,10,10,627,525
return

;Top Center Sixth
^#SC01A::
WinMove,A,,647,10,627,525 
return

;Top Right Sixth
^#SC01B::
WinMove,A,,1283,10,627,525
return

;Bottom Left Sixth
^#SC027::
WinMove,A,,10,545,627,525
return

;Bottom Center Sixth
^#SC028::
WinMove,A,,647,545,627,525
return

;Bottom Right Sixth
^#SC02B::
WinMove,A,,1283,545,627,525
return

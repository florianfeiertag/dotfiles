#SingleInstance force
;<#!l::
;{
 ;DetectHiddenWindows,OFF
 ;WinGet windows, List
 ;Loop %windows%
 ;{
  ;id := windows%A_Index%
  ;WinGetTitle wt, ahk_id %id%
  ;WinGetPos x,y,width,height,%wt%
  ;if(wt)
   ;r .= wt . " x:" . x . " y: " . y . " width:" . width . " height:" . height . "`n"
 ;}
 ;MsgBox %r%
;}

;WinMove, WinTitle, WinText, X, Y , Width, Height, ExcludeTitle, ExcludeText

;Left
^#h::
WinMove,A,,7,10,951,1063
return

;Right
^#l::
WinMove,A,,962,10,951,1063
return

;First Third
^#d::
WinMove,A,,7,10,633,1063
return

;First Two Thirds
^#e::
WinMove,A,,7,10,1269,1063
return

;Center Third
^#f::
WinMove,A,,644,10,633,1063
return

;Last Two Thirds
^#t::
WinMove,A,,644,10,1269,1063
return

;Last Third
^#g::
WinMove,A,,1280,10,633,1063
return

;Almost Maximize
^#!t::
WinMove,A,,7,10,1906,1063
return

;Center
^#c::
WinMove,A,,481,278,959,532
return

;Top Left Sixth
^#SC019::
WinMove,A,,3,10,641,532
return

;Top Center Sixth
^#SC01A::
WinMove,A,,640,10,641,532 
return

;Top Right Sixth
^#SC01B::
WinMove,A,,1276,10,641,532
return

;Bottom Left Sixth
^#SC027::
WinMove,A,,3,545,641,532
return

;Bottom Center Sixth
^#SC028::
WinMove,A,,640,545,641,532
return

;Bottom Right Sixth
^#SC02B::
WinMove,A,,1276,545,641,532
return

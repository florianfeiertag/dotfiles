*******************************************************
!!!!!Usage of this software is at your own risk!!!!!!!!

 this software will alter thermal behavior of computers

--------------------------------------------------------
    !!!Vista user!!!: Something  that can be simply 
  "double-clicked" in WinXP might require admin rights 
 to run properly in Vista: right click->elevated rights
--------------------------------------------------------
0.  Uninstall earlier versions of TPFanControl manually:
    run uninstall.bat of older TPFanControl, if exists
    delete old files & folder C:\tpfancontrol, if exists
    uninstall TVicPort port driver (free edition).
********************************************************

1.  DOUBLE CLICK setup.exe,  that means:
    expands all files and folders to 
    C:\Program Files\TPFanControl,
    installs port driver registered edition,
    creates start menue folder TPFanControl, and
    creates desktop-, quickstart-, or startup-icon

2.  Start->Programs->TPFanControl->edit TPFanControl.ini
    change values for your needs, save and exit. 
    Default settings are for T61.

3.  run TPFanControl as program application:
    Start->Programs->TPFanControl->TPFanControl

4.  Uninstall Program: Start->programs->
    ->TPFanControl->TPFanControl->Uninstall TPFanControl

********************************************************
5.  optional: install & start TPFanControl as service:

stop TPFanControl first by menue item "End Program".

Go to Start->Programs->TPFanControl->optional->service

run ...\optional\service\install_service
[that is equal to run TPFanControl -i ] 
installs service running automatically from boot time

DOUBLE CLICK  start_service,   that means:
[that is equal to Start->run->net start TPFanControl]

running TPFanControl as service under VISTA:
there will be no icon! (read the FAQs: TPFanControl.com)

to get a digital icon with restricted rights, run
tpfcicon.exe or tpfcicon_noballons.exe that means:
run ...\optional\service\tpfcicon.exe
This icon has no fan control menue items!!
--------------------------------------------------------
6.  stop & uninstall the service:

Go to Start->Programs->TPFanControl->optional->service

Double click: stop_service
[that is equal to start->run->net stop TPFanControl]

Double click: uninstall_service
[that is equal to run TPFanControl.exe -u]  

********************************************************
Read the FAQs: http://TPFanControl.com
Read http://forum.thinkpads.com/viewtopic.php?t=17715
credits to the authors: Sander"Iconman"http://a-st.de
and Shimodax & emaijala @ http://forum.thinkpads.com 
********************************************************

!!!!!Usage of this software is at your own risk!!!!!!!!!


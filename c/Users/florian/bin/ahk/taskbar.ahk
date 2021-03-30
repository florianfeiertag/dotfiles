#SingleInstance force

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
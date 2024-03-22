
; hide and show the application window
!Numpad1::
   SetTitleMatchMode, 2 ; Match the title of the window more flexibly
   IfWinActive, [your application name]
    {
        WinMinimize, [your application name]
    }
    else if WinExist("[your application name]")
    {
        WinActivate, [your application name]
    }
    else
    {
        ; Replace with the actual path to your application's executable file
        Run, C:\Users\...\[your application name].exe ; 
    }
return
startProgram := false 

FUNC:
if (startProgram)
{
    MouseMove, 10, 0, 1, R  ; Move the mouse one pixel to the right
    sleep 100
    MouseMove, -10, 0, 1, R ; Move the mouse back one pixel
}
return

^1::
CusToolTip(startProgram, 2000)
startProgram := !startProgram 
if (startProgram)
{
    MsgBox, start program
    SetTimer, FUNC, 2000
}
else
{
    MsgBox, stop program
    SetTimer, FUNC, Off
}
return

CusToolTip(Message, time := 2000)
{
    ToolTip, %Message%
    SetTimer, HideTooltip, %time%
}

HideTooltip:
    ToolTip  ; 关闭工具提示
    SetTimer, HideTooltip, Off  ; 关闭定时器
    return
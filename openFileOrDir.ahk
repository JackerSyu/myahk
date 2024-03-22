
; cmd to open file with editor 
:*:openahk::
vsCodePath = "C:\YOUR\IDE\Folder\Code.exe"
targetPath = "D:\YOUR\File.ahk"
Run  %vsCodePath% --new-window %targetPath%
return 

; :*:openahk::
; ;SetWorkingDir %A_ScriptDir%  ; 確保一致的起始目錄。
; folder_path = "D:\ahk" 
; SendMode Input 
; Run, cmd /C "cd /D %folder_path% && code myScript.ahk"
; return
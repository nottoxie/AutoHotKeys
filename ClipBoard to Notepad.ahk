#z::
Run https://www.google.com/search?q=%ClipBoard% .com  ; Win+Z
return  (if you don't use return, your code will keep stopping over and over again)
^j::
Run (copy the file location)
sleep, 100 ; (Wait for 100 ms)
Send, %ClipBoard%{Enter}
Send, ^s (Saving the NotePad file because the if WinExist has no '*' in it)
Send, {down 1}
sleep, 5000 ; (Wait for 5 seconds)
if WinExist("Untitled - Notepad")
	WinKill ; Use the window found by WinExist and force stop it. Alt=Process kill.
return


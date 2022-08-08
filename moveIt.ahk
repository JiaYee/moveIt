#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
isActive = 0

MsgBox, Press F11 to moveIt, Press F12 to stop.
return

F11::
MsgBox, I like to moveIt moveIt!
isActive = 1
Loop,
{
	if (isActive = 1) {
		MouseGetPos, x, y
		newX := x+5
		newY := y+5
		MouseMove, %newX%, %newY%
		Sleep, 5000
	}
	else {
		break
	}
}
return

F12::
isActive = 0
MsgBox, Party is stopped, Press F11 to start again!
return

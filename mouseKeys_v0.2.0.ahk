; MouseKeys v0.2.0
; Make sure NumLock is On
#SingleInstance Force
#Requires AutoHotkey v2.0+ ; For debugging purposes. Probably safe to comment out
SoundBeep 880, 200 ; High pitch beep on startup
cSpeedX := 0
cSpeedY := 0
Return

^q::{ ; Quit: Ctrl + Q
	SoundBeep 440, 500 ; Low pitch beep on exit
	ExitApp
}

NumpadDiv::LButton ; Numpad "/"   --> Left Mouse Button (LMB)

NumpadDot::MButton ; Numpad "."  --> Middle Mouse Button

NumpadMult::RButton ; Numpad "*"  --> Right Mouse Button (RMB)

*NumpadAdd::Send("{WheelDown 1}") ; Scroll Down
*NumpadSub::Send("{WheelUp 1}") ; Scroll Up

; Numpad 5 is LMB double click
Numpad5::Send("{Click 2}") ; Alternative 1
;Numpad5::{ ; Alternative 2: if the method above is not working for some games
;	Click "Down"
;	Sleep 50
;	Click "Up"
;	Sleep 50
;	Click "Down"
;	Sleep 50
;	Click "Up"
;}

*Numpad0::{ ; Num0 --> Toggle LMB hold / release
	if(GetKeyState("LButton")){
		Click "Up"
	}else{
		Click "Down"
	}
}
Numpad0 & NumpadDot::{ ; Num0 + NumDot --> Toggle RMB hold / release
	if(GetKeyState("RButton")){
		Click "Up Right"
	}else{
		Click "Down Right"
	}
}

; Cursor Movement:
*Numpad1::{
	global
	while GetKeyState("Numpad1", "P") {
		cSpeedX -= 4
		cSpeedY += 4
		MouseMove cSpeedX,cSpeedY,5,"R"
		; DllCall("mouse_event", "UInt", 0x0001, "UInt", cSpeedX, "UInt", cSpeedY)
		Sleep 60
	}
	cSpeedX := 0
	cSpeedY := 0
}
*Numpad2::{
	global
	while GetKeyState("Numpad2", "P") {
		cSpeedY += 4
		MouseMove 0,cSpeedY,5,"R"
		Sleep 60
	}
	cSpeedY := 0
}
*Numpad3::{
	global
	while GetKeyState("Numpad3", "P") {
		cSpeedX += 4
		cSpeedY += 4
		MouseMove cSpeedX,cSpeedY,5,"R"
		Sleep 60
	}
	cSpeedX := 0
	cSpeedY := 0
}
*Numpad7::{
	global
	while GetKeyState("Numpad7", "P") {
		cSpeedX -= 4
		cSpeedY -= 4
		MouseMove cSpeedX,cSpeedY,5,"R"
		Sleep 60
	}
	cSpeedX := 0
	cSpeedY := 0
}
*Numpad8::{
	global
	while GetKeyState("Numpad8", "P") {
		cSpeedY -= 4
		MouseMove 0,cSpeedY,5,"R"
		Sleep 60
	}
	cSpeedY := 0
}
*Numpad9::{
	global
	while GetKeyState("Numpad9", "P") {
		cSpeedX += 4
		cSpeedY -= 4
		MouseMove cSpeedX,cSpeedY,5,"R"
		Sleep 60
	}
	cSpeedX := 0
	cSpeedY := 0
}
*Numpad4::{
	global
	while GetKeyState("Numpad4", "P") {
		cSpeedX -= 4
		MouseMove cSpeedX,0,5,"R"
		Sleep 60
	}
	cSpeedX := 0
}
*Numpad6::{
	global
	while GetKeyState("Numpad6", "P") {
		cSpeedX += 4
		MouseMove cSpeedX,0,5,"R"
		Sleep 60
	}
	cSpeedX := 0
}
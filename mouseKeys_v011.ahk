; MouseKeys v0.1.1
; Make sure NumLock is On
#SingleInstance Force
#Requires AutoHotkey v2.0+ ; For debugging purposes. Probably safe to comment out
SoundBeep 880, 200 ; High pitch beep on startup
cSpeedX := 8
cSpeedY := 8
Return

^q::{ ; Quit: Ctrl + Q
	SoundBeep 440, 500 ; Low pitch beep on exit
	ExitApp
}

CursorInp(sX,sY){
	global cSpeedX, cSpeedY
	if(sX == 0){
		cSpeedX := 8
	}else{
		cSpeedX += 4 ;*sX
	}
	if(sY == 0){
		cSpeedY := 8
	}else{
		cSpeedY += 4 ;*sY
	}
	;MouseMove cSpeedX * sX, cSpeedY * sY, 10, "R" 
	DllCall("mouse_event", "UInt", 0x0001, "UInt", cSpeedX * sX, "UInt", cSpeedY * sY)
}

NumpadDiv::LButton ; Numpad "/"   --> Left Mouse Button (LMB)

NumpadDot::MButton ; Numpad "."  --> Middle Mouse Button

NumpadMult::RButton ; Numpad "*"  --> Right Mouse Button (RMB)

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
*Numpad1::CursorInp(-1,1)
*Numpad2::CursorInp(0,1)
*Numpad3::CursorInp(1,1)
*Numpad4::CursorInp(-1,0)
*Numpad6::CursorInp(1,0)
*Numpad7::CursorInp(-1,-1)
*Numpad8::CursorInp(0,-1)
*Numpad9::CursorInp(1,-1)
*Numpad1 Up::
*Numpad2 Up::
*Numpad3 Up::
*Numpad4 Up::
*Numpad6 Up::
*Numpad7 Up::
*Numpad8 Up::
*Numpad9 Up::{
CursorInp(0,0)
}
*NumpadAdd::Send("{WheelDown 1}")
*NumpadSub::Send("{WheelUp 1}")
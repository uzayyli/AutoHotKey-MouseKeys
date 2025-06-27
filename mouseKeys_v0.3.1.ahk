#SingleInstance Force
#Requires AutoHotkey v2.0+ ; For debugging purposes. Probably safe to comment out
SoundBeep 864, 200
cInputX := 0
cInputY := 0
Return
OneMove(){
	global cInputX, cInputY
	static cSpeedX := 0, cSpeedY := 0
	if(cInputX == 0 and cInputY == 0){
		cSpeedX := 0
		cSpeedY := 0
		SetTimer OneMove,0
		Return
	}
	cSpeedX += cInputX
	cSpeedY += cInputY
	MouseMove cSpeedX,cSpeedY,,"R"
	;DllCall("mouse_event", "UInt", 0x0001, "UInt", cSpeedX, "UInt", cSpeedY)
	SetTimer OneMove, 60 ; 60ms cursor update interval
}
NumpadDiv::LButton ; Numpad "/"   --> Left Mouse Button (LMB)
NumpadMult::RButton ; Numpad "*"  --> Right Mouse Button (RMB)
NumpadDot::MButton ; Numpad "."  --> Middle Mouse Button
*NumpadAdd::Send("{WheelDown 1}") ; Numpad "+" --> Scroll Wheel Down
*NumpadSub::Send("{WheelUp 1}") ; Numpad "-" --> Scroll Wheel Up
Numpad5::Send("{Click 2}") ; Alternative 1
*Numpad0::{ ; Hold / Release LMB
	if(GetKeyState("LButton")){
		Click "Up"
	}else{
		Click "Down"
	}
}
Numpad0 & NumpadDot::{ ; Hold / Release RMB
	if(GetKeyState("RButton")){
		Click "Up Right"
	}else{
		Click "Down Right"
	}
}
*Numpad1::{
	global cInputX := -4, cInputY := 4
	;cInputX := -4
	;cInputY := 4
	OneMove()
	KeyWait("Numpad1")
	cInputX := 0
	cInputY := 0
}
*Numpad2::{
	global cInputY := 4
	OneMove()
	KeyWait("Numpad2")
	cInputY := 0
}
*Numpad3::{
	global cInputX := 4, cInputY := 4
	OneMove()
	KeyWait("Numpad3")
	cInputX := 0
	cInputY := 0
}
*Numpad4::{
	global cInputX := -4
	OneMove()
	KeyWait("Numpad4")
	cInputX := 0
}
*Numpad6::{
	global cInputX := 4
	OneMove()
	KeyWait("Numpad6")
	cInputX := 0
}
*Numpad7::{
	global cInputX := -4, cInputY := -4
	OneMove()
	KeyWait("Numpad7")
	cInputX := 0
	cInputY := 0
}
*Numpad8::{
	global cInputY := -4
	OneMove()
	KeyWait("Numpad8")
	cInputY := 0
}
*Numpad9::{
	global cInputX := 4, cInputY := -4
	OneMove()
	KeyWait("Numpad9")
	cInputX := 0
	cInputY := 0
}
^q::{ ; Quit: Ctrl + Q
	ExitApp
}
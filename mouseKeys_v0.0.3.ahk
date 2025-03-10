; MouseKeys v0.0.3
; Make sure NumLock is On
#SingleInstance Force
#Requires AutoHotkey v2.0+ ; For debugging purposes. Probably safe to comment out
SoundBeep 880, 200 ; High pitch beep on startup
Return

^q::{ ; Quit: Ctrl + Q
	SoundBeep 440, 500 ; Low pitch beep on exit
	ExitApp
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

Numpad0 & Numpad2::{ ; Num0 + Num2 --> Toggle RMB hold / release
	if(GetKeyState("RButton")){
		Click "Up Right"
	}else{
		Click "Down Right"
	}
}

*Numpad1::MouseMove -10, 10, 50, "R"
*Numpad2::MouseMove 0, 10, 50, "R"
*Numpad3::MouseMove 10, 10, 50, "R"
*Numpad4::MouseMove -10, 0, 50, "R"
*Numpad6::MouseMove 10, 0, 50, "R"
*Numpad7::MouseMove -10, -10, 50, "R"
*Numpad8::MouseMove 0, -10, 50, "R"
*Numpad9::MouseMove 10, -10, 50, "R"
*NumpadAdd::Send("{WheelDown 1}") ; Numpad "+" --> scroll wheel down
*NumpadSub::Send("{WheelUp 1}") ; Numpad "-" --> scroll wheel up
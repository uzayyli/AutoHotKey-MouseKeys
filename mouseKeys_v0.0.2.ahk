; MouseKeys v0.0.2
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

NumpadDel::MButton ; Shift + "."  --> Middle Mouse Button

NumpadMult::RButton ; Numpad "*"  --> Right Mouse Button (RMB)

Numpad5::{ ; LMB Double Click
	Click "Down"
	Sleep 50
	Click "Up"
	Sleep 50
	Click "Down"
	Sleep 50
	Click "Up"
}

Numpad0::{ ; Hold / Release LMB
	if(GetKeyState("LButton")){
		Click "Up"
	}else{
		Click "Down"
	}
}

NumpadDot::{ ; Hold / Release RMB
	if(GetKeyState("RButton")){
		Click "Up Right"
	}else{
		Click "Down Right"
	}
}

; Move cursor in eight directions
*Numpad1::MouseMove -10, 10, 50, "R"
*Numpad2::MouseMove 0, 10, 50, "R"
*Numpad3::MouseMove 10, 10, 50, "R"
*Numpad4::MouseMove -10, 0, 50, "R"
*Numpad6::MouseMove 10, 0, 50, "R"
*Numpad7::MouseMove -10, -10, 50, "R"
*Numpad8::MouseMove 0, -10, 50, "R"
*Numpad9::MouseMove 10, -10, 50, "R"

; "-" and "+" keys -> wheel scroll
;NumpadAdd::WheelDown ; These also work, but send two "scroll down" events instead of one(?)
;NumpadSub::WheelUp
NumpadAdd::Send("{WheelDown 1}") ; These work better
NumpadSub::Send("{WheelUp 1}")

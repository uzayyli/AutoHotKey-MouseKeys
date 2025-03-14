# AutoHotKey-MouseKeys
AutoHotKey alternative to Windows Mouse Keys, use your mouse with NumPad keys. It can click, hold and release the buttons, move the cursor and scroll the wheel.

# Notes
- To use, simply install [AutoHotKey v2](https://autohotkey.com/download/ahk-v2.exe) and double click the `.ahk` file
- The script is written with AutoHotKey v2.0.19
- I'm new to AHK scripting, so I may be doing some rookie mistakes. Will probably push more updates
- For most of the functionaliy to work, you want NumLock to be ON
- It does not work with programs that are running as admin (See [FAQ](https://www.autohotkey.com/docs/v1/FAQ.htm#uac)). In that case, either run the program as non-admin or use the AHK script as admin. You can also run the script with `AutoHotkey64_UIA.exe` instead of `AutoHotkey64.exe`

# TODO
Possible future updates:
- Make the cursor speed customizable
- Add some GUI / visual indicators
- Implement smooth cursor movement (acceleration, damping etc)

# Related Projects
There are similar software out there but none of them have the full functionality I needed. Still, they can be useful:
- [Mouse Keys](https://support.microsoft.com/en-us/windows/use-mouse-keys-to-move-the-mouse-pointer-9e0c72c8-b882-7918-8e7b-391fd62adf33) (Windows built-in feature)
  - ❌ The "click" key only clicks once and does not hold the button
  - ❌ Too much work switching between left / right clicks
  - ❌ Cursor speed is too low and not smooth
  - ❌ No middle click
- [xkbset](https://askubuntu.com/questions/68807/how-can-i-configure-mousekeys) (Comes with most Linux distros)
  - ✔️ Click key can hold buttons
  - ❌ Too much work switching between left / right clicks
  - ✔️ Good cursor movement, customizable (see `mousekeysaccel` option [xkbset manual](https://manpages.ubuntu.com/manpages/bionic/man1/xkbset.1.html))
  - ❌ No middle click
- [NeatMouse](https://github.com/neatdecisions/neatmouse/) (Windows-only)
  - ✔️ Click key(s) can hold buttons
  - ✔️ Separate keys for left and right buttons
  - ❌ Cursor movement is not smooth
  - ✔️ Can middle click
- [Mouseable](https://github.com/wirekang/mouseable/) (Windows-only)
  - Haven't tried
  

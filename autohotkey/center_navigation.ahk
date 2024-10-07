#Requires AutoHotkey v2.0

*CapsLock:: return

; Vim keys in Dvorak
CapsLock & d:: Send "{Blind}{Left}"
CapsLock & n:: Send "{Blind}{Right}"
CapsLock & h:: Send "{Blind}{Down}"
CapsLock & t:: Send "{Blind}{Up}"
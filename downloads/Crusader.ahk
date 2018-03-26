; Written by VanitasVanitatum 2016
#UseHook On
#InstallKeybdHook
#SingleInstance

CoordMode, Pixel, Screen


*w::Up
*s::Down
*a::Left
*d::Right
; *q::PgUp
; *e::Insert
; *r::Home
WheelDown:: 
MouseClick, Left
MouseClick, Left
MouseClick, Left
MouseClick, Left
MouseClick, Left
Return

WheelUp::
MouseClick, Left
MouseClick, Left
MouseClick, Left
MouseClick, Left
MouseClick, Left
Return






q::
{
MouseGetPos, xposition, yposition
	Click down 350, 750
	Click up   350, 750
CoordMode, Mouse, Screen
MouseClick, left, xposition, yposition
Return
}





e::
{
MouseGetPos, xposition, yposition
	Click down 380, 750
	Click up   380, 750
CoordMode, Mouse, Screen
MouseClick, left, xposition, yposition
Return
}




!F10::Reload
F10::Suspend



; CTRL+ALT+3 to pop up a messagebox
; telling you where the mouse is at
^!3::               
{  
    MouseGetPos, xpos, ypos 
    Msgbox, The cursor is at relative X%xpos% Y%ypos%. 
}
return


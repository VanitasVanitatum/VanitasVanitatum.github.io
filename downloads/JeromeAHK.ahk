#usehook
#SingleInstance force
;RButton::MButton	;;Hotfix for using GDIS

;Indentation rules (╠number╣ is the one you press, ╠number - 1╣ is the number of tab-stops)
; ╠1╣ : Section Titles
; ╠2╣ : Command Declarations
; ╠3╣ : If, Else, and their respective {}
; ╠4╣ : Contents of {}




;;Signature and Abbreviations
	; :*?:hng::Best,{Enter}{Enter}HALLO MAI NAME IS JERMONE!
	:*?:<j::Jerome
	:*?:<g::Jerome Gano
	:*?:<rj::{Enter}{Enter}Regards,{Enter}Jerome
	:*?:<rg::{Enter}{Enter}Regards,{Enter}Jerome Gano
	:*?:<krj::{Enter}{Enter}Kind Regards,{Enter}Jerome
	:*?:<krg::{Enter}{Enter}Kind Regards,{Enter}Jerome Gano
	:*?:<cj::{Enter}{Enter}Cheers,{Enter}Jerome
	:*?:<cg::{Enter}{Enter}Cheers,{Enter}Jerome Gano
	:*?:<yj::{Enter}{Enter}Yours,{Enter}Jerome
	:*?:<yg::{Enter}{Enter}Yours,{Enter}Jerome Gano
	:*?:<bwj::{Enter}{Enter}Best Wishes,{Enter}Jerome
	:*?:<bwg::{Enter}{Enter}Best Wishes,{Enter}Jerome Gano
	#y::
		FormatTime, CurrentDateTime,, yyyy.MM.dd ddd HH'h'mm'm 	; It will look like 2014.10.06 Mon 16:54
		SendInput %CurrentDateTime%
		; Or could use 「：」 instead, (U+FF1A)
		return
	!#v::Run "C:\Software\zeVault\SystemTweaks\AHKScripts\Programs for 「Shortcuts」\Volume.lnk"
		return
	; Conflict with VLC	^Space::		;; Properties of file if in Explorer, consistent with !Enter and !DoubleClick which both show properties
	;		IfWinActive ahk_class CabinetWClass		;Windows Explorer
	;			{
	;				; MouseClick, Left
	;				SendInput {Appskey}r
	;				Return
	;			}
	;		Else ;;		Everything Else
	;			{  SendInput ^{Space}
	;		}
	;		Return*/

	#!s:: ;Searches Discos7.com while stripping naughty characters
		{
		temp=%clipboard%
			SendInput ^c
			ClipWait
			sleep 200
			srch:=RegExReplace(clipboard,"[;:'&?}{\[\].,_-]"," ")
			srch:=RegExReplace(srch,"\s","_")
			srch:=RegExReplace(srch,"_{1,10}","_")
			Run http://musicwhales.net/tracks/%srch%.html
			; Run http://discos7.com/mp3/%srch%.html
			clipboard=%temp%
		}
		return
	!s:: ;Click's through both DL buttongs on Discos7.com
		SendInput {Click}
		Sleep 1000
		SendInput G
		Sleep 300
		SendInput f
		Sleep 100
		SendInput a
		Return
	#!h:: ;Searches junglevibez.net while stripping naughty characters
		{
		temp=%clipboard%
			SendInput ^c
			ClipWait
			sleep 200
			srch:=RegExReplace(clipboard,"[;:'&?}{\[\].,_-]"," ")
			srch:=RegExReplace(srch,"\s","_")
			srch:=RegExReplace(srch,"_{1,10}","_")
			Run http://junglevibez.net/tracks/%srch%.html
			clipboard=%temp%
		}
		return
		;	!x::  ;Saves me having to switch between !` and ^x
		;		{
		;			SendInput {CTRLDOWN}{x}{CTRLUP}
		;		}
		;		Return
		;	!`:: ;Searches mp3juices.is doesn't really work, have the mp3juices.is tab open in Chrome, then highlight the text in ST3 for this to search it
		;	{
		;		SendInput {CTRLDOWN}{c}{CTRLUP}
		;		ClipWait
		;		sleep 200
		;		WinActivate, ahk_class Chrome_WidgetWin_1
		;		WinWait, ahk_class Chrome_WidgetWin_1
		;		Sleep 50
		;		SendInput gggi
		;		Sleep 50
		;		SendInput {CTRLDOWN}{a}{CTRLUP}
		;		Sleep 50
		;		SendInput {CTRLDOWN}{v}{CTRLUP}
		;		SendInput {Enter}
		;	}
		;	Return

;;Current Destinations and Temp Keys
	; !+a::Run "D:\SORT"		;; I do need to sort these ... eventually
	!+o::Run "D:\Files\POV-Ray"		;; Povray
	; #g::Run "D:\Files\AAWorkFiles\Rendering\gdis\"
	!+f::Run "D:\Files\Files"		;; 

	!+r::Run "D:\Media\Music\Rap Christian"		;; 
	!+c::Run "D:\Media\Music\BOP\1Compile"		;; 
	!+x::Run "D:\Media\Music\BOP\unsorted\Sorted"		;; 
	!+m::Run "D:\Media\Music"		;; 
	!+s::Run "D:\Software"		;; 
	!+z::Run "D:\Software\zeVault"		;; 
	!+d::Run "D:\Files\Downloads"		;; 
	!+u::Run "D:\Media\Music\BOP\unsorted"		;; 
	!+v::Run "D:\Files\Uni_Philosophy"		;; 
	; !+b::Run "D:\Users\Jerome\Documents\Books\Books To Read"		;; 
	#!c::		;; Use with Molecular Weight calculator, to automate repettitive tasks
		;SendInput {Enter}^{w}
		;WinActivate, ahk_class PX_WINDOW_CLASS	;ST3
		;WinWait, ahk_class PX_WINDOW_CLASS	;ST3
		;Sleep 50
		SendInput ^{v}
		Sleep 50
		SendInput !{c}!c
		Return
	#!x::		;; Use with Molecular Weight calculator, to automate repettitive tasks
		SendInput {Enter}^{w}
		WinActivate, ahk_class PX_WINDOW_CLASS	;ST3
		WinWait, ahk_class PX_WINDOW_CLASS	;ST3
		Sleep 50
		SendInput ^{v}
		Sleep 50
		SendInput !{c}!c
		Return

	!+b::		; Goto directory, prettymuch the same as   +#c::		;Google^c: Copies (a url) directly into Google
		{
		temp=%clipboard%
			SendInput ^c
			ClipWait
			sleep 200
			Run "%clipboard%"
			clipboard=%temp%
		}
		return

;;Work and Repetitive Tasks
	; +F2::SendInput #9 ; Winkey+1 = Sublime Text
	; F6::SendInput #8 ; Winkey+3 = Google Chrome
	; F7::SendInput #ANYTHING ; Winkey+3 = Google Chrome



		
	; !#q::		;SaveQuoteMendeley:	  Goto Mendeley, copy highlighted text, Paste into SublimeText3, Return to Mendeley
	; 		temp=%clipboard%
	; 	IfWinActive ahk_class QWidget		;;Mendeley Desktop
	; 	{
	; 	}
	; 	Else
	; 	{
	; 		WinActivate, ahk_class QWidget
	; 		WinWait, ahk_class QWidget
	; 	}
	; 		sleep 50
	; 	SendInput {CTRLDOWN}{c}{CTRLUP}
	; 	ClipWait
	; 		sleep 50
	; 		WinActivate, ahk_class PX_WINDOW_CLASS
	; 		WinWait, ahk_class PX_WINDOW_CLASS
	; 	SendInput {CTRLDOWN}{v}{CTRLUP}{Enter}{Enter}
	; 		WinActivate, ahk_class QWidget
	; 		WinWait, ahk_class QWidget
	; 		clipboard=%temp%
	; 	Return
	; #q::		;SaveQuoteSumatra:	Goto SumatraPDF, copy highlighted text, Paste into SublimeText3, Return to SumatraPDF
	; 		temp=%clipboard%
	; 	IfWinActive ahk_class SUMATRA_PDF_FRAME		;Sumatra PDF
	; 	{
	; 	}
	; 	Else
	; 	{
	; 		WinActivate, ahk_class SUMATRA_PDF_FRAME
	; 		WinWait, ahk_class SUMATRA_PDF_FRAME
	; 	}
	; 		sleep 50
	; 	SendInput {CTRLDOWN}{c}{CTRLUP}
	; 	ClipWait
	; 		sleep 50
	; 		WinActivate, ahk_class PX_WINDOW_CLASS
	; 		WinWait, ahk_class PX_WINDOW_CLASS
	; 	SendInput {CTRLDOWN}{v}{CTRLUP}{Enter}{Enter}
	; 		WinActivate, ahk_class SUMATRA_PDF_FRAME
	; 		WinWait, ahk_class SUMATRA_PDF_FRAME
	; 		clipboard=%temp%
	; 	Return


	;;Web
	#a::		;       GoogleSelection with selection
		{
		temp=%clipboard%
			SendInput ^c
			ClipWait
			sleep 200
				clip:=RegExReplace(clipboard,"&","%26")
				clip:=RegExReplace(clip,"\s","%20")
				clip:=RegExReplace(clip,"#","%23")
			Run http://www.google.com/search?q=%clip%
			clipboard=%temp%
		}
		return
	!#a::		;GoogleScholarSelection with selection
		{
			temp=%clipboard%
			SendInput ^c
			ClipWait
			sleep 5
			Run http://scholar.google.com/scholar?hl=en&q=%clipboard%
			clipboard=%temp%
		}
		return
	+#v::		;Google^v: Pastes (a url) directly into Google
		{
			temp=%clipboard%
			SendInput ^c
			ClipWait
			sleep 200
			Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" %clipboard%
			clipboard=%temp%
		}
		return
	+#x::	;Google^x:   Cuts (a url) directly into Google
		{
			temp=%clipboard%
			SendInput ^x
			ClipWait
			sleep 200
			Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" %clipboard%
			clipboard=%temp%
		}
		return
	^!#s::	;SaveURLandCloseTab:	Goto Chrome, copy	Url, Paste into SublimeText3, Close Chrome Tab
			temp=%clipboard%
		IfWinActive ahk_class Chrome_WidgetWin_1
		{
		}
		Else
		{
			WinActivate, ahk_class Chrome_WidgetWin_1
			WinWait, ahk_class Chrome_WidgetWin_1
		}
			sleep 50
			SendInput {ALTDOWN}{d}{ALTDOWN}
			SendInput {CTRLDOWN}{c}{CTRLUP}
			ClipWait
			sleep 50
			WinActivate, ahk_class PX_WINDOW_CLASS
			WinWait, ahk_class PX_WINDOW_CLASS
			SendInput {CTRLDOWN}{v}{CTRLUP}{Enter}
			WinActivate, ahk_class Chrome_WidgetWin_1
			WinWait, ahk_class Chrome_WidgetWin_1
			SendInput {CTRLDOWN}{w}{CTRLUP}
			clipboard=%temp%
		Return
	+#s::	;SaveQuoteChrome:	Goto Chrome, copy highlighted text, Paste into SublimeText3, Return to Chrome
			temp=%clipboard%
		IfWinActive ahk_class Chrome_WidgetWin_1
		{
		}
		Else
		{
			WinActivate, ahk_class Chrome_WidgetWin_1
			WinWait, ahk_class Chrome_WidgetWin_1
		}
			sleep 50
		SendInput {CTRLDOWN}{c}{CTRLUP}
		ClipWait
			sleep 50
				clip:=RegExReplace(clipboard,"\n"," - ")
				clipboard=%clip%

			WinActivate, ahk_class PX_WINDOW_CLASS
			WinWait, ahk_class PX_WINDOW_CLASS
		SendInput {CTRLDOWN}{v}{CTRLUP}{Enter}
			WinActivate, ahk_class Chrome_WidgetWin_1
			WinWait, ahk_class Chrome_WidgetWin_1
			clipboard=%temp%
		Return
	; F6::Right ;; I don't know why this is mapped like this, but I don't like it, so I've disabled it

;;Remapping Silly Lenovo
	; #+Down:: return
	; ^!Up:: return		;; Some sort of system-wide orientation hotkey, which really gets in the way
	PrintScreen::SendInput {AppsKey}
	!PrintScreen::		;; Make sure the file permissions of the link are ok
		If WinExist("Snipping Tool")
		{
			WinActivate, Snipping Tool
			WinWaitActive, Snipping Tool
			SendInput !n
			SendInput r
		}
		Else
		{
			Run,"C:\Software\zeVault\SystemTweaks\AHKScripts\Programs for 「Shortcuts」\SnippingTool.lnk"
			WinWait, Snipping Tool
			WinActivate, Snipping Tool
		}
	return
	#z::		;; Make sure the file permissions of the link are ok
		Run,"C:\Software\zeVault\SystemTweaks\AHKScripts\Programs for 「Shortcuts」\Monitor Off.lnk"
	return

	^BackSpace::	;;Some silly processes insert a  character from Ctrl+Backspace 
		IfWinActive ahk_class classFoxitReader
		{
			SendInput ^+{Left}{Backspace}
			Return
		}
		IfWinActive ahk_class CabinetWClass
		{
			SendInput ^+{Left}{Backspace}
			Return
		}
		IfWinActive ahk_class Notepad
		{
			SendInput ^+{Left}{Backspace}
			Return
		}
		Else ;;		 Google Chrome, ST3, Explorer
		{
			SendInput ^{BackSpace}
		}
		Return

	^Del::	;;Some silly processes don't process Ctrl+Del properly
		IfWinActive ahk_class classFoxitReader
		{
			SendInput ^+{Right}{Del}
			Return
		}
		Else ;;		 Google Chrome, ST3, Explorer
		{
			SendInput ^{Del}
		}
		Return

	m::	;; I love SumatraPDF reader but I want to be able to press 'n' and 'm' like I do for Chrome  -  WARNING: This conflicts with multiple-keyboard usage, when I try to type using the inbuilt Windows Greek keyboard, this misfires
		IfWinActive ahk_class SUMATRA_PDF_FRAME		;Sumatra PDF
		{
			SendInput {p}
			Return
		}
		Else ;;		 Google Chrome, ST3, Explorer
		{
			SendInput {m}
		}
		Return

	h::	;; I love SumatraPDF reader but it doesn't let me go PgUp PgDn with 'h' and 'l'  -  WARNING: This conflicts with multiple-keyboard usage, when I try to type using the inbuilt Windows Greek keyboard, this misfires
		IfWinActive ahk_class SUMATRA_PDF_FRAME		;Sumatra PDF
		{
			SendInput {PgDn}
			Return
		}
		Else ;;		 Google Chrome, ST3, Explorer
		{
			SendInput {h}
		}
		Return

	l::	;; I love SumatraPDF reader but it doesn't let me go PgUp PgDn with 'h' and 'l'  -  WARNING: This conflicts with multiple-keyboard usage, when I try to type using the inbuilt Windows Greek keyboard, this misfires
		IfWinActive ahk_class SUMATRA_PDF_FRAME		;Sumatra PDF
		{
			SendInput {PgUp}
			Return
		}
		Else ;;		 Google Chrome, ST3, Explorer
		{
			SendInput {l}
		}
		Return

;;Navigation: Within Text
	;; For remapping of ` to send Alt+Tab and Home/End see 〖`~_AltTab_MButton.ahk〗, lots of mods and tricky concepts on one key get their own script! Turns out the Lenovo forums indicate this is a known conflict as a result of the BIOS Ctrl:Fn-key swap. Oh well, would prefer Fn key anyway
	; Home::SendInput #9
	; Insert::SendInput #9

		Return
	; ^End::		;; Opens New Tab but not new window
	; 	SendInput #8^{t}
	; 	WinWait, ahk_class Chrome_WidgetWin_1
	; 	SendInput ^{t}
	; 	Return
	^Down::SendInput {End} ;;(Shift+)Alt+(Up|Down) is (Shift+)(Home|End)
	^Up::SendInput {Home}
	+^Up::SendInput +{Home}
	+^Down::SendInput +{End}

	!PgUp::SendInput ^{Home}	;;(Shift+)Alt+(PgUp|PgDn) is (Shift+)Goto file (beginning|end)
	!PgDn::SendInput ^{End}

	+!PgUp::SendInput +^{Home}
	+!PgDn::SendInput +^{End}

	!^Tab::SendInput   {Tab}		;; Sends the default functionality

	+!Backspace::SendInput +^{Home}{Backspace}
	+!Delete::SendInput +^{End}{Delete}


	!j:: SendInput {WheelDown}		;; !j and !k are never used by anything (! is a pretty rare hotkey actually) and this does a better job of scrolling than UP or DOWN
	!k:: SendInput {WheelUp}		;; !j and !k are never used by anything (! is a pretty rare hotkey actually) and this does a better job of scrolling than UP or DOWN
	; ~Esc & j:: SendInput {WheelDown}		;; !j and !k are never used by anything (! is a pretty rare hotkey actually) and this does a better job of scrolling than UP or DOWN
	; ~Esc & k:: SendInput {WheelUp}		;; !j and !k are never used by anything (! is a pretty rare hotkey actually) and this does a better job of scrolling than UP or DOWN
	; ~Esc & h:: SendInput {PgDn}		;; !j and !k are never used by anything (! is a pretty rare hotkey actually) and this does a better job of scrolling than UP or DOWN
	; ~Esc & l:: SendInput {PgUp}		;; !j and !k are never used by anything (! is a pretty rare hotkey actually) and this does a better job of scrolling than UP or DOWN
	!h:: SendInput ^{End}		;; (Shift+)Alt+(PgUp|PgDn) is (Shift+)Goto file (beginning|end)
	!l:: SendInput ^{Home}		;; 


/*
;	^Tab::SendInput  ^{Right}		;; TMP fix for now, I'm not sure about the future of these Tab Mods
;	+!^Tab::SendInput  +{Tab}		;; Sends the default functionality
		 Tab::		;; Disables the fancy implementation for specified window classes (programs)
		IfWinActive ahk_class Afx:00400000:b:00010003:00000006:0C430431		;; MP3tag 
		{
			SendInput {Tab}
			Return
		}
		Else ;;		 Google Chrome, ST3, Explorer
		IfWinActive ahk_class mintty		;Cygwin
		{
			SendInput {Tab}
			Return
		}
		Else ;;		 All others
		{
			SendInput ^{Right}		;; I don't like how hard and unreliable it is to reach for the 「Left」 key on my thinkpad, particularly with how they've put the 「PgUp」 key right above it, making it especially hard to hit with an underhand pinky (maybe try palming it! but seeing as this is a flush laptop keyboard, I really don't see that happening). So, who says I can't navigate forward and back within words?
		}
		Return
;	^Tab::SendInput  ^{Left}		;; ^ swaps direction
;	+Tab::SendInput ^+{Right}		;; + means 〈include〉
;	^+Tab::SendInput ^+{Left}
;	#Tab::SendInput   {Right}		;; # means single character
;	^#Tab::SendInput   {Left}
;	+#Tab::SendInput  +{Right}
;	^+#Tab::SendInput  +{Left}

*/

;;Navigation: Between Tabs
	F1:: 		; Equivalent to the 「Tab」 varant ; F1::SendInput ^+{Tab}
			IfWinActive ahk_class IGOR Pro 4 MDIFrame		;IGOR Pro
		{
			SendInput ^+{Tab}
			Return
		}
			IfWinActive ahk_class ahk_class gdkWindowToplevel		;Inkscape
		{
			SendInput {F1}		;; Is actually by default a really good command!
			Return
		}
			Else ;;		 All Others
			{
				SendInput ^{PgUp}
		}
	Return
	F3:: 		; Equivalent to the 「Tab」 varant ; F1::SendInput +{Tab}
			IfWinActive ahk_class IGOR Pro 4 MDIFrame		;IGOR Pro
		{
			SendInput ^{Tab}
			Return
		}
			IfWinActive ahk_class ahk_class gdkWindowToplevel		;Inkscape
		{
			SendInput +{F6}		;; Is actually by default a really good command!
			Return
		}
			Else ;;		 All Others
			{
				SendInput ^{PgDn}
		}
	Return
	+^F3::SendInput {F3}	;Search in MP3tag, which doesn't have a static ahk_class
	; ^F1::SendInput !+{Esc}	;Cycle to next window
	; ^F3::SendInput !{Esc}	;Cycle to previous window
	^F1::SendInput !{Left} ;Chrome Goto previous page in tab's history
	!F1::SendInput ^+{PgUp} ;For use with Chrome Extension "Keyboard Shortcuts to Reorder Tabs" And ST3 "MoveTab" Plugin
	!F3::SendInput ^+{PgDn} ;For use with Chrome Extension "Keyboard Shortcuts to Reorder Tabs" And ST3 "MoveTab" Plugin
	+F1::SendInput ^{F1}	;For use with Chrome Extension "Keyboard Shortcuts to Reorder Tabs" And ST3 "MoveTab" Plugin
	+F3::SendInput ^{F3}	;For use with Chrome Extension "Keyboard Shortcuts to Reorder Tabs" And ST3 "MoveTab" Plugin
	+F4::SendInput {F4}		;Needed for Foxit Reader, as F4 toggles the shortcuts bar on the left
	; +F2::SendInput {F2}		;I use rename button too much
	+F6::SendInput {F6}		
	+F7::SendInput {F7}		
	+F8::SendInput {F8}		
	+F9::SendInput {F9}		
	+F10::SendInput {F10}		
	+F11::SendInput {F11}		
	+F12::SendInput {F12}		



;;Application Minimizing and Closing
	;!Esc::		;;Minimize Window but doesn't really work with Winamp
	;	IfWinActive ahk_class BaseWindow_RootWnd		;; Winamp
	;	{
	;		WinMinimize, A
	;		WinMinimize, A
	;	}
	;	WinMinimize, A
	;	Return

	F4::	;;Closes tabs, except when ^w doesn't work, in chich case, close the window instead
		IfWinActive ahk_class Notepad		;Notepad
		{
			SendInput !{F4}
			Return
		}
		IfWinActive ahk_class FontViewWClass		;Font viewer
		{
			SendInput !{F4}
			Return
		}
		IfWinActive ahk_class FM		;7zip FileManager, which you really need to set as the default viwer of .sublime-package, .zip, and .rar files!
		{
			SendInput !{F4}
			Return
		}
		IfWinActive ahk_class SUMATRA_PDF_FRAME		;Sumatra PDF
		{
			SendInput !{F4}
			Return
		}
		IfWinActive ahk_class Microsoft-Windows-Tablet-SnipperEditor		;Snippet Editor
		{
			SendInput !{F4}
			Return
		}
		IfWinActive ahk_class mintty		;Cygwin
		{
			SendInput !{F4}
			Return
		}
		IfWinActive ahk_class HH Parent		;AutoHotkey Help File
		{
			SendInput !{F4}
			Return
		}
		IfWinActive ahk_class Pov37-Win64-LegacyRenderWinClass		;POV-Ray Render Window
		{
			SendInput !{F4}
			Return
		}
		IfWinActive ahk_class Pov37-Win64-MainWinClass		;POV-Ray Main window, switch to and exit render window
		{
			WinActivate, ahk_class Pov37-Win64-LegacyRenderWinClass
			WinWait, ahk_class Pov37-Win64-LegacyRenderWinClass
			SendInput !{F4}
			Return
		}
	;		IfWinActive ahk_class QWidget		;VLC Media Player AND MENDELEY
	;		{
	;			SendInput !{F4}
	;			Return
	;		}


	;risks accidentaly closing explorer browser
	;	IfWinActive ahk_class #32770		;; Windows Explorer 'Open/Save' file dialogue, Properties dialogue
	;	{
	;		SendInput !{F4}
	;		Return
	;	}

		; IfWinActive ahk_class Ghost		;AutoHotkey Window Spy
		; 	{
		; 	  SendInput !{F4}
		; 	  Return
		; 	}
		Else ;;		 GoogleChrome=Chrome_WidgetWin_1, ST3=PX_WINDOW_CLASS, Explorer=CabinetWClass
			{
				SendInput ^w
		}
	Return



;;AHK
	; F10::Edit		;; I only ever edit the script via my AHK project in ST3 anyways soo...
	F12::Reload
	!F12::Suspend
		return






; Implement using PASS CONTROL CODE aka. SendMessage, especially for GDIS

; ^!+z::		;Working example of opening 'About Notepad'
; SendMessage, 0x111, 65, 0, , Untitled - Notepad
; return


; Open media file to details pane
; 	!Enter::		;; Properties of file if in Explorer, consistent with !Enter and !DoubleClick which both show properties
; 		IfWinActive ahk_class CabinetWClass		;Windows Explorer
; 			{
; 				; MouseClick, Left
; 				SendInput !{Enter}
; 				Sleep 500
; 				SendInput +{Tab}{Left}{Left}
; 				Return
; 			}
; 		Else ;;		Everything Else
; 			{  SendInput !{Space}
; 		}
; 	Return







; !#x::
; #If WinActive("ahk_class ExploreWClass") || WinActive("ahk_class CabinetWClass") || WinActive("ahk_class mintty")
; 				SendInput !{F4}
; return













; TMP

	; !#1:: SendInput ^2!+1^w!^+9			;Removes clone from window 2 by using #9 for "next_view_in_stack"
	; !#2:: SendInput !^+{0}+!{2}^{q}^{Left}^{q}+^{Right}			;Clones current file in ST3 new window, uses !^+0 as hotkey for "clone_file"
	; !#3:: SendInput !^+{0}^+!{Down}^{q}^{Left}^{q}+^{Right}			;Clones current file in ST3 new window, uses !^+0 as hotkey for "clone_file"



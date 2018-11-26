#usehook
#SingleInstance force
;		
;		/* ;Example
;		
;			^+e::SendInput {ASC 130}
;			^+c::SendInput {U+2097}
;		*/

; ^+!e::		;; Prints out first 255 ASCII characters
; Loop, 255
; Sendinput, %a_index%{Space}{Space}{ASC %a_index%}{Enter}{ShiftUp}		;; Needs the 〈ShiftUp〉 since otherwise it'd think that shift was mainained, and I don't know the correct way to do this
; return
;		

;		
;		
;		
;		〈rough phrase〉		vauge quotation
;		《phrase》					within exact quote
;		"quote"						exact quotations
;		「string」					(regex) input
;		『definition』			variable definition
;		├example┤					contains an e.g. or i.e.
;		╠number╣					thing in here has scalar or vector property only
;		【contrast】				denotes something striking
;		〖bold〗						for strong emphasis, or block delimitation
;		〔tangent〕					related yet tangential idea
;		☾match☽						(regex) result
;		
;		(rounded)					nesting non-directly-related ideas
;		{curly}						code delimitation, how about variable expansion?
;		[square]					for something
;		
;		
;		http://xahlee.info/comp/unicode_matching_brackets.html
;		http://www.utf8-chartable.de/unicode-utf8-table.pl
;		
;		*/


:*?:'`;::`t		;; Replaces the keypresses by sending a tabspace, cute, but not too useful


:*?:~smbl::		;;			⌜⌝฿€©™►◄※●■◆○□◇★☆♠♣♥♦♤♧♡♢♩♪♫♬♭♮♯¿¡☞☜⓪①②③④⑤⑥⑦⑧⑨✚✡☭☪☮☺☹☯☠☢☣☤♲♳♨♿☉☼♀♂♔♕♖♗♘♙♚♛♜♝♞♟✓✗✞↑💧
		temp=%clipboard%
	Clipboard = ⌜⌝฿€©™►◄※●■◆○□◇★☆♠♣♥♦♤♧♡♢♩♪♫♬♭♮♯¿¡☞☜⓪①②③④⑤⑥⑦⑧⑨✚✡☭☪☮☺☹☯☠☢☣☤♲♳♨♿☉☼♀♂♔♕♖♗♘♙♚♛♜♝♞♟✓✗✞↑💧
		Clipwait, 1
		SendInput, ^v
		Sleep, 50
		clipboard=%temp%
		Return

:*?:~mth::		;;			⊂⊃⊆⊇∪∩∈∉⊄ℕℤℚℝℂ∅∂√π∞
		temp=%clipboard%
	Clipboard = ⊂⊃⊆⊇∪∩∈∉⊄ℕℤℚℝℂ∅∂√π∞
		Clipwait, 1
		SendInput, ^v
		Sleep, 50
		clipboard=%temp%
		Return

:*?:~dnb::		;;			ᵈᵑᵇ
	SendInput {U+1d48}		;;			ᵈ
	SendInput {U+1d51}		;;			ᵑ
	SendInput {U+1d47}		;;			ᵇ
	Return

:*?:~ltr::		;;			áàêèçÎôñöüù
	SendInput {U+e1}		;;			á
	SendInput {U+e0}		;;			à
	SendInput {U+ea}		;;			ê
	SendInput {U+e8}		;;			è
	SendInput {U+e7}		;;			ç
	SendInput {U+ce}		;;			î
	SendInput {U+f4}		;;			ô
	SendInput {U+f1}		;;			ñ
	SendInput {U+f6}		;;			ö
	SendInput {U+fc}		;;			ü
	SendInput {U+f9}		;;			ù
	Return

:*?:~kem::		;;			≠Å⇄≤≥±≈≡°C
	SendInput {U+2260}		;;			≠
	SendInput {U+c5}			;;			Å
	SendInput {U+21c4}		;;			⇄
	SendInput {U+2264}		;;			≤
	SendInput {U+2265}		;;			≥
	SendInput {U+b1}			;;			±
	SendInput {U+2248}		;;			≈
	SendInput {U+2261}		;;			≡
	SendInput {U+b0}{C}			;;			°C
	Return

:*?:~lgk::		;;			□◇⊢⊨
	SendInput {U+25a1}		;;			□
	SendInput {U+25c7}		;;			◇
	SendInput {U+22A2}		;;			⊢
	SendInput {U+22A8}		;;			⊨
	Return

:*?:~yn::		;;			☑☐
	SendInput {U+2611}		;;			☑
	SendInput {U+2610}		;;			☐
	Return


	!#q::SendInput {U+2227}		;;			∧
	!#w::SendInput {U+2228}		;;			∨
	!#f::SendInput {U+21d4}		;;			⇔
	!#i::SendInput {U+a1}		;;			¡
	!#e::SendInput {U+2203}		;;			∃
	!#h::SendInput {U+2234}		;;			∴
	!#4::SendInput {U+2200}		;;			∀
	!#n::SendInput {ASC 170}		;;			¬
	!#=::SendInput {ASC 26}	;;			→
	!#-::SendInput {ASC 27}	;;			←
	!#9::SendInput  {ASC 24}	;;			↓
	!#0::SendInput  {ASC 25}	;;			↑
	#-::SendInput {U+2013}		;;			–
	#=::SendInput {U+2014}		;;			—

!#.::SendInput {ASC 250}		;;			·
^+e::SendInput {ASC 130}		;;			é
!+^?::SendInput {ASC 168}		;;			¿
^!\::SendInput {U+a6}		;;			¦
:*?:#$::{U+a3}		;;			£




  ;; Superscripts
    ;; Type 〈space〉〈underscore〉「number」 . If typing 「 _」 conflicts with normal typing, change the hotstring to "sub" or something smart. Remeber to type the space ahead of it. This is done in case you want to write ^6 WITHOUT it becoming a superscript.
  :*?:0= ::{U+2070}    ;;      ⁰    ;; and it'll replace that with 「⁰」
  :*?:1= ::{U+b9}      ;;      ¹
  :*?:2= ::{U+b2}      ;;      ²
  :*?:3= ::{U+b3}      ;;      ³
  :*?:4= ::{U+2074}    ;;      ⁴
  :*?:5= ::{U+2075}    ;;      ⁵
  :*?:6= ::{U+2076}    ;;      ⁶
  :*?:7= ::{U+2077}    ;;      ⁷
  :*?:8= ::{U+2078}    ;;      ⁸
  :*?:9= ::{U+2079}    ;;      ⁹
  :*?:== ::{U+207a}    ;;      ⁺
  :*?:-= ::{U+207b}    ;;      ⁻
  :*?:_= ::{U+207b}{U+b9}    ;;      ⁻¹


  ;; Subscrpts
  :*?:0- ::{U+2080}    ;;      ₀
  :*?:1- ::{U+2081}    ;;      ₁
  :*?:2- ::{U+2082}    ;;      ₂
  :*?:3- ::{U+2083}    ;;      ₃
  :*?:4- ::{U+2084}    ;;      ₄
  :*?:5- ::{U+2085}    ;;      ₅
  :*?:6- ::{U+2086}    ;;      ₆
  :*?:7- ::{U+2087}    ;;      ₇
  :*?:8- ::{U+2088}    ;;      ₈
  :*?:9- ::{U+2089}    ;;      ₉
  :*?:=- ::{U+208a}    ;;      ₊
  :*?:-- ::{U+208b}    ;;      ₋
  :*?:_- ::{U+208b}{U+2081}    ;;      ₋₁


:*?:l- ::    ;;      ₍ₗ₎    ;; Subscript character for 〈liquid-phase〉.
    ;; Unicode unfortunately doesn't support a full subscript alphabet, so there is an incomplete solution for ₍g₎ and ₍aq₎
  SendInput {U+208D}
  SendInput {U+2097}
  SendInput {U+208E}
  Return

:*?:s- ::    ;;      ₍ₛ₎
  SendInput {U+208D}
  SendInput {U+209B}
  SendInput {U+208E}
  Return










;| key | alt+ | Shift+alt+ |
;| --- | ---- | ---------- |
;| '   | 「」   | 『』         |
;| ;   | 〈〉   | 《》         |
;| [   | ├┤   | ╠╣         |
;| ]   | 【】   |〖〗        |
;| \   | 〔〕   | ☾☽         |


; Need This in your ST3 Hotkeys
;			/*
;				{"keys": ["ctrl+shift+super+alt+1"], "command": "insert_snippet", "args": {"contents": "「$0」"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": true, "match_all": true }, ] }, 
;				{"keys": ["ctrl+shift+super+alt+1"], "command": "insert_snippet", "args": {"contents": "「${0:$SELECTION}」"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": false, "match_all": true } ] },
;		
;				{"keys": ["ctrl+shift+super+alt+2"], "command": "insert_snippet", "args": {"contents": "『$0』"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": true, "match_all": true }, ] }, 
;				{"keys": ["ctrl+shift+super+alt+2"], "command": "insert_snippet", "args": {"contents": "『${0:$SELECTION}』"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": false, "match_all": true } ] },
;		
;				{"keys": ["ctrl+shift+super+alt+3"], "command": "insert_snippet", "args": {"contents": "〈$0〉"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": true, "match_all": true }, ] }, 
;				{"keys": ["ctrl+shift+super+alt+3"], "command": "insert_snippet", "args": {"contents": "〈${0:$SELECTION}〉"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": false, "match_all": true } ] },
;		
;				{"keys": ["ctrl+shift+super+alt+4"], "command": "insert_snippet", "args": {"contents": "《$0》"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": true, "match_all": true }, ] }, 
;				{"keys": ["ctrl+shift+super+alt+4"], "command": "insert_snippet", "args": {"contents": "《${0:$SELECTION}》"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": false, "match_all": true } ] },
;		
;				{"keys": ["ctrl+shift+super+alt+5"], "command": "insert_snippet", "args": {"contents": "├$0┤"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": true, "match_all": true }, ] }, 
;				{"keys": ["ctrl+shift+super+alt+5"], "command": "insert_snippet", "args": {"contents": "├${0:$SELECTION}┤"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": false, "match_all": true } ] },
;		
;				{"keys": ["ctrl+shift+super+alt+6"], "command": "insert_snippet", "args": {"contents": "╠$0╣"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": true, "match_all": true }, ] }, 
;				{"keys": ["ctrl+shift+super+alt+6"], "command": "insert_snippet", "args": {"contents": "╠${0:$SELECTION}╣"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": false, "match_all": true } ] },
;		
;				{"keys": ["ctrl+shift+super+alt+7"], "command": "insert_snippet", "args": {"contents": "【$0】"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": true, "match_all": true }, ] }, 
;				{"keys": ["ctrl+shift+super+alt+7"], "command": "insert_snippet", "args": {"contents": "【${0:$SELECTION}】"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": false, "match_all": true } ] },
;		
;				{"keys": ["ctrl+shift+super+alt+8"], "command": "insert_snippet", "args": {"contents": "〖$0〗"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": true, "match_all": true }, ] }, 
;				{"keys": ["ctrl+shift+super+alt+8"], "command": "insert_snippet", "args": {"contents": "〖${0:$SELECTION}〗"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": false, "match_all": true } ] },
;		
;				{"keys": ["ctrl+shift+super+alt+9"], "command": "insert_snippet", "args": {"contents": "〔$0〕"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": true, "match_all": true }, ] }, 
;				{"keys": ["ctrl+shift+super+alt+9"], "command": "insert_snippet", "args": {"contents": "〔${0:$SELECTION}〕"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": false, "match_all": true } ] },
;		
;				{"keys": ["ctrl+shift+super+alt+0"], "command": "insert_snippet", "args": {"contents": "☾$0☽"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": true, "match_all": true }, ] }, 
;				{"keys": ["ctrl+shift+super+alt+0"], "command": "insert_snippet", "args": {"contents": "☾${0:$SELECTION}☽"}, "context": [{ "key": "setting.auto_match_enabled", "operator": "equal", "operand": true }, { "key": "selection_empty", "operator": "equal", "operand": false, "match_all": true } ] },
;			*/



!'::		;;			「」
		IfWinActive ahk_class PX_WINDOW_CLASS		;ST3
		{
		SendInput !^+#1
			Return
		}
		Else ;;		Anything esle but ST3
		temp = %clipboard%
		clipboard = 
		SendInput, ^x
		Sleep, 50
	SendInput {U+300c}		;;			「
	SendInput {U+300d}		;;			」
		SendInput, {Left}
		Sleep, 50
		SendInput, ^v
		Sleep, 100
		clipboard = %temp%
		Return

#!'::		;;			『』
		IfWinActive ahk_class PX_WINDOW_CLASS		;ST3
		{
		SendInput !^+#2
			Return
		}
		Else ;;		Anything esle but ST3
		temp = %clipboard%
		clipboard = 
		SendInput, ^x
		Sleep, 50
	SendInput {U+300e}		;;			『
	SendInput {U+300f}		;;			』
		SendInput, {Left}
		Sleep, 50
		SendInput, ^v
		Sleep, 100
		clipboard = %temp%
		Return

!`;::		;;			〈〉
		IfWinActive ahk_class PX_WINDOW_CLASS		;ST3
		{
		SendInput !^+#3
			Return
		}
		Else ;;		Anything esle but ST3
		temp = %clipboard%
		clipboard = 
		SendInput, ^x
		Sleep, 50
	SendInput {U+3008}		;;			〈
	SendInput {U+3009}		;;			〉
		SendInput, {Left}
		Sleep, 50
		SendInput, ^v
		Sleep, 100
		clipboard = %temp%
		Return

#!`;::		;;			《》
		IfWinActive ahk_class PX_WINDOW_CLASS		;ST3
		{
		SendInput !^+#4
			Return
		}
		Else ;;		Anything esle but ST3
		temp = %clipboard%
		clipboard = 
		SendInput, ^x
		Sleep, 50
	SendInput {U+300a}		;;			《
	SendInput {U+300b}		;;			》
		SendInput, {Left}
		Sleep, 50
		SendInput, ^v
		Sleep, 100
		clipboard = %temp%
		Return

![::		;;			├┤
		IfWinActive ahk_class PX_WINDOW_CLASS		;ST3
		{
		SendInput !^+#5
			Return
		}
		Else ;;		Anything esle but ST3
		temp = %clipboard%
		clipboard = 
		SendInput, ^x
		Sleep, 50
	SendInput {U+251c}		;;			├
	SendInput {U+2524}		;;			┤
		SendInput, {Left}
		Sleep, 50
		SendInput, ^v
		Sleep, 100
		clipboard = %temp%
		Return

#![::		;;			╠╣
		IfWinActive ahk_class PX_WINDOW_CLASS		;ST3
		{
		SendInput !^+#6
			Return
		}
		Else ;;		Anything esle but ST3
		temp = %clipboard%
		clipboard = 
		SendInput, ^x
		Sleep, 50
	SendInput {U+2560}		;;			╠
	SendInput {U+2563}		;;			╣
		SendInput, {Left}
		Sleep, 50
		SendInput, ^v
		Sleep, 100
		clipboard = %temp%
		Return

!]::		;;			【】
		IfWinActive ahk_class PX_WINDOW_CLASS		;ST3
		{
		SendInput !^+#7
			Return
		}
		Else ;;		Anything esle but ST3
		temp = %clipboard%
		clipboard = 
		SendInput, ^x
		Sleep, 50
	SendInput {U+3010}		;;			【
	SendInput {U+3011}		;;			】
		SendInput, {Left}
		Sleep, 50
		SendInput, ^v
		Sleep, 100
		clipboard = %temp%
		Return

#!]::		;;			〖〗
		IfWinActive ahk_class PX_WINDOW_CLASS		;ST3
		{
		SendInput !^+#8
			Return
		}
		Else ;;		Anything esle but ST3
		temp = %clipboard%
		clipboard = 
		SendInput, ^x
		Sleep, 50
	SendInput {U+3016}		;;			〖
	SendInput {U+3017}		;;			〗
		SendInput, {Left}
		Sleep, 50
		SendInput, ^v
		Sleep, 100
		clipboard = %temp%
		Return

!\::		;;			〔〕
		IfWinActive ahk_class PX_WINDOW_CLASS		;ST3
		{
		SendInput !^+#9
			Return
		}
		Else ;;		Anything esle but ST3
		temp = %clipboard%
		clipboard = 
		SendInput, ^x
		Sleep, 50
	SendInput {U+3014}		;;			〔
	SendInput {U+3015}		;;			〕
		SendInput, {Left}
		Sleep, 50
		SendInput, ^v
		Sleep, 100
		clipboard = %temp%
		Return

#!\::		;;			☾☽
		IfWinActive ahk_class PX_WINDOW_CLASS		;ST3
		{
		SendInput !^+#0
			Return
		}
		Else ;;		Anything esle but ST3
		temp = %clipboard%
		clipboard = 
		SendInput, ^x
		Sleep, 50
	SendInput {U+263e}		;;			☾
	SendInput {U+263d}		;;			☽
		SendInput, {Left}
		Sleep, 50
		SendInput, ^v
		Sleep, 100
		clipboard = %temp%
		Return




:*?:~triforce::		;;			trifoce
	SendInput {ASC 255}
	SendInput {ASC 255}
	SendInput {ASC 30}
	SendInput {Shift Down}
	SendInput {Enter}
	SendInput {Shift Up}
	SendInput {ASC 30}
	SendInput {ASC 32}
	SendInput {ASC 30}
	Return








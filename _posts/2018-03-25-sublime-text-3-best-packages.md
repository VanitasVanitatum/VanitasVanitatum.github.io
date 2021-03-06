---
layout: post
excerpt_separator: "<!--fla-->"
title: "Sublime Text 3: Best Packages"
categories:
  - °Computers
tags:
  - °Computers
  - °Sublime Text 3
  - °PowerUser
last_modified_at: 2018-03-26T12:57:42-05:00
---

Here are all the ST3 packages I use. Any time a package needs custom settings or hotkeys, I list those too.

I recommend starting with a clean build of Sublime Text 3, and installing these packages using PackageControl. Install PackageControl through the command palette (**Ctrl+Shift+P**) command `Install Package Control`. Then type the command `Package Control: Install Package` to get a list of all the available packages, type their names to find and select them.

<!--fla-->

TODO: Directly cloning all **my** packages+settings using Git and/or Package Control itself. Split ToC.

___<br/><br/>

## Alginment
In your document, set multiple cursors, press **Alt+a**, and all the cursors will be aligned with spaces. Used to make things line-up nicely.
<br/><br/>

## Autohotkey
Adds AHK syntax highlighting and the ability to hotfix i.e. edit-and-instantly-implement, with **Ctrl+b** (the build system).
<br/><br/>

## BracketHighlighter
This highlights paired and — importantly — unpaired brackets, it can support custom symbol-pairs (TODO: tutorial), and selects all the text between some brackets (even \*\*Markdown\*\* 'brackets', hotkeys **Ctrl+Shift+Space**, the default is Ctrl+**Alt**+Shift).

Easily strip brackets from a sentence by selecting the content, Cut, Backspace (kills bracket pair), Paste. I detail my custom hotkeys for this extension <a href="{{ site.baseurl }}/%C2%B0computers/2018/03/25/sublime-text-3-best-hotkeys.html">here</a>.
<br/><br/>

## ColorHighlighter and ColorPicker <small>
<em>(Optional, only install if you're regularly working with rgb hex codes)</em></small>

ColorHighlighter: syntax-highlights hex codes with their respective colo*u*r (big CPU drain).

ColorPicker: when the cursor is over a hex code, press **Ctrl+Shift+C** to open your system's colorwheel window to pick the colo*u*r. Unfortunately that keybinding conflicts with `Super Calculator`, which is why I avoid installing these unless I need them.
<br/><br/>

## GhostText
This package is the other half of a [Chrome](https://chrome.google.com/webstore/detail/ghosttext/godiecgffnchndlihlpaajjcplehddca) (and Firefox) extension. Edit text in ST3 and it will sync it with the respective text box in your browser.
<br/><br/>

## GitGutter
The gutter (the vertical space between ST3's linenumbers and text) gets markers showing any non-committed Git changes, you can even click it for more details (e.g. see diff, revert).
<br/><br/>

## Horizontal Scroll
I remap Font Size +/- to **Ctrl++**/**-**, so I can use **Ctrl+MouseWheel** to scroll horizontally. Install the Horizontal Scroll package, then make a file in your Data\Packages\User directory titled "`Default (Windows).sublime-mousemap`" (substitute 'Windows' for 'Linux' or 'OSX' accordingly). In it, write the following settings:

```json
[
    { "button": "scroll_down", "modifiers": ["ctrl"], "command": "scroll_width", "args": {"amount": 30, "by_character": true }, "context": [ { "key": "setting.word_wrap", "operator": "equal", "operand": false } ] },
    // { "button": "scroll_down", "modifiers": ["ctrl"], "command": "scroll_width", "args": {"amount": 30, "by_character": true }, "context": [ { "key": "setting.word_wrap", "operator": "equal", "operand": true } ] },		// IF word-wrap is enabled, make it switch back to the default behaviour of ±font_size
    { "button": "scroll_up", "modifiers": ["ctrl"], "command": "scroll_width", "args": {"amount": -30, "by_character": true } },
    { "button": "scroll_down", "modifiers": ["ctrl", "shift"], "command": "decrease_font_size"},
    { "button": "scroll_up", "modifiers": ["ctrl", "shift"], "command": "increase_font_size" },
    // fyi, this is calling the 'Horizontal Scroll' plugin (the 'scroll-width' bit), but it's in this little '.sublime-mousemap' since it's a mouse remap hotkey
]
```
<br/><br/>

## LaTeXing <small><em>(Optional, only install if you're regularly working with LaTeX)</em></small>
Better syntax highlighting, 'build' hotkey integration, and (this is the cool bit that makes it worth it) when you 'build', it jumps-to your cursor's location in the output .pdf's body. Here's my history with using LaTeX and my current workflow (TODO:) (ST3+LaTeXing, Git, ShareLatex).
<br/><br/>

## MoveTab
Pair this with TODO:User_Master_Hotkeys.ahk to TODO:easily re-arrange tabs.
<br/><br/>

## Neon Color Scheme
Color scheme with a pitch black main-window background and lots of different supported languages. If you want better syntax-highlighting for JSON files (handy when editing sublime-keymap files) then <a href="{{ site.baseurl }}/downloads/JSON.tmLanguage">download this settings file</a> and place it somewhere in your ST3 install directory. I'm baffled that ST3 doesn't ship with JSON support out-of-the-box, seeing as all its settings files are in that format.

A recent update to this Color Scheme gave the whitespace marker an ugly colour. Here's how to change the bright-green back to dark-grey.

Before editing (lines 36 & 37)
```xml
  <key>invisibles</key>
  <string>#06FF05</string>
```

After editing
```xml
  <key>invisibles</key>
  <string>#545454</string>
```

I also like to make the 'select line highlight' a little brighter (lines 38 & 39)
```xml
  <key>lineHighlight</key>
  <string>#333333</string>
```
<br/><br/>

## PackageResourceViewer
Lets you customize ST3's packages without needing to extract the archives using 7zip. A more convenient workflow than manually dragging-dropping files, which is feasible on Windows but gets insufferable on Linux.
<br/><br/>

## SideBarEnhancements
Adds more functionality to RightClicking on ST3 sidebar entries (notably `Rename`, `Delete`), but unfortunately not to entries under `Group [number]`, only to entries under the `Folders` section (specified in your TODO:Sublime Project settings file).
<br/><br/>

## SublimeBookmarks
Drop a mark somewhere you want to skip back to, travel the whole wide world, and as soon as you press **F2** you'll be back to where you were. Works great on long documents, where you can skim ahead and quickly return where you left-off. Pressing **F2** multiple times will cycle through all of your bookmarks. Marks like this can also be made in Chrome, using the Vimium++ extension which I cover <a href="{{ site.baseurl }}/%C2%B0computers/2018/03/30/chrome-extension-vimium++.html#Page">here</a>.

**F2** is not the default, it's what I use (because TODO:F-keys are awesome), implemented with the following hotkey code (also check out my bigger <a href="{{ site.baseurl }}/%C2%B0computers/2018/03/25/sublime-text-3-best-hotkeys.html">guide to ST3 hotkeys</a>):

```json
	{"keys": ["ctrl+shift+f2"], "command": "sublime_bookmark", "args" : { "type" : "add" } },
	{"keys": ["f2"], "command": "sublime_bookmark", "args" : { "type" : "goto_next" } },
	{"keys": ["shift+f2"], "command": "sublime_bookmark", "args" : { "type" : "goto_prev" } },
	{"keys": ["ctrl+f2"], "command": "sublime_bookmark", "args" : { "type" : "toggle_line" } },
```
<br/><br/>

## SublimeGit
Input Git commands from the ST3 command palette, which spares you from needing to use your system's terminal. TODO: Takes a bit of setting-up for Windows or SSH though.


[//]: # ## SublimeLinter
[//]: # for proselint install python, update settings with path-to-executable
[//]: # for TextLint presumably its the same thing just with Node.js
[//]: # for write-good https://github.com/btford/write-good

<br/><br/>

## Super Calculator
Perform inline arithmetic operations, has reduced my need for Excel by 90%. Type \+ \- \* / sqrt() with numbers, highlighting the string(s) and press **Alt+C**. Strings with spaces need to be highlighted, but for simple strings with no spaces, simply place the cursor adjacent to any of the characters and hit **Alt+C** an extra time to select the expression (before executing the command).

Answers to basic arithmetic calculations will drop-down as a suggested result from typing in Chrome's address bar, but this package gives 3 advantanges: multiple cursors performs many calculations at once, you can select the resultant values (**Ctrl+d**), and you can preserve the input _and_ result (first duplicate the string, then only perform the calculation on the secondary expression).

It's really useful if you have a list of numbers and want to increment them by a certain ammount. For example, when writing this document I changed `36. 37.` to `38. 39.` by: highlight `3`, press **Alt+C** to select both 3's, **Right Right** to navigate to the end of the number, `+2` **Alt+C Alt+C**.

Change how many decimal places it rounds to with this setting (doesn't work if specified in the user settings, must be specified in the package's setting under `Preferences>Package Settings>SuperCalculator>Settings - User`).

```json
	"round_decimals": 4,
```
<br/><br/>

## WakaTime
An attempt at a productivity-monitoring system, where it tracks how much you work, then gives you weekly analytics on an online dashboard. Make sure to set conservative privacy settings. Unfortunately it doesn't record time working on files which don't have a specified filepath (are unsaved drafts stored in your sublime-workspace.
<br/><br/>

## WordCount
Displays word-count in the status bar. Works best for plain-text, for markup (e.g. Markdown, LaTeX) it over-shoots. I use these settings:

```json
{
  "enable_count_pages": false,
  "blacklist_syntaxes": [],
}
```

___

That's it, if you find any errors, anything I've missed, or any other packages you recommend, please leave a comment or TODO:get in touch!

Click <a href="{{ site.baseurl }}/tags.html#sublime-text-3">here</a> to list all of my ST3 posts.

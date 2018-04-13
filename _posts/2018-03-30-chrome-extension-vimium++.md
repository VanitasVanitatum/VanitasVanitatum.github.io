---
layout: post
title: "Chrome Extension: Vimium++"

excerpt_separator: "<!--fla-->"
categories:
  - °Computers
tags:
  - °Computers
  - °Hotkeys
  - °Chrome Extension
  - °PowerUser
last_modified_at: 2018-03-30T12:57:42-05:00
---
Vimium++ is a Chrome extension to <em>type navigation commands</em> like you do in the text editor VIM (there's also a beta version for Firefox). 

Web browsers are the future. Software and Document Storage is moving online. Soon, most Apps you run, or files you read, will be via a web browser.

Vimium++ enables much better ways to interact with your web browser. Do basic things _faster_, do _new_ things, and combine it with AHK scripts to automate repetitive tasks.

<!--fla-->

<h5>Table of Contents</h5>

<a href="#Setu">Setup</a><br>
<a href="#Scro">Scrolling</a><br>
<a href="#Clic">Clicking Things</a><br>
<a href="#Open">Open, Close, and Switch Tabs</a><br>
<a href="#Page">Page Navigation Bookmarks</a><br>
<a href="#Misc">Miscellaneous</a><br>
<a href="#Gmai">Gmail</a><br>




___

<h2><a id="Setu">Setup</a></h2>

Install the Chrome extension by clicking [here](https://chrome.google.com/webstore/detail/vimium%20%20/hfjbmagddngcpeloejdejnfgbamkjaeg).

Once installed, click on the extension's Chrome icon, go to `Options` and Copy+Paste these custom commands into the `Custom Key Mappings` field:

```
map j scrollDown
map k scrollUp
map h scrollPageDown
map l scrollPageUp
map H scrollToBottom
map L scrollToTop
map c scrollPxDown
map v scrollPxUp

map n previousTab
map m nextTab
map , removeTab
map < restoreTab

map a previousTab
map s nextTab
map q removeTab
map Q restoreTab

map u Marks.activateCreateMode
map i Marks.activate
```

I also recommend setting `Keyboard settings:` to <small>[0,33]</small> under `Show Advanced Options` (at the bottom) to get instant keystroke feedback.

___

<h2><a id="Scro">Scrolling</a></h2>
VIM is famous for using the keyboard to navigate your page. My first block of commands covers scrolling.

Simply open a web-page (make sure your cursor isn't in a text field), and press lowercase **j** to scroll down. Uppercase letters like **G** are typed **Shift+g** (**G** is one of Vimium++'s default commands). **gg** is simply **g+g** strung together.

```
j — Down
k — Up
h — PgDown
l — PgUp
H (or G) — Bottom of page
L (or gg) — Top of Page
c — Tiny Down
v — Tiny Up
```
___

<h2><a id="Clic">Clicking Things</a></h2>

Hit **f** and a bunch of letters in yellow boxes will appear, one for each clickable link. Type the string of letters to click on the link. Hit **F** for the same command, but the link will open in a new tab.

This is super useful if you want to quickly click a link without needing to take your hands away from the keyboard. Hitting **F+your letter** spares you from needing to *Grab mouse > swing over to link > overshoot and correct > RightClick>Click 'Open in new tab'*.

It's also good for clicking-through repetitive forms or dialogs, provided the layout of the page is consistent, meaning the same string of commands (e.g. **fa**) will always hit the right link. You can limit which letters are used in the Vimium++ settings.

**gi** selects the page's first text field, useful for selecting 'Search' boxes.

**o** lets you quickly search your history and change the current window to that tab. **O** opens it as a new-tab. This is a nicer way to navigate your history than using [Chrome](chrome://history/)'s **Ctrl+h** view.

___

<h2><a id="Open">Open, Close, and Switch Tabs</a></h2>

If you thought it was effortless to use **Ctrl+w**, or AHK+**F1** to send **Ctrl+w**, well, this is even better!

#### Right-handed browsing (combines with the scrolling keys)

```
n — Switch Tab to the left
m — Switch Tab to the right
, — Close tab
> (shift+,) — Re-open tab
```

#### Left-Handed browsing

```
a — Switch Tab to the left
s — Tab to the right
q (Vimium++ default) — Close tab
Q (shift+q) — Re-open tab
```

I find these are the hotkeys I use the most, their convenience alone justifies installing Vimium++, anything from here on is awesome extras.

___

<h2><a id="Page">Page Navigation Bookmarks</a></h2>

When you want to scroll-ahead, or quickly check the top of a page, it's easy to lose time over-shooting. This solves that. (And <a href="{{ site.baseurl }}/%C2%B0computers/2018/03/25/sublime-text-3-best-packages.html">SublimeBookmarks</a> does the same thing in Sublime Text 3).

Type **u** to set a bookmark. This will display `Create Mark ...` as a little note at the bottom right. Now type any letter you want, I usually use **i**.

Now scroll down the page, and type **i+[your letter]** to scroll back up to the bookmark. It's nice to use **i** as your default bookmark letter, so that you can just hit **ii** to jump back to where you were.

You can store as many booksmarks you want with any letters, even letters that would usually send other commands (e.g. **j**). Careful though, if you hit **u** or **i** and it's waiting for input, other hotkeys won't work until you complete the sequence, or hit **Esc** to cancel.

This feature is amazing for reading long documents. Set a bookmark at the beginning (e.g. where some important term is defined at the start of an encyclopedia page), then you're free to move around, skip back to it, and return to where you were.

Even better is when you're reading a news website, and you know that the side scrollbar doesn't give a realistic estimate of 'how long is the rest of the article' (because the bottom-half of the page is comments and links). Set a bookmark, scroll-down to check what you're getting yourself into, then skip right back to were you were! This is a great example showing how our user input methods dictate our usage. You'd lose more time than you'd save (by checking-ahead, then needing to scroll back) unless you could set a bookmark. Better input methods → better usage!



[Technically these are called `Marks`, because browser bookmarks are the same as 'saved tab addreses'.]

___

<h2><a id="Misc">Miscellaneous</a></h2>

**yy** copies the website's URL (equivalent to **Alt+d** **Ctrl+c**).

I'm sure there are plenty more hotkeys you can use if you look through the documentation (found in the settings page under `Show Available Commands`), but I don't use them.

___

<h2><a id="Gmai">Gmail</a></h2>

If you use Gmail ([not ideal](https://www.theguardian.com/commentisfree/2018/mar/28/all-the-data-facebook-google-has-on-you-privacy) for your privacy), I recommend adding that website as an exception to Vimiumm++, so that your Vimium++ commands don't screw with your inbox. Do this by clicking on the Chrome icon then `Add Rule` and `Save Changes`.

I also recommend tightening-up the layout of your inbox with the [Gmail Compact](https://chrome.google.com/webstore/detail/gmail-compact/ocgmlabbjbpfjcalgnhhffadjhenhlkp) extension, and also changing Gmail settings under the `Labs` tab to enable the `Preview Pane` and `Unread Message Icon` settings.

Finally, in the general settings also enable `Keyboard Shortcuts` to do the same sort of thing Vimum++ does:

```
c — Compose new draft
gd — Go to Drafts
gi — Go to Inbox
gt — Go to Sent
```

___


And that's it, better input methods → better usage, so enjoy ultra-efficient browser navigation!

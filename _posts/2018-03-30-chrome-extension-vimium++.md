---
layout: post
title: "Chrome Extension: Vimium++"
categories:
  - ° Computers
tags:
  - ° Computers
  - ° Hotkeys
  - ° Chrome
  - ° PowerUser
last_modified_at: 2018-03-30T12:57:42-05:00
---
Vimium++ is a Chrome extension to <em>type navigation commands</em> like you do in the text editor VIM (there's also a Beta version for Firefox). 

Web browsers are the future. Software and Document Storage is moving online. Soon, most Apps you run, or files you read, will be via a web browser.

Vimium++ enables **much better** ways to interact with your web browser. Do basic things _faster_, do _new_ things, and combine it with AHK scripts to automate repettitive tasks.


## Setup

Install the Chrome extension by clicking [here](https://chrome.google.com/webstore/detail/vimium%20%20/hfjbmagddngcpeloejdejnfgbamkjaeg)

Once installed, click on the extension's Chrome icon, go to `Options` and Copy+Paste these custom commands into the `Custom Key Mappings` field:

<pre>
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
</pre>

I also recommend setting `Keyboard settings`: [0,33] under `Show Advanced Options` (at the bottom) to get instant keystroke feedback.


## Scrolling
VIM is famous for using the keyboard to navigate your page. My first block of commands covers scrolling.

Simply open a web-page (make sure your cursor isn't in a text field), and press lowercase *j* to scroll down. Uppercase letters like *G* are typed *Shift+g* (*G* is one of Vimium++'s default commands). *gg* is simply *g+g* strung together.

```
Down — j
Up — k
PgDown — h
PgUp — l
Bottom of page — H (or G)
Top of Page — L (or gg)
Tiny Down — c
Tiny Up — v
```

## Clicking Things

Hit *f* and a bunch of letters in yellow boxes will appear, one for each clickable link. Type the string of letters to click on the link. Hit *F* for the same command, but the link will open in a new tab.

You can limit which letters are used in the Vimium++ settings. This is super useful to click-through repettitive forms or dialogs, provided the layout of the page is consistent, meaning the same string of commands (e.g. *fa*) will always hit the right link.

*gi* selects the page's first text field, useful for selecting 'Search' boxes.

*o* lets you quickly search your history and change the current window to that tab. *O* opens it as a new-tab

## Open, Close, and Switch Tabs

If you thought it was effortless to use *Ctrl+w*, or use AHK and *F1* to send *Ctrl+w*, well, this is even better!

#### Right-handed browsing (combines with the scrolling keys)

Switch Tab to the left — *n*
Switch Tab to the right — *m*
Close tab – *,*
Re-open tab – *>* (*shift+,*)

#### Left-Handed browsing

Switch Tab to the left — *a*
Tab to the right — *s*
Close tab – *q* (Vimium++ default)
Re-open tab – *Q* (*shift+q*)


```
map n previousTab
map m nextTab
map , removeTab
map < restoreTab

map a previousTab
map s nextTab
map q removeTab
map Q restoreTab
```


## Navigation Bookmarks

	Type *u* to set a bookmark. This will display `Create Mark ...` as a little note at the bottom right. Now type any letter you want, I usually use *i*.

	Now scroll down the page, and type *i+[your letter]* to scroll back up to the bookmark. It's nice to use *i* as your default bookmark letter, so that you can just hit *ii* to jump back to where you were.

	You can store as many booksmarks you want with any letters, even letters that would usually send other commands (e.g. *j*). Careful though, if you hit *u* or *i* and it's waiting for input, other hotkeys won't work until you complete the sequence, or hit *Esc* to cancel.


## Misclaneous

I'm sure there are plenty more hotkeys you can use if you look through the documentation (found in the settings page under `Show Available Commands`), but I don't use them. *yy* copies the website's URL (equivalent to *Alt+d* *Ctrl+c*).

## Gmail

If you use Gmail (not ideal), I recommend adding the URL as an exception, so that your Vimium++ commands don't screw with your inbox.

I also reccomend tightening-up the layout of your inbox with [Gmail Compact](https://chrome.google.com/webstore/detail/gmail-compact/ocgmlabbjbpfjcalgnhhffadjhenhlkp), going into your Gmail settings and under the `Labs` tab enabling `Preview Pane` and `Unread Message Icon`.

Finally, in the settings also enable `Keyboard Shortcuts` to do the same sort of thing Vimum++ does:

Compose new draft — *c*
Go to Drafts — *gd*
Go to Inbox — *gi*
Go to Sent — *gt*


And that's it!
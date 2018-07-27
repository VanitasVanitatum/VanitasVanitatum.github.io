---
layout: post
title: "How Formal Logic Mended a Broken Heart"

excerpt_separator: "<!--fla-->"
categories:
  - Purity
tags:
  - Purity
  - Logic
  - Love
last_modified_at: 2018-04-20T12:57:42-05:00
---

He has a broken heart, because she loves him not. Here's logical proof that his unrequieted love is invalid.

¬L = She doesn't love him.

L→O = If she loved him, she would have obligations towards him.

¬O→S = If she failed those obligations towards him, he would be warranted in being sad.

<!--fla-->
<img alt="Made using ShareLaTeX" title="Logical proof that his unrequieted love is invalid." src="https://raw.githubusercontent.com/VanitasVanitatum/VanitasVanitatum.github.io/master/images/Love_me_not.png"/>

See, that's PROOF that his logic leads to a contradiction. If she did actually love him, his sadness (at her neglect) be warranted. But that's not the case. She's under no obligation to love him, so it's unwarranted for him to feel sad that she doesn't.


Here's the code I used to make the above tree on ShareLaTeX (then I tweaked it in Inkscape, because I still have some learning to do with Forest).

```latex
\documentclass[12pt,border=5pt,varwidth=true]{standalone}
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[]{forest}
\forestset{.style={for tree=
{parent anchor=south, child anchor=north,align=center,inner sep=2pt}}}
\begin{document}


\begin{forest}
[$\neg$ L
[L$\rightarrow$O
[$\neg ( \neg $O$ \rightarrow $S$)$
[$\neg$O
[$\neg$S
[$\neg$L [ \ding{51} ] ] [O [\ding{55} ] ]

] ] ] ] ]
\end{forest}


\end{document}

```

___



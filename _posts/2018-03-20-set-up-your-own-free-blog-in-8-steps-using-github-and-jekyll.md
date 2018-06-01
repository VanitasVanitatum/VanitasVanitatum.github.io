---
layout: post
title: "Set Up Your Own Free Blog in 8 Steps Using GitHub and Jekyll!"
categories:
  - °Computers
tags:
  - °Computers
  - °GitHub
  - °Future Writing Tools
last_modified_at: 2018-03-20T12:57:42-05:00
---


Here's where I'm dumping all the how-to customization info.
Instead of having lots of code in quotes, I'm going to expect you to <a href="{{ site.github.repo }}/blob/master/_posts/2018-03-20-set-up-your-own-free-blog-in-8-steps-using-github-and-jekyll">examine this page's code</a> on my GitHub.



Mention where to find the right files (i.e. about, 404, categories)

Put all your own details into `_config.yml`

GitHub Pages builds your site, so if there's an error, it will say what it is when you click on a file's history and hover over the ✗ red error mark.

Hydeout introduced an easy way to customize the biggest layout changes, by modifying /assets/css/main.scss


If you want to use a code indent block with a list, make sure the first character of the code block is aligned with the first text characters AFTER the list numbers.


1. For example
2. Here you need exactly 3 spaces

   ```sass
   ---
   # Use a comment to ensure Jekyll reads the file to be transformed into CSS later
   # only main files contain this front matter, not partials.
   ---
   $sidebar-bg-color: #E5BB00;
   $link-color: #ac4142;
   $layout-reverse: true;
   $sidebar-sticky: false;
   @import "hydeout";
   ```

3. You can specify which language rouge syntax highlights right after the opening of a block quote's first 3 back-ticks. Preserve the comment at the beginning. I left the links with the default 'alternate' colour, but picked my own custom 'gold' sidebar-bg-colour, and enabled layout-reverse.



adding Disqus is SUPER easy, simply register your site and make an account on Disqus.com , get your shortname, and put it into your `_config.yml` file

```yaml
disqus:
  shortname: your-short-name
```




To make pages show up in the sidebar, add sidebar_link: true to their front matter.

This post has a manual excerpt `<!--fla-->` set after the second paragraph. The following YAML Front Matter has also be applied:

> excerpt: "put custom text in here to over-ride default generated excerpts"
> excerpt_separator: "<!--fla-->"

This post has been updated and should show a modified date if `last_modified_at` is used in the layout.
  last_modified_at: 2017-03-09T13:01:27-05:00
  Plugins like [**jekyll-sitemap**](https://github.com/jekyll/jekyll-feed) use this field to add a `<lastmod>` tag your `sitemap.xml`.



This post tests YouTube video embeds.
  <div class="embed-responsive embed-responsive-16by9">
    <iframe width="640" height="360" src="https://www.youtube-nocookie.com/embed/K2r4ujFeuqk?controls=0&amp;" frameborder="0" allowfullscreen></iframe>
  </div>

This post tests Twitter Embeds.
  <blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Oh I dunno. It&#39;s probably been over 15 years since I smudged out a face with a pencil and kneaded eraser. <a href="https://twitter.com/hashtag/WIP?src=hash">#WIP</a> <a href="https://twitter.com/hashtag/Sktchy?src=hash">#Sktchy</a> <a href="https://t.co/PwqbMddyVK">pic.twitter.com/PwqbMddyVK</a></p>&mdash; Michael Rose (@mmistakes) <a href="https://twitter.com/mmistakes/status/826644109670612997">February 1, 2017</a></blockquote>
  <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

advanced content

| Header1 | Header2 | Header3 |
|:--------|:-------:|--------:|
| cell1   | cell2   | cell3   |
| cell4   | cell5   | cell6   |
|-----------------------------|
| cell1   | cell2   | cell3   |
| cell4   | cell5   | cell6   |
|=============================|
| Foot1   | Foot2   | Foot3   |

<strike>strikeout text</strike>
_italicize_ text
<kbd>keyboard text</kbd>, which is usually styled like the `<code>` element.
<pre>
    line-height: 1.2;
    and here's a line of some really, really, really, really long text, just to see how the PRE element handles it and to find out how it overflows;
  </pre>
**bold text**
H<sub>2</sub>O
E = MC<sup>2</sup>

Create an endnote with this code:

[^1]<

[^1]: <http://en.wikipedia.org/wiki/Syntax_highlighting>


GitHub Gist embeds can also be used:

```html
<script src="https://gist.github.com/mmistakes/77c68fbb07731a456805a7b473f47841.js"></script>
```

Which outputs as:
<script src="https://gist.github.com/mmistakes/77c68fbb07731a456805a7b473f47841.js"></script>


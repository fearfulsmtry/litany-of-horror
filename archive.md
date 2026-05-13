---
layout: page
title: Archive
---

## All Posts

{% for post in site.posts %}
  {% assign day = post.date | date: "%-d" %}{% assign day_suffix = "th" %}{% if day == "1" or day == "21" or day == "31" %}{% assign day_suffix = "st" %}{% elsif day == "2" or day == "22" %}{% assign day_suffix = "nd" %}{% elsif day == "3" or day == "23" %}{% assign day_suffix = "rd" %}{% endif %}* {{ day }}{{ day_suffix }} {{ post.date | date: "%B %Y" }} &raquo; [ {{ post.title }} ]({{ post.url | relative_url }})
{% endfor %}

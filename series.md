---
layout: page
title: Stories
---

# Complete Stories

Welcome to the complete collection of horror stories from the Litany of Horror. Each story is told across multiple parts, exploring different aspects of folk horror, supernatural dread, and the darkness that lurks in familiar places.

{% for s in site.data.series %}

---

## {{ s.title }}
*{{ s.tagline }}*

{{ s.description }}

**[Read {{ s.title }} &rarr;]({{ site.baseurl }}/{{ s.slug }}-series)**

{% endfor %}

---

*Return to [Home]({{ site.baseurl }}/)*

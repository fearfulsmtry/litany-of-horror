---
layout: page
title: Series
---

# Complete Series

Welcome to the complete collection of horror series from the Litany of Horror. Each series tells a complete story across multiple parts, exploring different aspects of folk horror, supernatural dread, and the darkness that lurks in familiar places.

{% for s in site.data.series %}

---

## {{ s.title }}
*{{ s.tagline }}*

{{ s.description }}

**[Read the {{ s.title }} Series &rarr;]({{ site.baseurl }}/{{ s.slug }}-series)**

{% endfor %}

---

*Return to [Home]({{ site.baseurl }}/)*

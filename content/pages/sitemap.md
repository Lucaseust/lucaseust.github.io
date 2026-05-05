---
layout: archive
title: "Sitemap"
permalink: /sitemap/
author_profile: true
---

{% include base_path %}

## Pages

{% for post in site.pages %}
  {% include archive-single.html %}
{% endfor %}

## Publications and Presentations

{% for collection in site.collections %}
{% unless collection.output == false or collection.label == "posts" %}
  {% if collection.docs.size > 0 %}
  <h3>{{ collection.label | capitalize }}</h3>
  {% for post in collection.docs %}
    {% include archive-single.html %}
  {% endfor %}
  {% endif %}
{% endunless %}
{% endfor %}

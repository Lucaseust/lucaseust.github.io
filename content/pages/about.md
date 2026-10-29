---
permalink: /
title: "Lucas Eustache"
redirect_from:
  - /about/
  - /about.html
---

{% assign home = site.data.home %}

<div class="bio">
  <img class="bio-photo" src="{{ '/images/lucas-eustache-avatar-v6.jpg' | relative_url }}" alt="Portrait of Lucas Eustache" width="180" height="180">
  <div class="bio-text">
  {% for paragraph in home.bio.paragraphs %}
    <p>{{ paragraph }}</p>
  {% endfor %}
  <p class="resource-links">
    <a href="mailto:{{ site.author.email }}">{{ site.author.email }}</a>
    <a href="{{ '/files/cv.pdf' | relative_url }}">CV (PDF)</a>
    <a href="{{ site.author.googlescholar }}" rel="me">Google Scholar</a>
    <a href="{{ site.author.orcid }}" rel="me">ORCID</a>
  </p>
  </div>
</div>

<section id="dissertation">
  <h2>{{ home.dissertation.title }}</h2>
  <article class="entry">
    <h3>{{ home.dissertation.item_title }}</h3>
    <p class="entry-meta">{{ home.dissertation.byline }}</p>
    <p>{{ home.dissertation.text }}</p>
  </article>
</section>

<section id="research">
  <h2>Selected research</h2>
  {% assign selected = site.publications | where: 'featured', true | sort: 'date' | reverse %}
  {% for post in selected %}
    {% include archive-single.html %}
  {% endfor %}
  <p><a href="{{ '/publications/' | relative_url }}">All publications</a></p>
</section>

<section id="working-papers">
  <h2>{{ home.working_papers.title }}</h2>
  {% for paper in home.working_papers.items %}
    <article class="entry">
      <h3>{{ paper.title }}</h3>
      {% if paper.byline %}<p class="entry-meta">{{ paper.byline }}</p>{% endif %}
      <p>{{ paper.text }}</p>
      {% if paper.link %}<p><a href="{{ paper.link | relative_url }}">Read paper</a></p>{% endif %}
    </article>
  {% endfor %}
</section>

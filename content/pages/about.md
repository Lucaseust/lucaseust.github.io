---
permalink: /
title: "Lucas Eustache"
author_profile: true
hide_title: true
redirect_from:
  - /about/
  - /about.html
---

{% assign home = site.data.home %}

<div class="home-page">
  <section class="bio-intro" aria-label="Bio">
    {% for paragraph in home.bio.paragraphs %}
      <p{% if forloop.first %} class="bio-lede"{% endif %}>{{ paragraph }}</p>
    {% endfor %}
  </section>

  <section class="academic-profile" aria-label="{{ home.profile.title }}">
    <h2>{{ home.profile.title }}</h2>
    <dl>
      {% for item in home.profile.items %}
        <div>
          <dt>{{ item.label }}</dt>
          <dd>{{ item.text }}</dd>
        </div>
      {% endfor %}
    </dl>
  </section>

  <section id="research" class="section-block">
    <h2>{{ home.research.title }}</h2>
    <p>{{ home.research.text }}</p>

    <div class="focus-grid">
      {% for item in home.research.focus %}
        <article>
          <h3>{{ item.title }}</h3>
          <p>{{ item.text }}</p>
        </article>
      {% endfor %}
    </div>
  </section>

  <section class="section-block">
    <h2>{{ home.selected_publication.title }}</h2>
    {{ home.selected_publication.text | markdownify }}
    <p><a href="{{ home.selected_publication.link_url }}">{{ home.selected_publication.link_label }}</a></p>
  </section>

  <section id="working-papers" class="section-block">
    <h2>{{ home.working_papers.title }}</h2>
    <div class="paper-list">
      {% for paper in home.working_papers.items %}
        <article>
          <h3>{{ paper.title }}</h3>
          <p class="byline">{{ paper.byline }}</p>
          <p>{{ paper.text }}</p>
        </article>
      {% endfor %}
    </div>
  </section>
</div>

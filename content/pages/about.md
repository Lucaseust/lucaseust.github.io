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
    <div class="profile-links" aria-label="Profile links">
      {% for link in home.bio.links %}
        <a href="{{ link.url }}">{{ link.label }}</a>
      {% endfor %}
    </div>
  </section>

  <section id="research" class="section-block">
    <p class="section-kicker">{{ home.research.kicker }}</p>
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
    <p class="section-kicker">{{ home.selected_publication.kicker }}</p>
    <h2>{{ home.selected_publication.title }}</h2>
    {{ home.selected_publication.text | markdownify }}
    <p><a href="{{ home.selected_publication.link_url }}">{{ home.selected_publication.link_label }}</a></p>
  </section>

  <section id="working-papers" class="section-block">
    <p class="section-kicker">{{ home.working_papers.kicker }}</p>
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

  <section class="section-block compact">
    <p class="section-kicker">{{ home.methods.kicker }}</p>
    <div class="tag-cloud" aria-label="Methods and skills">
      {% for method in home.methods.items %}
        <span>{{ method }}</span>
      {% endfor %}
    </div>
  </section>
</div>

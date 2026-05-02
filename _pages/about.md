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
  <section class="home-hero" aria-label="Introduction">
    <div class="home-hero__copy">
      <p class="eyebrow">{{ home.hero.eyebrow }}</p>
      <h2>{{ home.hero.title }}</h2>
      <p class="lede">{{ home.hero.text }}</p>
      <div class="cta-row">
        {% for button in home.hero.buttons %}
          <a class="btn btn--{{ button.style | default: 'inverse' }}" href="{{ button.url }}">{{ button.label }}</a>
        {% endfor %}
      </div>
    </div>
  </section>

  <section class="quick-facts" aria-label="Profile highlights">
    {% for fact in home.quick_facts %}
      <div>
        <strong>{{ fact.label }}</strong>
        <span>{{ fact.value }}</span>
      </div>
    {% endfor %}
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

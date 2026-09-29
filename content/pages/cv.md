---
layout: archive
title: "CV"
permalink: /cv/
redirect_from:
  - /resume
---

<p><a href="{{ '/files/cv.pdf' | relative_url }}">Download CV (PDF)</a></p>

## Profile

I am a PhD student in Management and Information Systems at University Paris-Dauphine - PSL, within Dauphine Recherches en Management and the Governance & Regulation Chair. My dissertation, supervised by Eric Brousseau, studies business models of data-sharing intermediaries and the economics of data-sharing ecosystems.

## Research Focus

- Data governance and intermediation: data-sharing intermediaries, data spaces, ecosystem governance, and value creation.
- Digital regulation: personal data regulation, institutional design, and comparative regulatory models.
- Platform and digital economy: markets for data, digital platforms, and sectoral or sovereign data infrastructures.

## Academic Appointments

- 2025 - Present: ATER, Temporary Teaching and Research Associate, University Paris-Dauphine - PSL.
- 2022 - Present: PhD Student in Management, Governance & Regulation Chair, University Paris-Dauphine - PSL.

## Education

- 2022 - Present: PhD in Management, University Paris-Dauphine - PSL.
- 2021 - 2022: Master 2 in Public Policy, Paris 1 Pantheon-Sorbonne.
- 2020 - 2021: Master 1 in Economics, Toulouse School of Economics.
- 2017 - 2020: Bachelor in Economics, University of Lorraine.
- 2017 - 2020: Bachelor in Public Law, University of Lorraine.

## Publications and Media

<ul>
{% assign publications = site.publications | sort: 'date' | reverse %}
{% for publication in publications %}
  <li>{% if publication.citation %}{{ publication.citation }}{% else %}{{ publication.title }}. <em>{{ publication.venue }}</em>, {{ publication.date | date: '%Y' }}.{% endif %} <a href="{{ publication.url | relative_url }}">Details</a></li>
{% endfor %}
</ul>

## Working Papers

<ul>
{% for paper in site.data.home.working_papers.items %}
  <li>{{ paper.title }}.{% if paper.byline %} {{ paper.byline }}.{% endif %}</li>
{% endfor %}
</ul>

## Methods and Skills

- Qualitative: semi-structured interviews, case studies, field observations.
- Quantitative: panel data models, OLS, logit/probit, causal inference.
- Computational: NLP, topic modeling, BERTopic, zero-shot classification, web scraping.
- Programming: Python, R, LaTeX.

## Teaching

<ul>
{% assign courses = site.teaching | sort: 'date' | reverse %}
{% for course in courses %}
  <li><a href="{{ course.url | relative_url }}">{{ course.title }}</a>, {{ course.type }}, {{ course.venue }}, {% if course.period %}{{ course.period }}{% else %}{{ course.date | date: '%Y' }}{% endif %}.</li>
{% endfor %}
</ul>

## Academic Service

- Co-convenor, Working Group "Digital Activities", Governance & Regulation Chair.
- Conference organizer for data-sharing and digital regulation events, Governance & Regulation Chair, 2023 - 2025.
- Elected PhD Representative, DRM Council, 2023 - Present.
- Research Internship Coordinator, M1 IASO, University Paris-Dauphine - PSL, 2026 - Present.

## Service and Volunteering

- 2023 - Present: Local Emergency Manager and First Aider, French Red Cross.

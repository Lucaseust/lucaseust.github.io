---
layout: archive
title: "CV"
permalink: /cv-fr/
---

<p><a href="{{ '/files/cv-fr.pdf' | relative_url }}?v=20261112-16">Télécharger le CV (PDF)</a> · <a href="{{ '/cv/' | relative_url }}">English version</a></p>

## Profil

Je suis docteur en sciences de gestion (systèmes d’information), de l'Université Paris Dauphine - PSL. Ma thèse, réalisée au sein de Dauphine Recherches en Management et de la Chaire Gouvernance et Régulation sous la direction d'Éric Brousseau, étudie les conditions dans lesquelles les marchés de données, les écosystèmes de partage de données et les infrastructures publiques de données permettent un partage durable des données.

## Axes de recherche

- Systèmes d'information et gouvernance des données : partage interorganisationnel des données, espaces de données, gouvernance des écosystèmes et création de valeur.
- Innovation numérique et organisation des plateformes : intermédiaires de données, produits de données, gouvernance des plateformes, IA verticale et infrastructures sectorielles ou souveraines.
- Régulation numérique et infrastructures publiques : conception institutionnelle, réutilisation des données publiques et gouvernance des technologies numériques.

## Expérience académique

- 2025 - aujourd'hui : Attaché temporaire d'enseignement et de recherche (ATER), Université Paris Dauphine - PSL.
- 2022 - 2026 : Chercheur doctorant, Chaire Gouvernance et Régulation, Université Paris Dauphine - PSL.

## Formation

- 2022 - 2026 : Doctorat en sciences de gestion, Université Paris Dauphine - PSL.
- 2021 - 2022 : Master 2 Politiques publiques, Université Paris 1 Panthéon-Sorbonne.
- 2020 - 2021 : Master 1 en économie, Toulouse School of Economics.
- 2017 - 2020 : Licence en économie, Université de Lorraine.
- 2017 - 2020 : Licence en droit public, Université de Lorraine.

## Thèse

**Governing Data Sharing**, sous la direction d'Éric Brousseau.

Cette thèse analyse les dispositifs de gouvernance permettant un partage durable des données entre organisations, à travers les marchés de données, les écosystèmes de partage et les infrastructures publiques de données. Elle combine une analyse documentaire comparative, l'analyse de 4 525 offres de places de marché de données, 24 entretiens avec 20 acteurs et une revue de littérature théorique portant sur 85 sources. Elle met en évidence trois mécanismes : la construction de la liquidité des données pour faciliter les échanges marchands, l'orchestration des investissements collectifs et des incitations pour pérenniser les écosystèmes, et le développement des capacités et de la demande des utilisateurs pour soutenir la réutilisation des données publiques.

## Publications et médias

<ul>
{% assign publications = site.publications | sort: 'date' | reverse %}
{% for publication in publications %}
  <li>{% if publication.citation %}{{ publication.citation }}{% else %}{{ publication.title }}. <em>{{ publication.venue }}</em>, {{ publication.date | date: '%Y' }}.{% endif %} <a href="{{ publication.url | relative_url }}">Détails</a></li>
{% endfor %}
</ul>

## Travaux en cours

- **Cultivating Sustained Use in Public Data Infrastructures** : étude des activités nécessaires pour soutenir durablement la réutilisation des données publiques, notamment l'accompagnement des utilisateurs, la coordination et le suivi des évolutions demandées.
- **Channel Composition: A Measurement Theory for Digital Trace Data** (avec Paul Favier) : élaboration d'un cadre théorique expliquant comment la composition des canaux de production des traces numériques révèle des contextes d'activité au-delà des volumes agrégés.
- **Making Data Exchangeable: Product Construction and the Redistribution of Coordination** : analyse de la manière dont la construction de produits de données redistribue la coordination entre artefacts, relations organisationnelles et institutions.
- **Local Adaptation and Data Interoperability in Disaster Response** (avec Anouck Adrot et Salomé Ritouret) : étude des effets des adaptations locales de formulaires numériques partagés sur l'interopérabilité en gestion de crise.

## Méthodes

- Qualitatives : entretiens semi-directifs, études de cas et observations de terrain.
- Quantitatives : modèles de données de panel, moindres carrés ordinaires, modèles logit/probit et inférence causale.
- Computationnelles : traitement automatique du langage, modélisation thématique, BERTopic, classification zero-shot et collecte de données web.

## Enseignement

<ul>
{% assign courses = site.teaching | sort: 'date' | reverse %}
{% for course in courses %}
  <li><a href="{{ course.url | relative_url }}">{{ course.title }}</a>, {{ course.type }}, {{ course.venue }}, {% if course.period %}{{ course.period }}{% else %}{{ course.date | date: '%Y' }}{% endif %}.</li>
{% endfor %}
</ul>

## Responsabilités académiques

- Co-animation du groupe de travail « Activités numériques », Chaire Gouvernance et Régulation.
- Organisation de conférences sur le partage des données et la régulation numérique, Chaire Gouvernance et Régulation, 2023 - 2025.
- Représentant élu des doctorants au conseil de Dauphine Recherches en Management, 2023 - aujourd'hui.
- Coordination des stages de recherche du M1 IASO (IA et société), Université Paris Dauphine - PSL, depuis 2026.

## Engagement et bénévolat

- Depuis 2023 : directeur local adjoint en charge de l'urgence, Croix-Rouge française.

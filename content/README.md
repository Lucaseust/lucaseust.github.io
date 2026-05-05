# Content Editing Guide

Edit files in this folder to update the website content. From the repository root, the local preview command is:

```powershell
.\scripts\dev.ps1
```

Jekyll watches these files while the preview server is running. Save a Markdown or YAML file, and the website rebuilds automatically.

## Folder Map

- `pages/`: standalone pages such as the homepage, CV, publications list, talks list, teaching list, sitemap, and terms page.
- `data/home.yml`: structured homepage content.
- `data/navigation.yml`: top menu links.
- `data/presentations.yml`: policy and industry engagements shown on the presentations page.
- `_publications/`: publication and media entries.
- `_talks/`: academic presentation entries.
- `_teaching/`: teaching entries.

## Publication Template

Create a file in `_publications/` named like `2026-01-15-short-title.md`.

```markdown
---
title: "Publication title"
collection: publications
category: conferences
permalink: /publications/short-title/
excerpt: "One sentence summary."
date: 2026-01-15
venue: "Venue name"
link: "https://example.com"
paperurl: "https://example.com/paper.pdf"
paperurl_label: "Download PDF"
citation: "Author, A. (2026). Publication title. <i>Venue name</i>."
---

Short public description of the publication.
```

Use `category: conferences`, `category: manuscripts`, or `category: media`.

## Academic Talk Template

Create a file in `_talks/` named like `2026-06-01-event-name.md`.

```markdown
---
title: "Conference or seminar name"
collection: talks
type: "Conference presentation"
presentation_title: "Presentation title"
permalink: /talks/event-name-2026/
venue: "Venue name"
date: 2026-06-01
location: "City, Country"
link: "https://example.com"
---

Short public description of the presentation.
```

## Teaching Template

Create a file in `_teaching/` named like `2026-course-name.md`.

```markdown
---
title: "Course name"
collection: teaching
type: "Master 1 course"
permalink: /teaching/course-name/
venue: "University name"
date: 2026-01-01
location: "City, Country"
---

Short public description of the course.
```

## Homepage Data

For most homepage text, edit `data/home.yml`. Keep the indentation exactly as it is; YAML uses spaces to know which text belongs to which section.

# Lucas Eustache Academic Website

This repository powers https://lucaseust.github.io. It is a Jekyll website, so editable Markdown/YAML files are turned into the final static website whenever Jekyll builds.

## Edit Content

Most day-to-day edits live in `content/`:

- `content/pages/about.md`: homepage content and layout.
- `content/pages/cv.md`: web CV page.
- `content/pages/publications.html`: publications listing page.
- `content/pages/talks.html`: presentations listing page.
- `content/pages/teaching.html`: teaching listing page.
- `content/data/home.yml`: homepage biography, research text, selected publication, and working papers.
- `content/data/navigation.yml`: top navigation.
- `content/data/presentations.yml`: policy and industry presentation entries.
- `content/_publications/`: one Markdown file per publication or media item.
- `content/_talks/`: one Markdown file per academic presentation.
- `content/_teaching/`: one Markdown file per teaching entry.

See `content/README.md` for field templates and examples.

## Preview Changes

Install Ruby dependencies once:

```powershell
bundle install
```

Run the local website with live reload:

```powershell
.\scripts\dev.ps1
```

Then open `http://127.0.0.1:4000`. When you edit a Markdown or YAML file in `content/`, Jekyll rebuilds and the browser refreshes.

If you also have Node/npm installed, `npm run dev` runs the same preview script.

## Build

Generate the static website:

```powershell
.\scripts\build.ps1
```

GitHub Pages also rebuilds the public website after the changes are pushed.

## Other Useful Files

- `_config.yml`: site title, sidebar profile, email, GitHub, LinkedIn, SEO metadata, and Jekyll settings.
- `files/cv.pdf`: downloadable CV.
- `assets/css/site.css`: visual customizations.
- `scripts/dev.ps1`: local preview with live reload.
- `scripts/build.ps1`: static site build.
- `scripts/update_cv_json.ps1`: optional helper for regenerating `content/data/cv.json` from the Markdown CV.

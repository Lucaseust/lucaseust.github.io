# Website editing guide

## The normal update process

1. **Edit** one of the files listed below. Use a text editor and save as UTF-8.
2. **Preview:** run `.\scripts\dev.ps1` from the repository folder in PowerShell, then open http://127.0.0.1:4000.
3. **Check:** read the affected page, click its links, and resize the browser to a narrow phone-sized window. If you changed publications, working papers, or teaching, check the CV page too.
4. **Build:** run `.\scripts\build.ps1` in a second PowerShell terminal. Fix any reported errors before publishing.
5. **Publish:** review and commit only the files you intended to change, then push (see below).

You do not need to edit HTML or CSS for normal content updates.

## Where information lives

Paths below are relative to the repository root.

| Information | Edit | Appears on |
| --- | --- | --- |
| Biography | `content/data/home.yml` → `bio.paragraphs` | Homepage |
| Working papers | `content/data/home.yml` → `working_papers.items` | Homepage and web CV |
| Publication or media article | A file in `content/_publications/` | Publications, detail page, web CV; homepage when featured |
| Academic talk | A file in `content/_talks/` | Presentations and detail page |
| Policy or industry event | `content/data/presentations.yml` → `engagements` | Presentations |
| Course | A file in `content/_teaching/` | Teaching, detail page, web CV |
| Profile, appointments, education, skills, service | `content/pages/cv.md` | Web CV |
| Downloadable CV | Replace `files/cv.pdf` | Every CV download link |
| Contact and social profiles | `_config.yml` → `author` | Homepage contact and footer |
| Navigation | `content/data/navigation.yml` | Every page |

The biography on the homepage and the fuller profile in the CV serve different purposes; review both when your position changes. In `_config.yml`, also review `description` and `og_description` when your role changes. The PDF does **not** regenerate from the web CV.

## Edit the biography or a working paper

Open `content/data/home.yml`. Keep each biography paragraph as one quoted list item.

To add a working paper, copy an item under `working_papers.items`:

```yaml
    - title: "New working paper title"
      byline: "with Coauthor Name"
      text: "A short description of the question and contribution."
      link: "https://example.com/paper"
```

The `link` is optional; omit it when no public version is available. List order controls display order. Keep descriptions to one or two sentences.

## Add a publication or media article

Copy an existing file in `content/_publications/` to a new filename, such as `2026-10-15-short-title.md`. Replace its fields and body:

```markdown
---
title: "Publication title"
collection: publications
category: conferences
permalink: /publications/short-title/
date: 2026-10-15
venue: "Conference or journal"
authors: "Lucas Eustache and Coauthor Name"
excerpt: "One sentence describing the contribution."
featured: false
link: "https://example.com/publication"
paperurl: "/files/short-title.pdf"
paperurl_label: "Read paper (PDF)"
citation: "Eustache, L., and Coauthor (2026). Publication title. <i>Venue</i>."
---

A longer description for the publication's own page.
```

- Categories: `conferences`, `manuscripts`, `books`, or `media`.
- Set `featured: true` to include it under “Selected research” on the homepage. Keep only a small selection featured.
- Remove optional fields such as `paperurl` if there is no corresponding file or link. Upload a local PDF to `files/` before linking it.
- `slidesurl` and `bibtexurl` are also supported.
- Use a unique permalink. Keep existing permalinks unchanged so shared links keep working.
- Publication lists and the web CV update automatically, newest first. Do not edit the listing-page HTML.
- Replace all example values before publishing.

## Add an academic presentation

Copy a file in `content/_talks/`, rename it `YYYY-MM-DD-event-name.md`, and use:

```markdown
---
title: "Conference or seminar"
collection: talks
type: "Conference presentation"
presentation_title: "Title of the research presented"
permalink: /talks/event-name-2026/
venue: "Host institution"
date: 2026-10-15
location: "City, Country"
link: "https://example.com/event"
---

Optional description for the presentation's own page.
```

The event link is optional. Without it, the listing links to the local detail page. Talks appear newest first. The date determines sorting; future dates are displayed too.

## Add a policy or industry engagement

Append an item under `engagements` in `content/data/presentations.yml`:

```yaml
  - title: "Event name"
    date: 2026-10-15
    location: "City, Country"
    link: "https://example.com/event"
    presentation_title: "Optional title of your contribution"
```

Items sort by date automatically. The existing `description` field stores additional notes but is not displayed in the compact listing. Use `presentation_title` for a visible subtitle.

## Add or update a course

Copy a file in `content/_teaching/`, rename it `YYYY-course-name.md`, and use:

```markdown
---
title: "Course name"
collection: teaching
type: "Master 1 course"
permalink: /teaching/course-name/
venue: "University name"
date: 2026-01-01
period: "2026 - Present"
location: "City, Country"
---

A short description of the course.
```

`date` controls sorting. Optional `period` displays a date range instead of a single year. Update the existing file when continuing the same course; use a new file and permalink for a distinct course. The teaching section of the web CV updates automatically.

## Update the CV

- Edit appointments, education, profile, skills, and service in `content/pages/cv.md`.
- Publications, working papers, and courses come from their original content files; leave the Liquid template blocks intact.
- Export your document as a PDF and replace **`files/cv.pdf`**. A file named `cv.pdf` at the repository root is an ignored source copy and does not update the download.
- Check both `/cv/` and `/files/cv.pdf` in preview.
- The legacy CV-to-JSON helper is not part of this workflow.

## YAML and Markdown basics

- The block between `---` lines at the start of each entry is YAML metadata.
- Use spaces, never tabs. Keep indentation aligned with adjacent entries.
- Put titles and descriptions in double quotes, especially when they contain a colon. Escape a literal double quote as `\"`.
- Write dates as `YYYY-MM-DD`.
- Below the metadata, use Markdown: `**bold**`, `*italic*`, and `[link text](https://example.com)`.
- Do not edit `_site/`; it is rebuilt automatically.
- Restart preview after changing `_config.yml`.

## Publish from your computer

These commands assume the current repository's `master` branch. The push is the step that sends your edits to GitHub.

```powershell
git status
git diff
# Stage the specific files you changed, for example:
git add content/data/home.yml
git commit -m "Update biography and working papers"
git push origin master
```

For a new entry, stage its exact path and any associated PDF too. Run `git diff --cached` before committing if you want to review the staged text.

The repository is configured for the public address https://lucaseust.github.io. In GitHub, check **Settings → Pages** for the publishing source. With branch publishing, it should be `master` and `/ (root)`; with GitHub Actions publishing, follow the configured deployment workflow. Repository settings cannot be inferred from the local files.

After pushing, check the Pages deployment in the repository's **Actions** tab. Once it succeeds, open the public page and check the links again. A successful local build alone does not publish anything.

## Edit directly on GitHub (no local setup)

Open the repository on GitHub, navigate to the content file, choose the edit/pencil action, make the change, and review the diff before committing. To add an entry, create a file in the appropriate collection folder using a template above. To update the CV download, upload the replacement into `files/`.

Commit to the publishing branch, then check the Pages deployment and public page. This route skips the local preview; use local editing for larger changes.

## Fix an error or undo an update

- **Preview fails:** read the file and line in the terminal error. Check quotes, indentation, and dates first.
- **Edits do not appear:** confirm that you edited a source file, refresh the browser, and restart preview if configuration changed.
- **PDF looks old:** check that you replaced `files/cv.pdf`, then refresh the PDF tab.
- **Public site stays old:** inspect the Pages deployment and confirm you pushed to the configured publishing branch.
- **Undo a published commit:** find its identifier with `git log --oneline -5`, run `git revert COMMIT_ID`, then `git push origin master`. Revert creates a new undo commit without rewriting history.

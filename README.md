# Lucas Eustache — academic website

A minimal Jekyll website for https://lucaseust.github.io: one reading column, plain links, system fonts, and no client-side JavaScript required.

## Update the website

1. Find the right content file in the table below.
2. Edit the text, or copy an existing entry to add a publication, talk, or course.
3. Preview locally and check the affected page.
4. Build, review the changes, then commit and push to publish.

**Start with [the editing guide](content/README.md)** for complete examples, publishing instructions, and how to undo an update.

| What to change | File |
| --- | --- |
| Biography and working papers | `content/data/home.yml` |
| Publications, including homepage selections | `content/_publications/*.md` |
| Academic presentations | `content/_talks/*.md` |
| Policy and industry engagements | `content/data/presentations.yml` |
| Courses | `content/_teaching/*.md` |
| CV appointments, education, skills, and service | `content/pages/cv.md` |
| Downloadable CV | `files/cv.pdf` |
| Email and profile links | `_config.yml` → `author` |
| Navigation | `content/data/navigation.yml` |

Publication, working-paper, and teaching lists in the web CV update automatically. The PDF is maintained separately.

## Preview and check (Windows PowerShell)

With Ruby and Bundler installed, run once:

```powershell
bundle install
```

Then run from this folder:

```powershell
.\scripts\dev.ps1
```

Open http://127.0.0.1:4000. Save content files to refresh the preview. Stop with Ctrl+C. Restart after changing `_config.yml`.

Check the production build:

```powershell
.\scripts\build.ps1
```

Local tooling in `local/` and generated output are ignored by Git.

## Design files

- `assets/css/site.css`: all styles used by the current site.
- `_layouts/`: shared page structures.
- `_includes/`: navigation, resource links, and list entries.
- `content/pages/`: page templates; routine list updates belong in the data and collection files instead.

The older theme assets remain available in the repository, but the current layout does not load its CSS, icon fonts, or JavaScript bundle. No npm build is needed for content or style edits.

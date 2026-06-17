# Preprint Archive

Source for the preprint archive and publication list at
<https://charlesmartin.au/preprints/>.

It is a single-page [Jekyll](https://jekyllrb.com/) site (in `docs/`) using
[jekyll-scholar](https://github.com/inukshuk/jekyll-scholar) and the
[monophase](https://github.com/cpmpercussion/monophase) theme. The page is
rendered entirely from one canonical bibliography.

## Layout

- `publications.bib` — **the single source of truth.** Edit this file to add or
  change publications. Each entry's `keywords` field carries the taxonomy tags
  (`book-chapter`, `journal-article`, `conference-paper` + `refereed` /
  `non-refereed`, `conference-presentation`, `open-source`, `open-data`,
  `thesis`, `supplemental-data`, `artistic-performance` / `research-performance`,
  `music-recording`) that decide which section an entry appears in.
- `docs/preprints/` — preprint PDFs. Linked from entries via a `preprint =
  {https://charlesmartin.au/preprints/<file>.pdf}` field.
- `docs/index.md` — the page; each section is a jekyll-scholar
  `{% bibliography --query @*[keywords ~= ...] %}` against the bib.
- `docs/_plugins/stage_bibliography.rb` — copies `publications.bib` into
  `docs/_bibliography/` at build time so jekyll-scholar can read it.
- `docs/_layouts/bibliography.html` + `docs/_includes/custom-head.html` —
  per-entry links and the collapsible abstract/bibtex panels.

## Local preview

```sh
cd docs
bundle install
bundle exec jekyll serve
```

## Deployment

Pushing to `main` triggers `.github/workflows/jekyll-pages.yml`, which builds
the site with `--baseurl /preprints`, flattens `docs/preprints/*.pdf` into the
site root (so they resolve at `charlesmartin.au/preprints/<file>.pdf`), and
deploys to GitHub Pages.

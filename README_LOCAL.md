# Local Development

Personal academic website built with [al-folio](https://github.com/alshedivat/al-folio) (Jekyll theme).

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/) and Docker Compose
- [Node.js](https://nodejs.org/) (`brew install node`) -- for Prettier formatting checks
- [lychee](https://lychee.cli.rs/) (`brew install lychee`) -- for broken link checks

## Start the site

```bash
docker compose up -d
```

The site will be available at **http://localhost:8080** after ~60 seconds (bundle install + Jekyll build).

LiveReload runs on port 35729 for automatic browser refresh on file changes.

## View logs

```bash
docker compose logs -f
```

Wait until you see `Server running... press ctrl-c to stop.` before opening the browser.

## Stop the site

```bash
docker compose down
```

## Full rebuild (if gems or Dockerfile change)

```bash
docker compose down
docker compose build --no-cache
docker compose up -d
```

## Key files

| File                       | Purpose                                                     |
| -------------------------- | ----------------------------------------------------------- |
| `_config.yml`              | Site configuration (auto-reloads on change)                 |
| `Gemfile`                  | Ruby dependencies                                           |
| `Dockerfile`               | Docker image definition (pinned to `ruby:3.3`)              |
| `docker-compose.yml`       | Container orchestration                                     |
| `bin/entry_point.sh`       | Container startup script                                    |
| `_bibliography/papers.bib` | Publications (BibTeX)                                       |
| `_pages/`                  | Site pages (about, publications, etc.)                      |
| `_posts/`                  | Blog posts                                                  |
| `_news/`                   | News items (shown on homepage)                              |
| `_data/cv.yml`             | CV content                                                  |
| `assets/json/resume.json`  | CV content (JSON Resume format, takes priority over cv.yml) |

## Deployment

Pushes to `main` trigger GitHub Actions to deploy to GitHub Pages automatically.

## Pre-push checks

Run all CI checks locally before pushing:

```bash
./bin/pre-push.sh
```

This runs the same checks as the GitHub Actions workflows:

1. **Prettier** -- formatting check (`prettier.yml`)
2. **Broken links** -- link checker on source files (`broken-links.yml`)
3. **Jekyll build** -- production build inside the Docker container (`deploy.yml`)

The script exits with a pass/fail summary. Fix any failures before pushing.

## Troubleshooting

**Container starts but site doesn't load:**
Check logs with `docker compose logs -f`. The initial `bundle install` can take 30-60 seconds.

**Gem errors after updating Gemfile:**
Do a full rebuild: `docker compose build --no-cache`.

**Port 8080 already in use:**
Stop whatever is using it, or change the port mapping in `docker-compose.yml` (e.g., `9090:8080`).

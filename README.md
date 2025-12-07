# GymBrand Site (Standalone)

A minimal static site for the GymBrand clothing brand. This folder is prepared to be pushed as a separate GitHub project.

## Structure

- `index.html` — Landing page
- `styles.css` — Styles for the landing page

## Getting Started

```bash
# Preview locally
python -m http.server 8000
# then open http://localhost:8000
```

## Create a new GitHub repository

1. Create a new repository on GitHub, e.g. `gymbrand-site`.
2. Copy the remote URL (HTTPS is fine).
3. Initialize and push from this folder:

```bash
git init
git add .
git commit -m "Initial commit: GymBrand static site"
git branch -M main
git remote add origin <YOUR_GITHUB_REMOTE_URL>
git push -u origin main
```
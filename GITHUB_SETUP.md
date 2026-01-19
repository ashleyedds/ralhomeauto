# GitHub Setup & Deployment Guide

This guide will walk you through connecting your project to GitHub and deploying it via GitHub Pages using GitHub Actions.

## Prerequisites

- Git installed on your computer
- A GitHub account
- GitHub CLI (optional, but helpful) or access to GitHub.com

## Step 1: Initialize Git Repository

If you haven't already initialized git, run:

```powershell
cd c:\raleigh-home-automation
git init
```

## Step 2: Create GitHub Repository

### Option A: Using GitHub Website

1. Go to [GitHub.com](https://github.com) and sign in
2. Click the "+" icon in the top right corner
3. Select "New repository"
4. Name your repository (e.g., `raleigh-home-automation`)
5. Choose **Public** (required for free GitHub Pages) or **Private** (if you have GitHub Pro)
6. **DO NOT** initialize with README, .gitignore, or license (we already have these)
7. Click "Create repository"

### Option B: Using GitHub CLI

```powershell
gh repo create raleigh-home-automation --public --source=. --remote=origin --push
```

## Step 3: Add Files and Make Initial Commit

```powershell
# Add all files
git add .

# Make initial commit
git commit -m "Initial commit: Raleigh Home Automation website"

# If you created the repo via website, add remote:
git remote add origin https://github.com/YOUR_USERNAME/raleigh-home-automation.git

# Push to GitHub
git branch -M main
git push -u origin main
```

Replace `YOUR_USERNAME` with your actual GitHub username.

## Step 4: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click on **Settings** (top menu)
3. Scroll down to **Pages** in the left sidebar
4. Under **Source**, select:
   - **Source**: "GitHub Actions"
5. The workflow will automatically deploy when you push to the `main` branch

## Step 5: Verify Deployment

1. After pushing, go to the **Actions** tab in your repository
2. You should see a workflow run called "Deploy to GitHub Pages"
3. Wait for it to complete (usually takes 1-2 minutes)
4. Once complete, go back to **Settings** → **Pages**
5. Your site will be available at: `https://YOUR_USERNAME.github.io/raleigh-home-automation/`

## Step 6: Custom Domain (Optional)

If you have a custom domain (like `raleighhomeautomation.com`):

1. In **Settings** → **Pages**, add your custom domain
2. Follow GitHub's instructions to configure DNS
3. Update your `sitemap.xml` and `robots.txt` with your actual domain

## Future Updates

To update your website:

```powershell
# Make your changes to files
git add .
git commit -m "Description of your changes"
git push
```

The GitHub Action will automatically rebuild and deploy your site!

## Troubleshooting

### Workflow fails
- Check the **Actions** tab for error messages
- Ensure all files are committed and pushed
- Verify the workflow file is in `.github/workflows/deploy.yml`

### Site not updating
- GitHub Pages can take a few minutes to update
- Clear your browser cache
- Check the Actions tab to ensure deployment succeeded

### 404 errors
- Ensure `index.html` is in the root directory
- Check that file paths are relative (not absolute)
- Verify GitHub Pages is enabled in Settings

## Files Created

- `.gitignore` - Excludes unnecessary files from git
- `.github/workflows/deploy.yml` - GitHub Actions workflow for automatic deployment

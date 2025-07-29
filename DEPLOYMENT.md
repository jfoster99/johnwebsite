# GitHub Pages Deployment Guide

This guide will help you deploy your portfolio website to GitHub Pages.

## Prerequisites

- A GitHub account
- This repository pushed to GitHub
- Git installed on your local machine

## Step-by-Step Deployment

### 1. Push Your Code to GitHub

If you haven't already, push your code to a GitHub repository:

```bash
git add .
git commit -m "Initial portfolio website setup"
git push origin main
```

### 2. Enable GitHub Pages

1. Go to your GitHub repository
2. Click on **Settings** tab
3. Scroll down to **Pages** in the left sidebar
4. Under **Source**, select **GitHub Actions**
5. Click **Save**

### 3. Configure GitHub Actions

The repository already includes a GitHub Actions workflow (`.github/workflows/deploy.yml`) that will automatically deploy your site when you push to the main branch.

### 4. First Deployment

1. Make a small change to trigger the deployment:
   ```bash
   echo "# Updated" >> README.md
   git add README.md
   git commit -m "Trigger first deployment"
   git push origin main
   ```

2. Go to the **Actions** tab in your repository to monitor the deployment progress

### 5. Access Your Website

Once the deployment is complete, your website will be available at:
```
https://yourusername.github.io/yourrepository
```

## Custom Domain (Optional)

If you have a custom domain:

1. Go to your repository **Settings** → **Pages**
2. Under **Custom domain**, enter your domain
3. Click **Save**
4. Add a `CNAME` file to the `src/` directory with your domain name
5. Update your DNS settings to point to GitHub Pages

## Troubleshooting

### Common Issues

1. **404 Error**: Make sure your repository is public or you have GitHub Pro for private repositories
2. **Build Fails**: Check the Actions tab for error messages
3. **Site Not Updating**: Clear your browser cache or wait a few minutes

### Manual Deployment

If the automatic deployment isn't working:

1. Go to **Settings** → **Pages**
2. Change source to **Deploy from a branch**
3. Select **main** branch and **/(root)** folder
4. Click **Save**

## Monitoring

- Check deployment status in the **Actions** tab
- View site analytics in **Settings** → **Pages** → **View site analytics**
- Monitor for any build errors or warnings

## Security

The website includes security headers in the nginx configuration:
- X-Frame-Options
- X-XSS-Protection
- X-Content-Type-Options
- Content-Security-Policy

## Performance

The website is optimized for:
- Fast loading with gzip compression
- Proper caching headers
- Optimized images and assets
- Modern CSS with efficient selectors

---

Your portfolio website should now be live and accessible to the world! 🚀 
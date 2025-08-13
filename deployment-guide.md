# NextGenITHub Website Deployment Guide

## Step 1: GitHub Copilot CLI Setup and Project Generation

### 1.1 Install GitHub Copilot CLI (if not already installed)
```bash
npm install -g @githubnext/github-copilot-cli
```

### 1.2 Generate the project using the prompt
```bash
# Navigate to your project directory
cd c:\Users\Viraj\Downloads\nextgenithub

# Use GitHub Copilot CLI with the prompt
github-copilot-cli "$(Get-Content copilot-prompt.md -Raw)"
```

## Step 2: Project Setup and Development

### 2.1 Initialize the project
```bash
# If not already a git repository
git init

# Install dependencies
npm install

# Run development server
npm run dev
```

### 2.2 Environment Variables
Create a `.env.local` file:
```env
NEXT_PUBLIC_SITE_URL=https://yoursite.com
NEXT_PUBLIC_GA_ID=your-google-analytics-id
EMAILJS_SERVICE_ID=your-emailjs-service-id
EMAILJS_TEMPLATE_ID=your-emailjs-template-id
EMAILJS_PUBLIC_KEY=your-emailjs-public-key
```

## Step 3: GitHub Repository Setup

### 3.1 Create GitHub Repository
1. Go to GitHub.com and create a new repository named "nextgenithub-website"
2. Don't initialize with README (since you already have code)

### 3.2 Push to GitHub
```bash
# Add remote origin
git remote add origin https://github.com/VirajSawad1021/nextgenithub-website.git

# Add all files
git add .

# Commit
git commit -m "Initial commit: NextGenITHub website"

# Push to GitHub
git push -u origin main
```

## Step 4: Vercel Deployment

### 4.1 Connect to Vercel
1. Go to [vercel.com](https://vercel.com)
2. Sign up/Login with your GitHub account
3. Click "New Project"
4. Import your "nextgenithub-website" repository

### 4.2 Configure Deployment Settings
- Framework Preset: Next.js
- Root Directory: ./
- Build Command: `npm run build`
- Output Directory: Leave empty (default)
- Install Command: `npm install`

### 4.3 Environment Variables in Vercel
Add the same environment variables from `.env.local` in Vercel dashboard:
- Go to Project Settings → Environment Variables
- Add each variable from your `.env.local`

### 4.4 Deploy
- Click "Deploy"
- Your site will be available at `https://nextgenithub-website.vercel.app`

## Step 5: Custom Domain with GoDaddy

### 5.1 Purchase Domain (if not already owned)
1. Go to GoDaddy.com
2. Search and purchase your domain (e.g., `nextgenithub.com`)

### 5.2 Configure Domain in Vercel
1. In Vercel dashboard, go to your project
2. Go to Settings → Domains
3. Add your custom domain (e.g., `nextgenithub.com` and `www.nextgenithub.com`)

### 5.3 Configure DNS in GoDaddy
1. Login to GoDaddy account
2. Go to My Products → DNS
3. Add these DNS records:

**For root domain (nextgenithub.com):**
- Type: A
- Name: @
- Value: 76.76.19.19
- TTL: 600

**For www subdomain:**
- Type: CNAME
- Name: www
- Value: cname.vercel-dns.com
- TTL: 600

**Alternative (Recommended) - Use Vercel nameservers:**
- Type: A
- Name: @
- Value: 76.76.19.19

- Type: CNAME
- Name: www
- Value: nextgenithub-website.vercel.app

### 5.4 SSL Certificate
- Vercel automatically provides SSL certificates
- Your site will be accessible via HTTPS

## Step 6: Post-Deployment Checklist

### 6.1 Performance Optimization
- [ ] Test Core Web Vitals using [PageSpeed Insights](https://pagespeed.web.dev/)
- [ ] Optimize images (already handled by Next.js)
- [ ] Minify CSS/JS (handled by Next.js build process)

### 6.2 SEO Setup
- [ ] Submit sitemap to Google Search Console
- [ ] Set up Google Analytics
- [ ] Configure meta tags for all pages
- [ ] Test with [Google's Mobile-Friendly Test](https://search.google.com/test/mobile-friendly)

### 6.3 Security
- [ ] Enable HTTPS (automatic with Vercel)
- [ ] Configure Content Security Policy
- [ ] Test forms for security vulnerabilities

### 6.4 Monitoring
- [ ] Set up error tracking (Sentry)
- [ ] Configure uptime monitoring
- [ ] Set up Google Search Console

## Troubleshooting Common Issues

### Domain Propagation
- DNS changes can take up to 48 hours to propagate globally
- Use [DNS Checker](https://dnschecker.org/) to verify propagation

### Build Errors
- Check Vercel deployment logs
- Ensure all dependencies are in `package.json`
- Verify environment variables are set correctly

### Performance Issues
- Enable Next.js Image optimization
- Use Vercel Analytics for performance insights
- Implement lazy loading for heavy components

## Maintenance and Updates

### Regular Tasks
1. **Content Updates**: Update blog posts, portfolio items
2. **Security Updates**: Keep dependencies updated (`npm audit`)
3. **Performance Monitoring**: Regular performance checks
4. **Backup**: Regular backups of content and configuration

### Continuous Deployment
- Any push to the main branch will automatically trigger a new deployment on Vercel
- Use feature branches for testing before merging to main

## Additional Features to Consider

### Email Setup
- Configure professional email with your domain (e.g., info@nextgenithub.com)
- Use Google Workspace or similar service

### Analytics and Marketing
- Google Analytics 4
- Google Tag Manager
- Social media pixels (Facebook, LinkedIn)
- Email marketing integration (Mailchimp, ConvertKit)

### Advanced Features
- Blog CMS integration (Contentful, Strapi)
- Live chat integration
- Customer portal
- Online booking system

## Cost Estimation

### Hosting Costs
- **Vercel Pro**: $20/month (includes custom domains, analytics)
- **Domain**: $12-15/year (GoDaddy)
- **Email**: $6/month per user (Google Workspace)

### Total Monthly Cost: ~$26-35/month

## Support and Resources

- [Next.js Documentation](https://nextjs.org/docs)
- [Vercel Documentation](https://vercel.com/docs)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
- [GoDaddy Help Center](https://www.godaddy.com/help)

---

**Note**: Replace placeholder values (like repository names, domains) with your actual values before executing commands.

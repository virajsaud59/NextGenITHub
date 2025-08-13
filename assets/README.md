# Image Assets for NextGenITHub Website

This folder contains all the image assets for the NextGenITHub website. Below are the required images and their recommended specifications:

## Required Images

### Logo
- **logo.png** (40x40px) - Company logo for header and footer
- **favicon.ico** (32x32px) - Browser favicon

### Hero Section
- **hero-illustration.svg** (800x600px) - Main hero illustration showing IT services/technology

### About Section
- **about-us.jpg** (600x400px) - Professional team photo or office image

### Portfolio Section
- **portfolio-1.jpg** (400x300px) - E-commerce platform screenshot
- **portfolio-2.jpg** (400x300px) - Healthcare mobile app mockup
- **portfolio-3.jpg** (400x300px) - Cloud infrastructure diagram
- **portfolio-4.jpg** (400x300px) - AI analytics dashboard
- **portfolio-5.jpg** (400x300px) - Corporate website design
- **portfolio-6.jpg** (400x300px) - Fintech mobile app interface

### Blog Section
- **blog-1.jpg** (400x250px) - AI/ML related image
- **blog-2.jpg** (400x250px) - Cybersecurity/cloud security image
- **blog-3.jpg** (400x250px) - Mobile development image

### Testimonials Section
- **client-1.jpg** (60x60px) - Professional headshot of Sarah Johnson
- **client-2.jpg** (60x60px) - Professional headshot of Michael Chen
- **client-3.jpg** (60x60px) - Professional headshot of Emily Rodriguez

## Image Guidelines

### Quality Standards
- **Format**: Use WebP for better compression, with JPG fallbacks
- **Resolution**: High-resolution images (2x) for retina displays
- **Optimization**: Compress images without losing quality
- **Alt Text**: All images should have descriptive alt attributes

### Recommended Tools
- **Optimization**: TinyPNG, ImageOptim, or Squoosh
- **Creation**: Canva, Figma, or Adobe Creative Suite
- **Stock Photos**: Unsplash, Pexels, or Shutterstock

## Placeholder Image Generator

If you need to generate placeholder images quickly, you can use:

```html
<!-- Placeholder service for development -->
https://via.placeholder.com/400x300/0066cc/ffffff?text=Portfolio+Image

<!-- Or create SVG placeholders -->
<svg width="400" height="300" xmlns="http://www.w3.org/2000/svg">
  <rect width="400" height="300" fill="#f3f4f6"/>
  <text x="50%" y="50%" font-family="Arial" font-size="16" fill="#6b7280" text-anchor="middle" dy=".3em">
    Image Placeholder
  </text>
</svg>
```

## Current Status
- [ ] Logo design and favicon
- [ ] Hero illustration/image
- [ ] About us team photo
- [ ] Portfolio project screenshots
- [ ] Blog post featured images
- [ ] Client testimonial photos

## Notes
- All images are currently using placeholder paths in the HTML
- Update the src attributes in index.html once actual images are ready
- Consider implementing lazy loading for better performance
- Ensure all images are optimized for web use

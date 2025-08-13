# GitHub Copilot CLI Prompt for NextGenITHub Website

## Project Requirements

Create a modern, responsive, and modular website for **NextGenITHub** - an IT service provider company. The website should be built using **Next.js 14** with **TypeScript**, **Tailwind CSS**, and follow modern web development best practices.

## Core Features & Pages Required

### 1. Landing Page (/)
- Hero section with compelling headline and call-to-action
- Services overview grid
- Client testimonials carousel
- Company statistics/achievements
- Contact form section
- Modern animations and transitions

### 2. About Us (/about)
- Company story and mission
- Team member profiles with photos
- Company values and culture
- Timeline of achievements
- Office locations and contact info

### 3. Services (/services)
Create dedicated sections for these IT services:
- **Web Development** (Frontend, Backend, Full-stack)
- **Mobile App Development** (iOS, Android, Cross-platform)
- **Cloud Solutions** (AWS, Azure, Google Cloud)
- **DevOps & Infrastructure** (CI/CD, Docker, Kubernetes)
- **Cybersecurity** (Security audits, Penetration testing)
- **Data Analytics** (Big Data, Machine Learning, AI)
- **IT Consulting** (Digital transformation, Strategy)
- **Software Testing** (Automated, Manual, Performance)
- **E-commerce Solutions** (Shopify, WooCommerce, Custom)
- **Database Management** (Design, Optimization, Migration)

### 4. Portfolio (/portfolio)
- Project showcase with filtering by technology/service
- Case studies with before/after comparisons
- Client logos and success stories
- Interactive project gallery

### 5. Blog (/blog)
- Tech articles and insights
- Industry news and trends
- Company updates
- SEO-optimized content structure

### 6. Contact (/contact)
- Contact form with validation
- Office locations with maps
- Business hours
- Social media links
- Live chat integration

### 7. Careers (/careers)
- Job listings with filters
- Company culture showcase
- Application form
- Employee benefits

## Technical Specifications

### Frontend Framework
- **Next.js 14** with App Router
- **TypeScript** for type safety
- **Tailwind CSS** for styling
- **Framer Motion** for animations
- **React Hook Form** for form handling
- **Zod** for form validation

### UI Components
- **Shadcn/ui** component library
- **Lucide React** for icons
- **React Hot Toast** for notifications
- Custom reusable components

### Performance & SEO
- Server-side rendering (SSR)
- Static site generation (SSG) where appropriate
- Image optimization with Next.js Image component
- Meta tags and OpenGraph optimization
- Sitemap generation
- Google Analytics integration

### Responsive Design
- Mobile-first approach
- Tablet and desktop optimizations
- Cross-browser compatibility
- Accessibility (WCAG 2.1 AA compliance)

## Design Requirements

### Color Scheme
- Primary: Modern blue (#0066CC or similar)
- Secondary: Dark gray (#1F2937)
- Accent: Bright orange/green for CTAs
- Background: Clean whites and light grays
- Text: High contrast for readability

### Typography
- Professional sans-serif fonts (Inter, Poppins, or similar)
- Clear hierarchy with proper font weights
- Readable line heights and spacing

### Layout
- Clean, minimalist design
- Grid-based layouts
- Generous whitespace
- Consistent spacing using Tailwind's spacing scale
- Card-based components for content sections

### Interactive Elements
- Smooth hover effects
- Loading states
- Micro-interactions
- Parallax scrolling (subtle)
- Animated counters for statistics

## Folder Structure
```
src/
├── app/
│   ├── (pages)/
│   │   ├── about/
│   │   ├── services/
│   │   ├── portfolio/
│   │   ├── blog/
│   │   ├── contact/
│   │   └── careers/
│   ├── api/
│   ├── globals.css
│   ├── layout.tsx
│   └── page.tsx
├── components/
│   ├── ui/ (shadcn components)
│   ├── layout/
│   ├── sections/
│   └── forms/
├── lib/
├── types/
├── data/
└── public/
    ├── images/
    └── icons/
```

## Content Guidelines

### Hero Section
- Headline: "Transforming Businesses Through Innovative IT Solutions"
- Subheading: "NextGenITHub delivers cutting-edge technology services to help your business thrive in the digital age"
- CTA buttons: "Get Started" and "View Our Work"

### Services Content
For each service, include:
- Service description
- Key benefits
- Technologies used
- Pricing tiers (Basic, Professional, Enterprise)
- Case study examples

### Company Information
- Founded: [Year]
- Location: [City, State/Country]
- Team size: [Number] professionals
- Projects completed: [Number]+
- Client satisfaction: 98%

## Additional Features

### Performance
- Lazy loading for images
- Code splitting
- Bundle optimization
- Core Web Vitals optimization

### Security
- Form validation and sanitization
- CSRF protection
- Secure headers
- Content Security Policy

### Analytics & Tracking
- Google Analytics 4
- Conversion tracking
- Heatmap integration (Hotjar)
- Performance monitoring

### Third-party Integrations
- Contact form submissions (EmailJS or similar)
- Social media feeds
- Google Maps for office locations
- Live chat widget (Intercom/Zendesk)

## Deployment Requirements
- Optimized for Vercel deployment
- Environment variables configuration
- Build optimization
- SEO meta tags for all pages

Generate a complete, production-ready website that showcases NextGenITHub as a premium IT service provider with modern web technologies and best practices.

# Raleigh Home Automation Co. Website

A modern, SEO-optimized website for Raleigh Home Automation Co., specializing in bespoke home automation solutions.

## Features

- **Simple, Lightweight Stack**: Pure HTML, CSS, and JavaScript (no heavy frameworks)
- **SEO Optimized**: Meta tags, structured data, sitemap, and semantic HTML
- **Responsive Design**: Mobile-first approach with modern CSS Grid and Flexbox
- **Accessibility**: WCAG 2.1 AA compliant with proper ARIA labels and keyboard navigation
- **Modern Design**: Clean, minimalist aesthetic with gray/white color scheme and orange accents
- **Custom Logo**: SVG logo featuring Raleigh's oak tree symbol

## File Structure

```
raleigh-home-automation/
├── index.html          # Homepage
├── services.html       # Services page
├── about.html          # About page
├── contact.html        # Contact page
├── css/
│   └── style.css       # Main stylesheet
├── js/
│   └── main.js         # JavaScript functionality
├── images/
│   ├── logo.svg        # Square logo
│   └── logo-horizontal.svg  # Horizontal logo with text
├── sitemap.xml         # SEO sitemap
├── robots.txt          # Search engine directives
├── DESIGN_RECOMMENDATIONS.md  # Design and stack recommendations
├── LOGO_DESIGN.md      # Logo design documentation
└── README.md           # This file
```

## Color Palette

- **Primary Gray**: #2C3E50
- **Light Gray**: #ECF0F1
- **White**: #FFFFFF
- **Accent Orange**: #FF6B35
- **Secondary Gray**: #7F8C8D

## Setup & Deployment

### Local Development

1. Simply open `index.html` in a web browser, or
2. Use a local server:
   ```bash
   # Python
   python -m http.server 8000
   
   # Node.js
   npx http-server
   ```

### Deployment

This is a static website that can be deployed to:

- **GitHub Pages**: Push to a repository and enable Pages
- **Netlify**: Drag and drop the folder or connect a Git repository
- **Vercel**: Connect repository or deploy via CLI
- **Any static hosting**: Upload files via FTP/SFTP

### Before Deployment

1. Update contact information in all HTML files:
   - Phone number: Replace `(XXX) XXX-XXXX`
   - Email: Replace `info@raleighhomeautomation.com`
   - Address: Add specific address if desired

2. Update domain in:
   - `sitemap.xml`: Replace `raleighhomeautomation.com` with your actual domain
   - `robots.txt`: Replace `raleighhomeautomation.com` with your actual domain
   - All HTML files: Update Open Graph URLs if needed

3. Set up form handling:
   - The contact form currently uses client-side validation
   - For production, integrate with:
     - Formspree
     - Netlify Forms
     - Your own backend API

## SEO Features

- Semantic HTML5 structure
- Meta tags (title, description, keywords)
- Open Graph tags for social sharing
- Schema.org structured data (LocalBusiness, Service)
- XML sitemap
- robots.txt
- Proper heading hierarchy
- Alt text for images
- Clean URL structure

## Browser Support

- Modern browsers (Chrome, Firefox, Safari, Edge)
- Mobile browsers (iOS Safari, Chrome Mobile)
- Graceful degradation for older browsers

## Customization

### Colors
Edit CSS variables in `css/style.css`:
```css
:root {
  --primary-gray: #2C3E50;
  --accent-orange: #FF6B35;
  /* ... */
}
```

### Content
All content is in the HTML files. Simply edit the text as needed.

### Logo
Replace `images/logo.svg` and `images/logo-horizontal.svg` with your own designs if desired.

## License

© 2025 Raleigh Home Automation Co. All rights reserved.

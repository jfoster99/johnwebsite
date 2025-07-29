# John Foster - Cloud & DevOps Engineer Portfolio

A modern, professional portfolio website showcasing expertise in cloud infrastructure, DevOps automation, and CI/CD pipeline optimization.

## 🚀 Features

- **Modern Design**: Clean, Apple-quality design with smooth animations and professional typography
- **Responsive Layout**: Optimized for all devices and screen sizes
- **Performance Optimized**: Fast loading with optimized assets and modern CSS
- **SEO Friendly**: Proper meta tags and semantic HTML structure
- **Accessibility**: Built with accessibility best practices in mind

## 🛠️ Technologies Used

- **HTML5**: Semantic markup and modern web standards
- **CSS3**: Custom properties, Flexbox, Grid, and modern animations
- **Font Awesome**: Professional icons
- **Google Fonts**: Inter font family for excellent readability
- **GitHub Pages**: Static site hosting

## 📁 Project Structure

```
johnwebsite/
├── src/
│   ├── index.html          # Main HTML file
│   └── css/
│       └── styles.css      # Main stylesheet
├── .github/
│   └── workflows/
│       └── deploy.yml      # GitHub Actions deployment workflow
├── Dockerfile              # Docker configuration for local development
├── nginx.conf              # Nginx configuration
└── README.md               # This file
```

## 🚀 Deployment

### GitHub Pages (Recommended)

This website is configured for automatic deployment to GitHub Pages:

1. **Enable GitHub Pages**:
   - Go to your repository settings
   - Navigate to "Pages" in the sidebar
   - Select "GitHub Actions" as the source

2. **Automatic Deployment**:
   - The GitHub Actions workflow will automatically deploy when you push to the `main` branch
   - Your site will be available at `https://yourusername.github.io/yourrepository`

### Local Development

To run the website locally:

#### Option 1: Simple HTTP Server
```bash
# Navigate to the src directory
cd src

# Start a simple HTTP server (Python 3)
python -m http.server 8000

# Or with Node.js (if you have http-server installed)
npx http-server -p 8000
```

#### Option 2: Docker
```bash
# Build the Docker image
docker build -t john-portfolio .

# Run the container
docker run -p 8080:80 john-portfolio

# Visit http://localhost:8080
```

## 🎨 Customization

### Colors
The website uses CSS custom properties for easy color customization. Edit the `:root` section in `src/css/styles.css`:

```css
:root {
    --primary-color: #007AFF;      /* Main brand color */
    --secondary-color: #5856D6;    /* Secondary accent */
    --accent-color: #34C759;       /* Success/accent color */
    --background-color: #F5F5F7;   /* Page background */
    --surface-color: #FFFFFF;      /* Card/surface background */
    --text-primary: #1D1D1F;       /* Primary text */
    --text-secondary: #86868B;     /* Secondary text */
}
```

### Content
- Update personal information in `src/index.html`
- Replace the LinkedIn profile image URL with your own
- Modify project descriptions and skills to match your experience
- Update social media links in the contact section

## 📱 Responsive Design

The website is fully responsive and optimized for:
- Desktop (1200px+)
- Tablet (768px - 1199px)
- Mobile (320px - 767px)

## 🔧 Development

### Prerequisites
- Modern web browser
- Git
- Optional: Docker for containerized development

### Local Development Setup
1. Clone the repository
2. Navigate to the project directory
3. Open `src/index.html` in your browser or use a local server
4. Make changes and refresh to see updates

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🤝 Contributing

While this is a personal portfolio, suggestions and improvements are welcome! Feel free to:
- Report bugs or issues
- Suggest design improvements
- Submit pull requests for enhancements

## 📞 Contact

- **GitHub**: [@jfoster99](https://github.com/jfoster99)
- **LinkedIn**: [John Foster](https://linkedin.com/in/johnfosterou/)
- **Email**: contact@example.com

---

Built with ❤️ and modern web technologies 
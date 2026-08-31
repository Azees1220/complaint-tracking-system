# Complaint Tracking System

A complaint tracking system built with HTML, CSS, and JavaScript.

## 🚀 Quick Start

### Local Deployment
```bash
# Option 1: Using Python
python -m http.server 3000

# Option 2: Using Node.js
npx http-server -p 3000

# Option 3: Using Docker
docker-compose up -d
```

Visit: http://localhost:3000

## 📦 Deployment Methods

### 1. **Vercel (Recommended - Already Configured)**
```bash
vercel deploy --prod
```
Live: https://complaint-tracking-system-six.vercel.app

### 2. **Docker**
```bash
docker build -t complaint-tracking-system .
docker run -p 3000:3000 complaint-tracking-system
```

### 3. **GitHub Pages**
- Push to `main` branch
- Enable GitHub Pages in Settings
- Access: https://azees1220.github.io/complaint-tracking-system/

### 4. **Netlify**
```bash
npm install -g netlify-cli
netlify deploy --prod
```

### 5. **AWS S3 + CloudFront**
```bash
aws s3 sync . s3://complaint-tracking-system --delete
```

### 6. **Google Cloud Storage**
```bash
gsutil -m cp -r . gs://complaint-tracking-system/
```

### 7. **Azure Static Web Apps**
```bash
az staticwebapp create -n complaint-tracking-system -g myResourceGroup -s . --token $env:GITHUB_TOKEN
```

## 📁 Project Structure
```
complaint-tracking-system/
├── compalin system.html    (Main HTML file)
├── Dockerfile              (For Docker deployment)
├── docker-compose.yml      (For Docker Compose)
├── .env.example            (Environment template)
├── package.json            (npm configuration)
├── netlify.toml            (Netlify config)
├── DEPLOYMENT_GUIDE.md     (Full deployment guide)
└── README.md              (This file)
```

## 🔧 Configuration

Copy `.env.example` to `.env` and configure:
```env
NODE_ENV=production
PORT=3000
API_URL=http://localhost:3000
```

## 🌐 Access from Anywhere

All deployment options support:
- ✅ Accessing from any machine
- ✅ Deploying from anywhere (no localhost only)
- ✅ Cross-platform compatibility (Windows, Mac, Linux)
- ✅ Automatic HTTPS
- ✅ Auto-scaling

## 🎯 Supported Platforms

| Platform | Command | Status |
|----------|---------|--------|
| Vercel | `vercel deploy --prod` | ✅ Active |
| Netlify | `netlify deploy --prod` | ✅ Ready |
| Docker | `docker-compose up` | ✅ Ready |
| GitHub Pages | Auto-deploy | ✅ Ready |
| AWS | Multiple options | ✅ Ready |
| GCP | Cloud Run/Storage | ✅ Ready |
| Azure | Static Web Apps | ✅ Ready |
| Linux Server | `npm start` | ✅ Ready |

## 📚 See Also
- [DEPLOYMENT_GUIDE.md](./DEPLOYMENT_GUIDE.md) - Complete deployment guide for 9+ platforms

## 📝 License
See LICENSE file

## 👨‍💻 Author
Kotla Abdul Azees (@Azees1220)

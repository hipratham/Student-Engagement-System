# CV Generator Application - Production Deployment Guide

## Prerequisites
- Python 3.8+
- pip (Python package manager)
- A production server (Linux recommended)

## Installation Steps

1. Clone the repository to your production server

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Set up environment variables:
Create a `.env` file with the following variables:
```
GROQ_API_KEY=your_groq_api_key
FLASK_ENV=production
SECRET_KEY=your-super-secret-key
```

4. Start the application using Gunicorn:
```bash
gunicorn -c gunicorn_config.py app:app
```

## Production Configuration
- The application runs on port 8000 by default
- Gunicorn is configured with optimal worker processes
- Logs are stored in gunicorn-error.log and gunicorn-access.log

## Security Notes
- Make sure to change the SECRET_KEY in production
- Keep your .env file secure and never commit it to version control
- Regularly update dependencies for security patches

## Monitoring
Monitor the application logs in:
- gunicorn-error.log
- gunicorn-access.log

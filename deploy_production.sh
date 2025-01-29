#!/bin/bash
set -e
echo "Deploying to production..."
git pull origin main
pip install -r requirements.txt
python manage.py migrate --settings=production
systemctl restart myapp
echo "Deployment to production complete."

#!/bin/bash
set -e
echo "Deploying to staging..."
git pull origin $(git rev-parse --abbrev-ref HEAD)
#pip install -r requirements.txt
python manage.py migrate --settings=staging
systemctl restart myapp-staging
echo "Deployment to staging complete."

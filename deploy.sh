#!/bin/bash

set -e

echo "Starting deployment..."

cd /home/sachinorg25/gcp-demo/myapp

echo "Pulling latest code..."
git pull origin master

echo "Activating virtual environment..."
source fast/bin/activate

echo "Installing dependencies..."
pip install -r requirements.txt

echo "Restarting app..."

pkill -f uvicorn || true

nohup uvicorn main:app --host 0.0.0.0 --port 8001 > app.log 2>&1 &

echo "Deployment successful 🚀"

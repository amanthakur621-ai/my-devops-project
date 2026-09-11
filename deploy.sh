#!/bin/bash

echo "🚀 Automation Script Started..."

echo "1. Purana container band kar rahe hain..."
sudo docker stop pro-web-container

echo "2. Purana container delete kar rahe hain..."
sudo docker rm pro-web-container

echo "3. Naya dabba (Image) paka rahe hain..."
sudo docker build -t mera-pro-image .

echo "4. Naya dabba live kar rahe hain..."
sudo docker run -d -p 80:80 --name pro-web-container mera-pro-image

echo "🔥 Boom! Aapka naya code automatically live ho gaya hai!"


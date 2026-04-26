#!/bin/bash

echo "🚀 Starting setup..."

# Update system
pkg update -y && pkg upgrade -y

# Install python
pkg install python -y

# Install pip (just in case)
python -m ensurepip --upgrade

# Upgrade pip
pip install --upgrade pip

# Install required libraries
pip install requests
pip install aiohttp
pip install pycryptodome
pkg install python-psutil

# (Optional) create virtual environment
echo "📦 Creating virtual environment..."
python -m venv venv

# Activate venv
source venv/bin/activate

# Install again inside venv (safe)
pip install requests aiohttp pycryptodome

echo "✅ Setup complete!"
echo "▶️ Run your script using: python main.py"
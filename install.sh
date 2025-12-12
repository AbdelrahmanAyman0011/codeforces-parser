#!/bin/bash

echo "========================================"
echo "   Codeforces Parser - Installer"
echo "========================================"
echo ""

# Ensure cf file exists
if [ ! -f "cf" ]; then
    echo "❌ Error: 'cf' file not found in this directory."
    echo "Run this installer from the root of the repository."
    exit 1
fi

# Check Python3
if ! command -v python3 >/dev/null 2>&1 ; then
    echo "❌ Python3 is not installed."
    echo "Install it and try again:"
    echo "  sudo apt install python3"
    exit 1
fi

# Check pip3
if ! command -v pip3 >/dev/null 2>&1 ; then
    echo "❌ pip3 is not installed."
    echo "Install it and try again:"
    echo "  sudo apt install python3-pip"
    exit 1
fi

# Install BeautifulSoup if missing
if ! python3 -c "import bs4" 2>/dev/null ; then
    echo "📦 Installing BeautifulSoup (bs4)..."
    pip3 install beautifulsoup4 >/dev/null 2>&1
    echo "✔ bs4 installed."
fi

# Install requests if missing
if ! python3 -c "import requests" 2>/dev/null ; then
    echo "📦 Installing requests..."
    pip3 install requests >/dev/null 2>&1
    echo "✔ requests installed."
fi

echo ""
echo "📦 Copying cf → /usr/local/bin ..."
sudo cp cf /usr/local/bin/cf
sudo chmod +x /usr/local/bin/cf

echo ""
echo "🗂 Creating config folder (optional for future upgrades)..."
mkdir -p ~/.config/codeforces-parser

echo ""
echo "========================================"
echo "✔ Installation complete!"
echo "========================================"
echo ""
echo "You're ready to use the tool:"
echo ""
echo "  cf parse 231 A"
echo "  cf parse 231"
echo "  cf test sol.cpp"
echo ""
echo "Enjoy competitive programming! 🚀"


#!/bin/bash

# Navigate to the web directory
cd /home/joan/RA1 || { echo "Directory /home/joan/RA1 not found"; exit 1; }

# Build the MkDocs site
mkdocs build || { echo "MkDocs build failed"; exit 1; }

# Navigate to the site directory
cd site/ || { echo "Directory site not found"; exit 1; }

# Add changes to git
git add . || { echo "Failed to add changes to git"; exit 1; }

# Commit changes
git commit -m "mkdocs" || { echo "Git commit failed"; exit 1; }

# Push to the main branch
git push origin main || { echo "Git push failed"; exit 1; }

echo "Deployment successful!"


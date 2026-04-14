#!/bin/bash

HTML_FILE="index.html"
CSS_DIR="./assets/static"

echo "Fixing paths in HTML..."
sed -i '' 's|/assets/|./assets/|g' "$HTML_FILE"

echo "Fixing paths in CSS files..."
find "$CSS_DIR" -name "*.css" | while read -r file; do
  echo "Processing $file"
  sed -i '' 's|/assets/|../|g' "$file"
done

echo "Done ✅"

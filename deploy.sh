#!/bin/bash
# Deploy frontend updates to GitHub Pages
# Called after daily collection to push latest chart_data.json

cd "$(dirname "$0")"

# Regenerate chart data from Excel
python "../数据分析/chart_data.py" 2>&1

# Commit and push
git add -A
git commit -m "daily update: $(date +%Y-%m-%d)"
git push

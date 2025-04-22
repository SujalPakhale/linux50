#!/bin/bash
# Automated Git Backup
repo_path="/path/to/your/repo"
commit_msg="Auto-commit: $(date +'%Y-%m-%d %H:%M:%S')"
cd "$repo_path" || exit 1
if [ -n "$(git status --porcelain)" ]; then
    git add .
    git commit -m "$commit_msg"
    git push origin main
    echo "Changes pushed to Git."
else
    echo "No changes detected."
fi

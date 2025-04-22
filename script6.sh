#!/bin/bash
# Bulk Rename Files
read -p "Enter directory: " dir
read -p "Add (P)refix or (S)uffix? [P/S]: " choice
read -p "Enter text: " text
cd "$dir" || exit 1
case "$choice" in
    [Pp]*) for file in *; do mv "$file" "${text}${file}"; done ;;
    [Ss]*) for file in *; do mv "$file" "${file}${text}"; done ;;
    *) echo "Invalid choice!" ;;
esac
echo "Files renamed successfully."

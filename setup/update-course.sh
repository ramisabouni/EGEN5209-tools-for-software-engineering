#!/bin/bash

set -e

echo "======================================"
echo " Course Update"
echo "======================================"
echo

# Make sure we are inside a Git repository
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "ERROR: This folder is not a Git repository."
    echo "Run this script from inside the EGEN5209 course folder."
    exit 1
fi

# Determine repository root
REPO_ROOT="$(git rev-parse --show-toplevel)"
cd "$REPO_ROOT"

echo "Repository:"
echo "$REPO_ROOT"
echo

# Determine current branch
BRANCH="$(git branch --show-current)"

if [ -z "$BRANCH" ]; then
    BRANCH="main"
fi

echo "Updating branch: $BRANCH"
echo

# Warn about local modifications to instructor-managed files
CHANGES="$(git status --short --untracked-files=no)"

if [ -n "$CHANGES" ]; then
    echo "Local changes detected in course-managed files:"
    echo
    echo "$CHANGES"
    echo
    echo "These changes will be replaced with the instructor's version."
    echo
fi

echo "Downloading latest course files..."
git fetch origin

echo "Updating course-managed files..."

# Reset all tracked files to the latest version from GitHub
git reset --hard "origin/$BRANCH"

echo
echo "Removing untracked course files..."

# Remove untracked files except anything ignored by .gitignore.
# Student workspace should therefore be listed in .gitignore.
git clean -fd

echo
echo "======================================"
echo " Course files are now up to date."
echo " Student workspace files were preserved."
echo "======================================"

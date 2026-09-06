#!/bin/bash

echo "======================================"
echo " EGEN5209 Course Update"
echo "======================================"
echo

# Stop if not inside a Git repository
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "ERROR: This folder is not a Git repository."
    echo "Run this script from inside the EGEN5209 course folder."
    exit 1
fi

echo "Checking for local changes..."
echo

if ! git diff --quiet || ! git diff --cached --quiet; then
    echo "WARNING: You have modified course files."
    echo
    git status --short
    echo
    echo "The update was NOT performed."
    echo "Save, commit, or remove your changes before updating."
    exit 1
fi

echo "Downloading latest course files..."
git pull --ff-only

if [ $? -ne 0 ]; then
    echo
    echo "ERROR: Course update failed."
    echo "Please contact the instructor if the problem continues."
    exit 1
fi

echo
echo "======================================"
echo " Course files are up to date."
echo "======================================"

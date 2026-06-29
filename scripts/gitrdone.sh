#!/bin/bash

# Exit immediately if any command fails
set -e

# Check if the current directory is a Git repository
if ! git rev-parse --is-inside-work-tree &>/dev/null; then
    echo "Error: This directory is not a Git repository."
    exit 1
fi

# Get the commit message from the script argument, or prompt the user if empty
COMMIT_MSG="$1"
if [ -z "$COMMIT_MSG" ]; then
    read -p "Enter commit message: " COMMIT_MSG
fi

# Ensure the commit message is not blank
if [ -z "$COMMIT_MSG" ]; then
    echo "Error: Commit message cannot be empty."
    exit 1
fi

# Get the name of the current branch dynamically
CURRENT_BRANCH=$(git branch --show-current)

echo "Starting Git automation workflow on branch: $CURRENT_BRANCH..."

# 1. Stage all changes (tracked, untracked, and deletions)
git add -A

# 2. Commit the changes
git commit -m "$COMMIT_MSG"

# 3. Push to the remote tracking repository
git push origin "$CURRENT_BRANCH"

echo "✅ Successfully staged, committed, and pushed!"
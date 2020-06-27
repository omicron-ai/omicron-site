#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying public updates to GitHub...\033[0m\n"

# Build the project.
hugo # if using a theme, replace with `hugo -t <THEME>`

# Go To Public folder
cd public

# Add public changes to git.
git add .

# Commit public changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
    msg="$*"
fi
git commit -m "$msg"

# Push public source and build repos.
git push origin master

# --------------------------------------------- #

printf "\033[0;32mDeploying site change updates to GitHub...\033[0m\n"

# Go to root folder
cd ..

git add .

# Commit site changes.
msg="site updates - $(date)"
if [ -n "$*" ]; then
    msg="$*"
fi
git commit -m "$msg"

# Push site source and build repos
git push origin master


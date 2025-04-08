# 1. Create a temporary backup branch (just in case)
git branch backup-before-flatten

# 2. Reset history to the first commit, but keep changes
git checkout --orphan latest_branch
git add -A
git commit -m "First Commit v28"

# 3. Delete the old branch and rename the new one
git branch -D main       # Or replace 'main' with your current branch name
git branch -m main       # Rename current branch to 'main'

# 4. Force push if needed
git push -f origin main


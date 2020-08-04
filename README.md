# Set default branch to main

```bash
git branch -m master main
git push origin main
```

* On GitHub: Settings > Branches > Default branch, set to main > Update

```bash
git push origin :master
git remote set-head origin main
git push origin HEAD:main
git branch --unset-upstream
git push --set-upstream origin main
```

# Make template

* On GitHub: Settings > tick Template repository

You can now use this as a template when you create a new repository.

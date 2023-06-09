# How do I rename a branch?

## Terminal

```bash
git branch -m old-branch-name new-branch-name # -m flag renames the branch
# the -m flag stands for move
# so you are actually moving the branch from the old name to the new name
```

If you are already on the branch you wish to merge, there is a shorthand for the above command:

```bash
git branch -m new-branch-name
```

## VS Code

- Open VS Code
- Open up the command palette (Ctrl + Shift + P) or (Cmd + Shift + P) on Mac
- Type in "Rename" and look for the "Git: Rename Branch" command
- Type in the new name for the branch, and press enter
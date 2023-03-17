# What is git merge?

A git merge allows you to combine two different branches of code together.
This is the mechanism by which PR's are merged into the main branch.

## How to merge

Let's say you have a branch called `feature-branch`, and you want to merge it into `master`.

### Terminal
```bash
git switch master # switch to master
git merge feature-branch # merge feature-branch into master
```

### VS Code
1. Open the command palette (Ctrl+Shift+P)
2. Type `git merge`
3. type the name of the branch you want to merge 
4. select it with the mouse or arrow keys and hit enter

![](/media/vs%20code%20git%20merge.gif)
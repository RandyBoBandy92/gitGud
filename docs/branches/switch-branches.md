# How do I switch to a different branch

### Terminal
```bash
git checkout my-branch # switches to the branch called my-branch
# alternatively
git switch my-branch # switches to the branch called my-branch
```

### VS Code
- Open VS Code
- Click on the Branch button in the bottom left corner
- A menu will popup showing all the branches in your repository, click on the branch you want to switch to


## Can I switch to a branch that's on GitHub?

Yes, you can switch to a branch that's on GitHub. You can do this by using the `git fetch` command. This will download all the branches from GitHub to your local repository. Then you can use the `git checkout` command to switch to the branch you want.

```bash
git fetch # downloads all the branches from GitHub, lets say there was a branch called my-branch
# all branches are now available locally
git checkout my-branch # switches to the branch called my-branch
git switch my-branch # alternatively
```

## I ran git fetch, and switched to the master branch, but it is still out of date, why?

When you run `git fetch`, it downloads all the branches from GitHub, but it does not update the files in your working directory. To update the files in your working directory, you need to run `git pull`. This will update your working directory with the latest changes from the branch you are on.

```bash
git fetch # downloads all the branches from GitHub, lets say there was a branch called my-branch
# all branches are now available locally
git checkout my-branch # switches to the branch called my-branch
git pull # updates the files in your working directory with the latest changes from the branch you are on
```

## When I try to switch branches using VS Code, this weird thing pops up!
"Your local changes would be overwritten by checkout."
![](/media/VS%20Code%20Switch%20Error.png)

What that means is that you have some changes in your working directory that are not committed. If you switch branches, those changes will be lost. To fix this, you need to commit your changes, or stash them. 

That popup gives you 3 options:

1. Stash & Checkout

This will stash your changes, and then switch branches. You can then unstash your changes later.
For more on that, see [what is git stash?](/docs/general/what-is-git-stash.md)

2. Migrate Changes

Migrate changes will MOVE your changes with you to the new branch. This is useful if you were accidentally working on master (this has never happened to me, I swear), and you want to move your changes to a new branch.

3. Force Checkout

**DANGER DANGER DANGER**

This will force checkout the branch, and will overwrite any changes you have in your working directory. AKA this will blast your changes into oblivion. I do not recommend blowing up your changes, so I would not recommend using this option.


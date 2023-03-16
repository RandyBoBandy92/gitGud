# What is the difference between merging and rebasing?

## What is a merge?

A merge will take changes from one branch and apply them to another branch.

## Why would I use a rebase?

Say that you are working on a feature branch, called `feature1`. You made this branch yesterday from the `master` branch. You have been working on this branch for a while, and you want to get the latest changes from the `master` branch. You could merge the `master` branch into your `feature1` branch, but this will create a merge commit. This is not ideal because it will add a commit to your branch that does not contain any changes. This will make your commit history messy.

### Why should I care about a messy commit history?

Honestly, you shouldn't (at this point)... but if you do, read more here [How do I rebase my branch with the latest changes from master/main?](/docs/rebasing/rebase-branch-with-latest-changes-from-master.md)


So, if you want to keep your branch UP TO DATE with the latest version of master without losing any of your changes, you can use a rebase.

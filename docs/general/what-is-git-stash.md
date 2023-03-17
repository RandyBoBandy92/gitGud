# What is git stash?

Git stash is a way to temporarily save your changes without committing them. This is useful when you want to switch branches but don't want to commit your changes yet. 

You can also use it to save your changes when you need to pull from a remote repository.

## How do I use git stash?

### Terminal

```bash
git add . # add all your changes before stashing
git stash # save your working changes
# if you want to save the stash with a message
git stash save "my message"
```

## How do I get my changes back?

### Terminal

```bash
git stash pop # get your changes back
# to retreive a specific stash
git stash pop stash@{1} # specify the stash by number (find number using git stash list)
```

## How can I view all my stashes?

```bash
git stash list # view all your stashes
```
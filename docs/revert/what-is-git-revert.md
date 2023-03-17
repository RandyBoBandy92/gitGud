# What is git revert?

Git revert is the closest thing you will get to UNDO, in git. 

The nice thing about it, is that while it undoes changes, it does not delete any of your code.
It essentially just does the reverse of whatever your commit was, but it makes a new "revert commit" in the log.

## How to revert a commit?

### Terminal

```bash
# find out the hash (ID) of the commit you want to revert
git log -3
# copy the hash of the commit you want to revert
git revert <commit-hash> # you can also use the first 7 characters of the hash
# this will cause VIM to open in your terminal
# use :wq to save and quit
```

Please see [help! I'm stuck in vim!](/docs/errors/vim.md) if you get stuck.

### VS Code

For this, you will need the Git Lens Extension installed first.

1. Open the command palette (Ctrl+Shift+P)
2. type in 'git revert' and look for 'GitLens: Git Revert'
3. A menu will pop up, check off the commits you'd like to revert and press OK
4. Select either edit or no edit, and press OK
# What is git log?

Git log can be used to view the commit history of the branch you are currently on.

You can specify how many commits you'd like to see

```bash
git log -5 # shows the last 5 commits
git log -3 # shows the last 3 commits
```

Running `git log` on it's own shows you every commit EVER for that branch.

Every commit has a "hash" or unique ID, you can use these IDs for things like `git reset` and `git revert`.

## I ran git log, and my terminal has a colon on the bottom of it, and I'm stuck!!!

![](../../media/colon%20stuck%20terminal.png)

The git log is often very large, and you can scroll through it in the terminal using the arrow keys. You can press `q` to quit the git log view.
# How do I merge master into my branch?

## Terminal

```bash
git checkout master # switch to the master branch
# you can also use `git switch master`
git pull # pull the latest changes from the remote
git switch my-branch # switch to the branch you want to merge master into
git merge master # merge master into your branch
```

- This will bring up a text editor with a commit message in your terminal
- For more information on this, please see [Help! I'm stuck in Vim!](./docs/errors/vim.md)
- but the TL;DR is press `esc` then type `:wq` and press enter to save and quit
- If you are brave, the vim notes will help you understand how to use it

### Bonus: How to merge master into your branch without switching to master
Let's say that you just ran `git fetch` and would like to merge the latest version of master into your branch without switching to master. You can do this by running the following command:

```bash
git merge origin/master # origin/master means the GITHUB master branch, not your local master branch
# which is likely out of date
```

## VS Code

- Open the command palette (Ctrl + Shift + P) or (Cmd + Shift + P) on Mac
- Type in "Merge" and look for the "Git: Merge" command
- Select the branch you want to merge into your current branch
- VS Code will automatically create a commit message for you, but you can change it if you want
- Any merge conflicts will be highlighted in the editor
  - For more information on this, please see [How do I fix a merge conflict?](./docs/errors/fix-a-merge-conflict.md)

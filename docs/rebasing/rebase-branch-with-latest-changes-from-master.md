# How do I rebase my branch with the latest changes from master/main?

```bash
git fetch # fetch the latest changes from the remote
git rebase origin/master # rebase your branch onto the latest version of master
```

If there are merge conflicts, you will need to fix them before you can continue.
This could cause vim to open up. If this happens, please see [Help! I'm stuck in Vim!](/docs/errors/vim.md) for more information.

To learn more about resolving merge conflicts, please see [How do I fix a merge conflict?](/docs/errors/fix-a-merge-conflict.md)
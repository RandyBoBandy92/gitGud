# Pull changes from GitHub


## My Git Pull is not working!!!!!!!

If you are trying `git pull` getting an error that looks like this:

```bash
hint: You have divergent branches and need to specify how to reconcile them.
hint: You can do so by running one of the following commands sometime before
hint: your next pull:
hint: 
hint:   git config pull.rebase false  # merge
hint:   git config pull.rebase true   # rebase
hint:   git config pull.ff only       # fast-forward only
hint: 
hint: You can replace "git config" with "git config --global" to set a default
hint: preference for all repositories. You can also pass --rebase, --no-rebase,
hint: or --ff-only on the command line to override the configured default per
hint: invocation.
```

This message is a hint from Git, suggesting that your local branch and the remote branch have diverged, meaning that both branches have new commits that the other one does not have. When this happens, you need to decide how to reconcile the differences between the two branches when you perform a git pull.

The hint provides three options:

`git config pull.rebase false`: This option sets the merge strategy. When you perform a git pull, Git will merge the remote branch into your local branch, creating a new merge commit to combine the histories. This is the default behavior.

`git config pull.rebase true`: This option sets the rebase strategy. Instead of merging the remote branch, Git will try to reapply your local commits on top of the remote branch. This can lead to a cleaner, linear history but may require resolving conflicts if the changes in your local and remote branches are conflicting.

`git config pull.ff only`: This option sets the fast-forward strategy. Git will only update your local branch if it can be fast-forwarded (i.e., if your local branch is strictly behind the remote branch). If not, the pull will be aborted, and you'll need to manually merge or rebase to reconcile the differences.

You can choose one of these options by running the suggested git config commands. To set a default preference for all repositories on your system, replace "git config" with "git config --global" in the commands.

For more info on git config, see [What is git config?](/docs/general/what-is-git-config.md)

or [What is the difference between git config --global and git config?](/docs/general/what-is-git-config.md#what-is-the-difference-between-git-config---global-and-git-config)

Additionally, you can pass `--rebase`, `--no-rebase`, or `--ff-only` as command-line options when running git pull to override the configured default for that specific pull operation.

### Ok Cool -- but what one should I use?

I would say use the merge strategy. It is the default, and it is the safest. If you are not sure what you are doing, then I would stick with the default. If you are more advanced, then you can use the rebase strategy. If you are really advanced, then you can use the fast-forward strategy.

So if you get that error, run the following commands:

```bash
git config pull.rebase false
git pull
```

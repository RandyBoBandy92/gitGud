# How do I revert a merge commit?

Here's the scenario:
- You just merged a PR, and had to resolve some merge conflicts in the process
- The merge commit was pushed to master
- Aaaaannd.. there's a bug that breaks everything!
- You need to revert that merge commit and get that code off master ASAP!
- Wat do?

## Terminal

So you follow the steps from [How do I revert a commit?](/docs/revert/what-is-git-revert.md#how-do-i-revert-a-commit), but you get an error:

```bash
error: commit d23ef826eb6e4d2da6d1cbbb43d24e5f8933a802 is a merge but no -m option was given.
fatal: revert failed
```

What's going on here?

The `-m` flag is used because that commit contained TWO branches being merged together.. so git needs to understand WHICH parent contained the right code? 

So you need to specify which parent you want to revert to. 

```bash
git revert -m 1 d23ef826eb6e4d2da6d1cbbb43d24e5f8933a802
# why 1?
```

The first parent (1) is the branch you were on when you merged, and the other parents (2, 3, etc.) are the branches that were merged.

So if master branch is what we want to go back to, we would put -1 (the first parent).


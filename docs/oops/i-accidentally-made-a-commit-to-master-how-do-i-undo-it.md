# I accidentally made a commit to master, how do I undo it?

## Why this is a problem

If you have commits on your local machine that you do NOT want to push to GitHub, your local branch
and GitHub will have "diverged" and now you can no longer use git pull.
For more info on that, see [my git pull is not working](/docs/repos/pull-changes-from-github.md#my-git-pull-is-not-working) section.

## How to fix it

Video Guide:

![](../../media/git%20reset%20hard%20for%20master%20commit.gif)

First you need to rescue the changes you made into another branch if you intend to keep them.

```bash
git switch -c rescue-branch
```

Now you need to RESET your master branch to the commit before you made the bad commit.

let's say you made only 1 commit on master, and you want to reset to the commit before that.


```bash
git log -3 # look at the last few commits, and find the one that has origin/master on it
# it will look like this
commit f427945f6435551769c7a4d1c5c6dfcc797667f1 (HEAD -> master, rescue)
Author: Randy Gulak <randy@tricano.com>
Date:   Thu Mar 16 18:41:49 2023 -0700

    accidental commit to master

commit 056d2c9344762e5099d379e36b6a8fb91aeb62a3 (origin/master) # latest github commit is here
Merge: 77c349f d930e73
Author: Randy Gulak <randy@tricano.com>
Date:   Thu Mar 16 18:39:53 2023 -0700


    committed stuff
```

So in this case, the commit we need to go back to is `056d2c9344762e5099d379e36b6a8fb91aeb62a3`

```bash
git reset --hard 056d2c9344762e5099d379e36b6a8fb91aeb62a3
```

**DANGER**

This will obliterate your commit to master, so rescue those changes first if you want to keep them.
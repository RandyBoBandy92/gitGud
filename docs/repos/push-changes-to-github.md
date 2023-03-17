# How do I push my changes to GitHub?

To push your changes to GitHub, you will need to run the following command:
(this is presuming that your connection to github on this repo is already set up)

```bash
git push <branch-name> # this will push your changes to the branch you are currently on
```


## My git push is not working!!!!!!!

If you are getting an error that looks like this:

```bash
 ! [rejected]        brokenlol -> brokenlol (non-fast-forward)
error: failed to push some refs to 'https://github.com/RandyBoBandy92/gitTestingExample.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Integrate the remote changes (e.g.
hint: 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
```

This means that your local branch is out of date with the remote branch. You will need to pull the latest changes from the remote branch, and then push your changes to the remote branch.

For info on that, see [Pull changes from GitHub](/docs/repos/pull-changes-from-github.md)
and if you have conflicts, see [How do I resolve merge conflicts?](/docs/repos/how-do-i-resolve-merge-conflicts.md)

Buuuut... It could also mean that maybe you accidentally are trying to push to the wrong branch.

How do we find out if that is the case?

```bash
git branch -vv # this will show you the current branch you are on, and the remote branch it is tracking
* brokenlol    de592a8 [origin/master: ahead 1] added lol
  master       374dc02 [origin/master] init repo and added index.html
  randy-branch 633a796 [origin/randy-branch: ahead 1] added lorem
```

If it looks like that, then you accidentally setup your branch to track the master branch on GitHub. You will need to change the remote branch that your local branch is tracking. You can do this by running the following command:

```bash
git branch -u origin/<branch-name> # this will change the remote branch that your local branch is tracking
# so in the case of brokenlol it would be
git branch -u origin/brokenlol
git push # this will push your changes to the remote branch and *SHOULD* work ;)
```


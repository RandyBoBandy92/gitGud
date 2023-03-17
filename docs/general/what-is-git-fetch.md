# What is git fetch?

Git fetch is a command that downloads all the branches from GitHub, but does not merge them into your local repository.

So, think of fetch as a "download only" step. It will download all the branches from GitHub, but it will not update your working directory with the latest changes.

## What happens if I don't run git fetch?
Your git will sometimes give you messages that are confusing. For example, if you *know* that your master branch has been updated
on GitHub, but when you run `git status` it looks like this

```bash
On branch master
Your branch is up to date with 'origin/master'.
```

Why? Because your LOCAL copy of git is not aware of the changes until you download them with `git fetch`.

## How do I run git fetch?

```bash
git fetch
```

...Yup, that's it. That's all you have to do.

## How can I make the computer do this for me?

Now you're talking! Let's setup VS Code to run git fetch in the background for us.

1. Open up your VS Code Settings
2. Search for 'auto fetch' and enable it
![auto fetch](../../media/git%20fetch%20VS%20code.png)

Now VS Code will automatically run `git fetch` in the background for you. Nice!


## do I have to use git fetch --all?

No, you don't have to use `git fetch --all`. You can use `git fetch` without any arguments to download all the branches from GitHub. The `--all` flag is only needed if you want to download all the branches from GitHub and also all the tags.
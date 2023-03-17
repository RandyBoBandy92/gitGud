# How do I ignore files?

After [creating a repo](create-a-new-git-repo.md), you may want to ignore certain files. For example, you may want to ignore your `node_modules` folder. This is because you don't want to commit your `node_modules` folder to your repo. This is because it is a large folder that is not necessary for your project. It is also a folder that is automatically generated when you run `npm install`. So, you don't want to commit it to your repo.

## Creating a .gitignore file

- Create a `.gitignore` file in the root of your project
- Add the files you want to ignore to the `.gitignore` file


If you don't create a `.gitignore` file when you first make your repo, even if you ignore files later, they will still be tracked by git. So, you will need to remove them from git's tracking.

## I ignored a file, but it's still being tracked by git

If you ignored a file, but it's still being tracked by git, you will need to remove it from git's tracking.

```bash
git rm -r --cached . # remove all files from git's tracking
git add . # add all files back to git's tracking
git commit -m "remove ignored files from git's tracking"
```

If that command seems too scary (I don't blame you) You can also remove one file only from tracking...

```bash
git rm -r --cached <file name> # remove file from git's tracking
```

Afterwards, you'll need to commit this change, either in the terminal or in VS Code.
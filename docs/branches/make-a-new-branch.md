# How do I make a new branch

When you make a new branch in VS Code, it will be based off of the current location of the HEAD.
For more info on HEAD, see [What is HEAD?](/docs/general/what-is-head.md)

But basically, that means whatever branch you are on right now will be the base for your new branch.
It looks kinda like this (thanks to https://learngitbranching.js.org/ for the awesome visualizations!)
![git-branching](/media/git%20branching.gif)

### Terminal
```bash
git checkout -b my-new-branch # the -b flag creates a new branch and checkout also switches to the new branch
# alternatively
git branch my-new-branch # creates a new branch but does not switch to it
git switch -c my-new-branch # creates a new branch and switches to it
```


### VS Code
- Open VS Code
- Click on the Branch button in the bottom left corner
- A menu will popup showing all the branches in your repository, click on the "Create new Branch" button


Making a new branch using these commands will make a new branch based off the CURRENT branch you are on. (Also known as the "HEAD" branch)
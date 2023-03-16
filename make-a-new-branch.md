# How do I make a new branch

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
![[vs code new branch.mov]]


Making a new branch using these commands will make a new branch based off the CURRENT branch you are on. (Also known as the "HEAD" branch)
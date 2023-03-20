# How do I work on a project with other students?

So, you've setup your project, published it to github (made a [.gitignore!](../repos/ignore-files.md)) and now you want to work on it with other students.

## How do I add a collaborator to my project?

1. Go to your project's github page
2. Click on the "Settings" tab
3. Click on "Manage Access"
4. Click on "Invite a collaborator"
5. Enter the github username of the person you want to add as a collaborator

## How do we all work on the same project?

### Simple Workflow

While you are getting used to working with git/github, you can each have 1 branch for each group member.

1. [Create a branch for yourself](../branches/make-a-new-branch.md)
2. Make changes to your branch
3. [Push your changes to github](../repos/push-changes-to-github.md)
4. [Make a pull request to merge your branch into master/main](../repos/make-a-pull-request.md)

#### My branch is out of date with master/main, what do I do?

[Use git rebase](../rebasing/rebase-branch-with-latest-changes-from-master.md) to keep your branch up to date with master/main.

### Advanced Workflow

If you are more experienced with git/github, you can use a more advanced workflow.

Ideally you would have the requirements for your project broken down into smaller tasks. Each task would be a separate branch. 

1 task = 1 branch

1. [Create a branch for each task](../branches/make-a-new-branch.md)
2. Make changes to your branch
3. [Push your changes to github](../repos/push-changes-to-github.md)
4. [Make a pull request to merge your branch into master/main](../repos/make-a-pull-request.md)
5. Repeat steps 2-4 until all tasks are complete
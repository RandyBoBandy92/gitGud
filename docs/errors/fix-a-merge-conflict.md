# Fix a merge conflict

If you have a merge conflict, you'll see something like this:

```bash
Auto-merging README.md
CONFLICT (content): Merge conflict in README.md
Automatic merge failed; fix conflicts and then commit the result.
```

### VS Code
1. Click the "Source Control" button in the left sidebar
   1. The files with merge conflicts will be highlighted in red
2. Click on each file with a merge conflict
3. VS Code will show you the merge conflict

The code from the branch you are on will be called "Current Changes"

While the code from the branch you are merging in will be called "Incoming Changes"

4. You will have options to accept either the "Current Changes" or the "Incoming Changes" or to accept both
5. Once you have fixed all merge conflicts in the file, save it and click the "+" button in the Source Control sidebar to stage the file
6. Repeat steps 2-5 for all files with merge conflicts
7. Commit the merge

![](/media/vs%20code%20merge%20conflict%20resolution.gif)

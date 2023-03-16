# Help! I'm stuck in Vim!


## What the hell is vim?

Vim is a text editor that is built into your terminal. It is a very powerful text editor, but it is also very confusing. It is the default text editor for git, so you will probably run into it at some point.


## How do I get out of vim?

To get out of vim, you need to press `esc` to get into command mode, then type `:wq` and press enter to save and quit. If you don't want to save, you can type `:q!` and press enter to quit without saving.

You can also press `esc` followed by `ZZ` to save and quit.

Or, just shut your computer off ;) (works for me everytime!)


## How do I use vim when it pops up in my terminal?

If you are seeing vim in your terminal, it is probably because you are trying to commit changes, or a merge conflict has occurred. You can use vim to write a commit message.

### How to write a commit message in vim
When you are first prompted to write a commit message, you will see something like this:

```bash
# Please enter the commit message for your changes. Lines starting
# with '#' will be ignored, and an empty message aborts the commit.
#
# On branch my-branch
# Changes to be committed:
#   (use "git restore --staged <file>..." to unstage)
#
#       modified:   docs/merging/docs/errors/vim.md
#
```

To write your commit message, you need to press `i` to get into insert mode. Then you can type your commit message. When you are done, press `esc` to get into command mode, then type `:wq` and press enter to save and quit.
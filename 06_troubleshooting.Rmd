# Troubleshooting Problems and Fixing Mistakes

## Undoing Things

Merge conflicts are some of the most common hiccups you'll encounter with Git,
but there are a few others. We'll discuss them briefly here.

If you forget to add a file to a commit, or you mess up your commit message,
you can redo the commit. Stage the files you forgot and commit again using the
`--amend` flag

```
$ git commit --amend
```

If you decide you aren't ready to commit a staged file, you can un-stage it
with 

```
$ git reset HEAD <file>
```

or with

```
$ git restore --staged <file>
```

You can reset all uncommitted changes made to a file with

```
$ git checkout -- <file>
```

## Hard Resets

Here's how you roll everything in a directory back to the last commit

```
$ git reset --hard HEAD
```

Rolling everything back to the next to last commit (the commit before the
`HEAD` commit)

```
$ git reset --hard HEAD^
```

Rolling everything back to two commits before `HEAD`

```
$ git reset --hard HEAD^2
```

And finally, rolling everything back to an identified commit using a `hash`
from the log

```
$ git reset --hard <hash>
```

To reset everything back to an earlier commit and make sure that the `HEAD`
pointer is pointing to the newly reset `HEAD`, do the following

```
$ git reset --hard <hash>
$ git reset --soft HEAD@{1}
```

## Deleting Files

If you'd like to delete a file from Git, use

```
$ git rm <file>
```

Note that this will also delete the file from your file system. If you want to
keep the file on your computer, use

```
$ git rm --cached <file>
```

Make a commit to the repository and Git will delete the file.

And with all that, you're ready to start using Git in your own projects!

::: {.exercise #ex4 name="Reset master branch and merge"}
Move the `master` branch back by one commit and then merge the second branch
into that commit.
:::

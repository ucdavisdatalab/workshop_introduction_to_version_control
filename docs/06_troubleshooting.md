# Troubleshooting Problems and Fixing Mistakes

## Undoing Things

One of the common undos takes place when you commit too early and possibly forget 
to add some files, or you mess up your commit message. If you want to redo that 
commit, make the additional changes you forgot, stage them, and commit again 
using the `--amend` option

```
$ git commit --amend
```

To unstage a file for commit use

```
$ git reset HEAD <file>
```

Throwing away changes you've made to a file

```
$ git checkout -- <file>
```

Rolling everything back to the last commit

```
$ git reset --hard HEAD
```

Rolling everything back to the next to last commit (The commit before the HEAD 
commit)

```
$ git reset --hard HEAD^
```

Rolling everything back tp two commits before the head

```
$ git reset --hard HEAD^2
```

Rolling everything back to an identified commit using HASH/ID from log

```
$ git reset --hard <commit>
```


## When Things go Wrong!

To reset everything back to an earlier commit and make sure that the HEAD pointer 
is pointing to the newly reset HEAD, do the following

```
$ git reset --hard <commit>
$ git reset --soft HEAD@{1}
```

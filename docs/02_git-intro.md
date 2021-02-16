# Introduction to Git

Put some intro text here

## Save, Stage, Commit

Git does not automatically preserve versions of every "saved" file.  When working with Git, you save files as you always do, but this has no impact on the versions that are preserved in the repository.  To create a "versions", you must first add saved files to a Staging area and then "Commit" your staged files to the repository.  The Commits that you make constituted the versions of files that are preserved in the repository.

![](./img/save_stage_commit.png)

## Creating Your First Repo

Move to your Home directory

```
$ cd ~
```

note:  The \$ character represents your command promt.  DO NOT type it into your terminal

Create a new directory for this workshop

```
$ mkdir introtogit
```

Change to the new directory

```
$ cd introtogit
```

Put the new directory under version control

```
$ git init
```


## Checking the Status of a Repo

To check the status of a repository use the followign command

```
$ git status
```

## Version of a File

In Gitspeak, we 'commit' if version of a file to the repository to save a copy of the current working version of a file as a version.  This is a multi-step process in which we first 'stage' the file to be committed and then 'commit' the file.

STEP 1:  Place the file you want to version into the Staging Area

```
$ git add <filename>
```

*Replace <filename> in the command above with the actual name of the file you want to version.*

STEP 2: Commit Staged Files

```
$ git commit -m 'A detailed comment explaining the nature of the versio being committed.  Do not include any apostrophe's in your comment.'
```

## View a History of Your Commits

To get a history of commits

```
$ git log
```

To see commit history with patch data (insertions and deletions) for a specified number of commits

```
$ git log -p -2
```

To see abbreviated stats for the commit history

```
$ git log --stat
```

You can save a copy of your Git log to a text file with the following command:

```
$ git --no-pager log > log.txt
```

## Comparing Commits

```
$ git diff <commit> <commit>
```

## Comparing Files

```
$ git diff <commit> <file>
```

or 

```
$ git diff <commit>:<file> <commit>:<file>
```

## To View an Earlier Commit

```
$ git checkout <commit>
```

To solve Detached Head problem either RESET HEAD as described below or just chekout another branch

```
git checkout <branch>
```

To save this older version as a parallel branch execute

```
$ git checkout -b <new_branch_name
```

This will save the older commit as a new branch running parallel to master.

## Undoing Things

One of the common undos takes place when you commit too early and possibly forget to add some files, or you mess up your commit message. If you want to redo that commit, make the additional changes you forgot, stage them, and commit again using the --amend option

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

Rolling everything back to the next to last commit (The commit before the HEAD commit)

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

To reset everything back to an earlier commit and make sure that the HEAD pointer is pointing to the newly reset HEAD, do the following

```
$ git reset --hard <commit>
$ git reset --soft HEAD@{1}
```

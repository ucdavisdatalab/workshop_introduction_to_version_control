# Creating Your First Repo

## Save, Stage, Commit

Git does not automatically preserve versions of every "saved" file. When working 
with Git, you save files as you always do, but this has no impact on the versions 
that are preserved in the repository. To create a "version", you must first add 
saved files to a **staging area** and then "commit" your staged files to the 
repository. The commits that you make constituted the versions of files that are 
preserved in the repository.

![](img/save_stage_commit.png)

## Your First Repo

Using the command line, move to your Home directory

```
$ cd ~
```

note: The $ character represents your command prompt. DO NOT type it into your terminal

Create a new directory for this workshop

```
$ mkdir intro_to_git
```

Change to the new directory

```
$ cd intro_to_git
```

Put the new directory under version control

```
$ git init
```


## Checking the Status of a Repo

To check the status of a repository use the following command

```
$ git status
```

## Version of a File

In Git-speak, we "commit" if version of a file to the repository to save a copy 
of the current working version of a file as a version. This is a multi-step process 
in which we first "stage" the file to be committed and then "commit" the file.

STEP 1:  Place the file you want to version into the Staging Area

```
$ git add <filename>
```

*Replace <filename> in the command above with the actual name of the file you want to version.*

STEP 2: Commit Staged Files

```
$ git commit -m 'A detailed comment explaining the nature of the version being 
committed. Do not include any apostrophe's in your comment.'
```

## View a History of Your Commits

To get a history of commits

```
$ git log
```

To see commit history with patch data (insertions and deletions) for a specified 
number of commits

```
$ git log -p -2
```

To see abbreviated stats for the commit history

```
$ git log --stat
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

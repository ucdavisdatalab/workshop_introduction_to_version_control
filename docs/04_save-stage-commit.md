# Creating Your First Repo

Now that we've established how version control works, we can start using it. To 
do so, we'll create a new directory under Home and initialize a new Git 
*repository* inside it.

## Your First Repo

Using the command line, move to your Home directory

```
$ cd ~
```

Note: The `$` character represents your command prompt. You do not need to type 
it into your terminal.

Create a new directory for this workshop

```
$ mkdir intro_to_git
```

Change to the new directory

```
$ cd intro_to_git
```

To put this directory under version control, we simply use

```
$ git init
Initialized empty Git repository in /Users/tyler/intro_to_git/.git/
```

The message your command line sends back indicates what, exactly, putting a 
directory under version control means. Notice that Git has created a new, hidden 
directory inside `intro_to_git`. This is the Git repository. It doesn't contain 
any information about your files (yet), but it does set up all the necessary 
files and directories that you need to track a project.

```
$ ls -a .git
HEAD        config      description hooks       info        objects     refs
```

The nice thing about Git is that, for the most part, it does the work of 
interfacing with the contents of the repository. While you can mostly ignore them 
when working on a project (though a later section will discuss why we might need to 
do so from time to time), they themselves do the important work of keeping track 
of what you've committed.

## Checking the Status of a Repo

To check the status of a repository use the following command

```
$ git status
On branch master

No commits yet

nothing to commit (create/copy files and use "git add" to track)
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

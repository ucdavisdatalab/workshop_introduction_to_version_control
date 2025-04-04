# Remote Repositories

:::{admonition} Learning Goals
:class: note
After this lesson, you should be able to:

* Explain what [GitHub][] is and how it relates to Git
* Create an SSH key in order to authenticate with GitHub
* Explain the difference between a local and remote repository
* Clone a remote repository (on GitHub) to your computer
* Push changes to a remote repository
* Pull changes from a remote repository
:::

[GitHub]: https://github.com/

As a distributed version control system
({numref}`sec-version-control-systems`), one of Git's major features is that
you can share commits between repositories. From the perspective of a
repository, the repository is **local** and all other repositories are
**remote**. Remote repositories, or remotes, are typically stored on some other
computer connected to yours by a network (such as the Internet). In this
chapter, you'll learn how to use Git to send and receive commits from remote
repositories.


(sec-github)=
## GitHub

<!--
TODO: this section could provide more details about popular hosting services
and explain why we focus on GitHub.
-->

[GitHub][] is a hosting service for Git repositories, much like Google Drive
and Dropbox are hosting services for files. You don't have to use GitHub or
competing services (such as [GitLab][] and [BitBucket][]) in order to use Git,
but doing so provides a convenient way to share, collaborate on, and back up
repositories.

[GitLab]: https://about.gitlab.com/
[BitBucket]: https://bitbucket.org/

We'll use a remote repository hosted on GitHub to demonstrate how to share
commits, but all of the Git commands described will work with any remote
repository.

:::{important}
Keep in mind that Git and GitHub are different things. Git is a version control
system, while GitHub is a hosting service built to support Git.

GitHub also offers an application called [GitHub Desktop][gh-desktop], which
allows users to manage their local repositories with a point-and-click
graphical user interface (GUI).

[gh-desktop]: https://desktop.github.com/

Ultimately, it's a matter of preference whether you use the GUI or stick with
the command line for your own projects, but it's a good idea to first become
proficient at interacting with Git via the command line. The primary reason
for this is that not every computer you use will have GitHub Desktop
installed---or even have graphics! Many computing servers offer command
line-only access, and if you ever want to use Git repositories on these
machines, you'll need to do so without GitHub Desktop.
:::


### Making an Account

To use GitHub, you need to make a (free) account. Go to [GitHub][] and click
"Sign Up" in the top-right corner of the page. This should take you to a form,
which asks you to enter a username, email address, and password. After you've
entered in this information (and completed a quick CAPTCHA), GitHub will make
you an account. Then, the site will prompt you to complete an optional survey.
Fill it out, or scroll to the bottom to skip it.

Either way, you'll need to then verify your email address. Go to your inbox and
look for an email from GitHub. Click the "Verify email address" button. Doing
so will take you to your profile, where, if you'd like, you can add a few
details about yourself.

![](/images/github_new_homepage.png)

You now have a GitHub account! 🎉


### Connecting to GitHub with SSH

:::{important}
Don't skip this part---it's necessary if you want to follow along with the
subsequent examples.
:::

To connect to GitHub from the command line, you must have a GitHub account and
a way to **authenticate**, or establish your identity (prove that you are who
you say you are). GitHub requires authentication as a security measure, so that
individuals and teams can control who has access to their repositories.

You can establish your identity with an **SSH key**, a kind of cryptographic
key. An SSH key consists of two separate key files:

* A **public key** file which can be used to encrypt data. The public key is
  meant to be freely shared, so that people (or servers) can encrypt data they
  want to securely send to you.
* A **private key** file which can be used to decrypt data that was encrypted
  with the associated public key. The private key is meant for you alone, so
  that only you can decrypt and use data that people send to you. *Never* share
  your private key with *anyone* else.

SSH keys are much more secure than passwords, which is one reason why GitHub
uses them for authentication.

:::{note}
SSH stands for **secure shell protocol**, a protocol for communication between
two computers. The "secure" in secure shell means that all messages sent
between the computers are encrypted. This makes it practically impossible for a
third party to see what's being sent.

Git uses SSH to connect GitHub. Git can also use SSH to connect to other
servers hosting repositories.
:::

GitHub provides [detailed documentation][gh-ssh] about how to create an SSH key
and add the public key to your GitHub account. Work through the following
sections of the documentation to set up SSH key authentication with GitHub:

* [Checking for existing SSH keys][gh-check]
* [Generating a new SSH key and adding it to the ssh-agent][gh-generate]
* [Adding a new SSH key to your GitHub account][gh-add]
* [Testing your SSH connection][gh-test]

[gh-ssh]: https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh
[gh-check]: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/checking-for-existing-ssh-keys
[gh-generate]: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
[gh-add]: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
[gh-test]: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/testing-your-ssh-connection


(sec-sharing-a-repository)=
## Sharing a Repository

With a GitHub account and SSH key set up, you're ready to upload your first
shared repository to GitHub.

To get started, open a terminal and navigate to your home directory:

```sh
cd
```

Initialize a new Git repository called `USERNAME_first_shared_repo` (replace
`USERNAME` with your GitHub username):

```sh
git init USERNAME_first_shared_repo
```

In the repository, use a text editor to create a `README.md` file. The contents
should look something like this:

```none
Hello world!
```

Add and commit the changes to `README.md`. Make sure to write a descriptive
commit message like `Add a README.`

So far so good! These steps should be familiar from
{numref}`sec-creating-a-repository` and
{numref}`sec-adding-committing-changes`. But now it's time to do something new:
we need to set up a repository on GitHub where we can **push**, or send,
commits from the local repository.

Open a web browser and go to [GitHub][]. Make sure you're logged in, then click
the "+" button in the upper-right corner and select the "New repository"
option. You'll be taken to a page like this:

:::{figure} /images/gh_new_repository.png
:align: center
:height: 40em
:::

The page asks for several details about the new repository:

* A name for the repository
* A short (1-2 sentence) description of what's in the repository
* Whether the repository should be **public** (viewable by anyone) or
  **private** (viewable only by you and those you grant access)
* Whether the repository should be initalized with:
  - A README file, to describe your project to others.
  - A .gitignore file, to tell Git to ignore specific files or directories.
  - A license, to governs the use or redistribution of your files

For this example, give the repository the same name as the one you just created
on your computer (`USERNAME_first_shared_repo`, replacing `USERNAME` with your
GitHub username). Leave the description blank and make sure the repository is
public. Because you already initialized the repository locally, leave all of
the initialization options unchecked. It should look something like this:

:::{figure} /images/gh_new_repository_filled.png
:align: center
:height: 40em
:::

Once you've filled in the details, click the green "Create repository" button
at the bottom of the page.

GitHub will take you to a new page with "Quick setup" and instructions to
"create a new repository on the command line" or "push an existing repository
from the command line." The page should look something like this:

:::{figure} /images/gh_new_repository_created.png
:align: center
:height: 40em
:::

Under "Quick setup," click on the "SSH" button, so that the instructions show
how to connect to GitHub with SSH. Since we already created a repository
locally, we need to use the "push an existing repository from the command line"
instructions.

Open a terminal, navigate to the repository you created earlier, and then run
the commands listed on the page. In the screenshot above, these are:

```sh
git remote add origin git@github.com:nick-ulle/nick-ulle_first_shared_repo.git
git branch -M main
git push -u origin main
```

The first command, `git remote add`, will look slightly different for you,
since your GitHub username is probably not `nick-ulle`. This command tells Git
where to find the repository on GitHub, and to call it `origin`.

The second command, `git branch`, ensures that the default branch is called
`main`.

Finally, the third command, `git push`, pushes the contents of the local
repository to the repository on GitHub (`origin`). You should see some output
like:

```none
Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Writing objects: 100% (3/3), 1.39 KiB | 1.39 MiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To github.com:nick-ulle/nick-ulle_first_shared_repo.git
 * [new branch]      main -> main
branch 'main' set up to track 'origin/main'.
```

From now on, when you want to push commits from this repository to GitHub, you
can simply run `git push` (without any arguments).

Now go back to your web browser and refresh the repository's page on GitHub.
You should now see the message in your `README.md` file:

:::{figure} /images/gh_new_repository_pushed.png
:align: center
:height: 40em
:::

GitHub automatically checks for a README file in your repository and if it
finds one, displays it on the repository's main page. If the README file is
written in [Markdown][], GitHub will even render the formatting.

[Markdown]: https://guides.github.com/features/mastering-markdown/

:::{seealso}
You can find more information about how to write effective README files in
DataLab's [README, Write Me! workshop][dl-readme].

[dl-readme]: https://ucdavisdatalab.github.io/workshop_how-to-data-documentation/
:::

<!-- TODO: another example of pushing a commit -->


## Collaborating

:::{important}
For this this part, you'll need to work with a partner. Take a moment to find a
partner and exchange GitHub usernames. Pay careful attention to the spelling
and capitalization.
:::

You now know how to push commits from a local repository to a remote. The
counterpart to this is **pulling**, or downloading, commits from a remote to a
local repository. In order to learn how to collaborate on repositories and how
to pull commits, let's share the repository from
{numref}`sec-sharing-a-repository` with a partner. Then they can push a change
up to GitHub, and you can pull the change down to your local repository.

To get started, open a web browser to your repository's main page on GitHub.
Click on the "Settings" button. You'll be taken to a page that looks like this:

:::{figure} /images/gh_repository_settings.png
:align: center
:height: 40em
:::

On the left side, click on "Collaborators". GitHub might ask you to enter your
password or complete two-factor authentication. Once you've done that, you'll
end up at a page like this:

:::{figure} /images/gh_repository_collaborators.png
:align: center
:height: 40em
:::

Click on the green "Add people" button near the bottom of the page, then enter
your partner's GitHub username in the popup that appears. Then tell your
partner to check their email (the one they used to register with GitHub) for an
invitation to collaborate on your repository.

After you and your partner have each accepted the invitation to the other's
repository, open the main page of *your partner's repository* in your web
browser. In order to make and commit changes, you first need to
**clone**---download a copy of---their repository to your computer. Click on
the green "Code" button on their repository's main page, select the "Local"
tab, and select "SSH". Then copy the listed URL to your clipboard. It will look
something like this:

```none
git@github.com:tshoemaker/tshoemaker_first_shared_repo.git
```

The URL will have your partner's GitHub username rather than `tshoemaker`.

Next, open a terminal and navigate to your home directory:

```sh
cd
```

Then use the `git clone` command to clone a copy of your partner's repository.
You'll need to paste the URL you copied to the end of the command:

```sh
git clone git@github.com:tshoemaker/tshoemaker_first_shared_repo.git
```

```none
Cloning into 'tshoemaker_first_shared_repo'...
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 3 (delta 0), pack-reused 0 (from 0)
Receiving objects: 100% (3/3), done.
```

Git will display some details about what it cloned from the remote repository.

You should now see a copy of your partner's repository in your home directory.
In the repository, open `README.md` with a text editor, add a short message for
your partner, and save the changes. Then add, commit, and push your changes.

Pause here to check in with your partner. Confirm that they can see the commit
you made on their repository's GitHub page, and check that you can see the
commit they made on your repository's GitHub page. If anything doesn't seem
right, try working through the steps again.

Finally, it's time to pull the commit your partner made to your repository on
GitHub down to your local repository. Open a terminal again and navigate to
*your repository*. Then run `git pull`:

```sh
git pull
```

Git should print output that looks something like this:

```none
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
Unpacking objects: 100% (3/3), 918 bytes | 918.00 KiB/s, done.
From github.com:nick-ulle/nick-ulle_first_shared_repo
   c4bae61..260a2b4  main       -> origin/main
Updating c4bae61..260a2b4
Fast-forward
 README.md | 1 +
 1 file changed, 1 insertion(+)
```

After pulling the commit, inspect the `README.md` file with a text editor to
confirm that it now contains the message from your partner. If it does,
congratulations! You've successfully used Git and GitHub to collaborate with
someone.


## The Git Workflow

![](/images/git_workflow_bg.png)

As shown in the figure above, a typical Git workflow is:

1. Make some changes to the local repository.
2. Stage your changes with `git add`.
3. Commit your changes with `git commit`.
4. Push the changes up to the remote with `git push`.
5. Repeat steps 1-4 until the project is finished.

There are lots of steps in this process, so there are lots of places where it
can go wrong. _Pay attention to error messages_ and search online if you get
stuck. Lots of people use Git, and your question has probably been asked and
answered :)

:::{seealso}
_[Pro Git][pg]_ is the definitive Git resource and an excellent reference to
keep at hand as you begin to work with Git after finishing this reader.
:::

[pg]: https://git-scm.com/book/en/v2


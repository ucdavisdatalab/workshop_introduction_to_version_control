# Installing Git 

In order to run Git version control and be ready for the interactive session of 
this workshop, **you need to install it on your local machine.** This is required 
preparation and we will not have time during the interactive session to help you 
troubleshoot installation issues. If you don’t have Git installed, you won’t be 
able to follow along with the activities. Git installation is typically an easy, 
point and click process, but there are some configuration steps along the way to 
which you’ll need to pay attention and thus we recommend that you try this well 
in advance of the workshop so you have time to troubleshoot your install if necessary.

## Git on Windows

Follow these step-by-step instructions if you're installing Git on a Windows machine:

First, launch a web browser, the image below shows the Microsoft Edge browser:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_1_browser.png) 

Next, navigate to the following Git download URL in your browser [https://git-scm/com/downloads](https://git-scm.com/downloads):

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_2_git page.png) 

Select "Windows" from the Downloads portion of the Git web page. Git will display 
the following page and automatically being downloading the correct version of the 
Git software. If the download doesn't start automatically, click on the "Click here 
to download manually link":

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_3_downloading.png) 

When the download is complete, open/Run the downloaded file (will look different 
in different browsers, but everyone shoudl know how to do this):

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_4_run_open.png) 

A screen will appear asking for permissions for the Git application to make changes 
to your device. Click on the **Yes** button:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_5_allow_changes.png) 

Click **Next** to accept the user license:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_6_license.png) 

Leave the default "Destination Location" unchanged (usually C:\Program Files\Git) 
and hit **Next**

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_7_install_location.png)

You will see a screen like the one below asking you to "Select Components":

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_8_default_components.png)

Leave all of the default components selected and also check the boxes next to 
"Additional Icons" and its sub-item, "On the Desktop". Your completed configurations 
window should have the following compenents selected:

	Additional Icons 
		-> On the Desktop
	Windows Explorer integration
		-> Git Bash Here
		-> Git GUI Here
	Git LFS (Large File Support)
	Associate .git* configuration files with default text editor
	Associate .sh files to be run with Bash
	
And should look like this:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_9_checked_components.png)

After verifying that you have the necessary components selected as per above, 
hit **Next**.

The next screen will ask you to "Select a Start Menu Folder." Keep the default 
value of Git and hit **Next**:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_10_start_menu.png)

Leave the default "Use Vim (the ubiquitous text editor) as Git's default editor" 
selected on the "Choosing the default editor used by Git" screen and hit **Next**:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_11_editor.png)

On the next screen, leave the default "let Git decide" option selected and hit **Next**:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_12_initial_branch.png)

Leave the default "Git from the command line and also from 3rd-party software" 
selected and hit **Next**:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_13_path.png)

On the next "Choosing HTTPS transport backend" page leave the default "Use the 
OpenSSL library" option selected and hit **Next**:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_14_HTTPS_openssl.png)

Leave the default "Checkout Windows-style, commit Unix-style line endings" 
selected on the next page and hit **Next**:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_15_line_ending.png)


Keep the default "Use MinTTY (the default terminal of MSYS2)" selected on the 
"Configuring the terminal emulator to use with Git Bash" window and hit **Next**:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_16_terminal_emulator.png)


Keep the default value of "Default (fast-forward or merge)" on the "Choose the 
default behavior of 'git pull'" page and hit **Next**:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_17_git_pull.png)

Keep the default value of "Git Credential Manager Core" on the "Choose a 
credential helper" page and hit **Next**:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_18_credential_helper.png)

Keep the default values on the "Configuration extra options" page by keeping 
"Enable file system caching" checked and "Enable symbolic links" unchecked and 
then hit **Next**:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_19_extra_options.png)


Make sure that no options are checked in the "Configuring experimental options" 
page and hit **Install**:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_20_experimental_options.png)


After you hit this **Install** button as per above, you will see an install 
progress screen like the one below:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_21_install_progress.png)

When the install is complete, a new, "Completing the Git Setup Wizard" window like 
the one below will appear:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_22_install_complete.png)

Make sure that all of the options on this window are unchecked as in the image 
below and then hit the **Finish** button:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/win_git_install_23_deslect_and_finish.png)

This will complete your installation process.

*Windows users should verify that when downloading Git for Windows they have *
*also installed Git Bash, which is necessary for working with Git in command line.*

## Git on Mac

If you are installing Git on a Mac, there is no extra configuration.Simply go the 
Git download page at [https://git-scm.com/downloads](https://git-scm.com/downloads) 
and choose the latest version for Mac, and run the installer package when it is 
finished downloading. If you get an "unknown developer" warning during the install 
process, follow the instructions at the beginning of the video at 
[https://www.youtube.com/watch?v=__kr-Ew5kbE ](https://www.youtube.com/watch?v=__kr-Ew5kbE) 
to help you work through this problem.

## Verifying Your Install

**Whether you're installing on Windows or Mac, note that unlike most applications** 
**that you’ve installed before, you will not find a "Git" application in your programs** 
**or applications directory once the installation is complete.** As long as you 
don't get an explicit error message during the installation process, you can 
assume that the software was successfully installed. Git is a command-line 
application with which you interact using the command-line, which we’ll cover during 
the interactive session. If you're already familiar with using command line, you 
can verify your install by opening the terminal (for Windows that will be Git Bash) 
and type `git --version`. You should then see a response of your installed version 
(e.g., git version 2.12.2.windows.2, or git version 2.12.2.mac.2), and not the 
error "command not found." If you aren't familiar with command line we'll cover 
this during the interactive session.

## Installation Troubleshooting

If you are not able to successfully install Git on your own, please attend 
DataLab's Virtual Office Hours, which are held every Monday afternoon from 1:30 
to 3:00 pm, to get help with your installation. 
Click [here](https://datalab.ucdavis.edu/office-hours/) for more information and 
to receive a Zoom link.

## Git on the Command Line

There are several Graphical User Interfaces that allow you to interact with Git 
on your computer, but Git is, at heart, a command line interface. The command 
line offers a text-only, non graphical means of interacting with your computer. 
In the beginning, all user interaction with the computer happened at the command line. 
In the current days of graphical user interfaces, using the Command Line requires 
you to launch a special program that provides command Line access.  

**Mac users** will use an application called "Terminal" which ships by default 
with the Mac operating system. To launch the Terminal application, go to:

> Applicaitons -> Utilities -> Terminal

When you launch the application, you will see something like this:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/mac_terminal.png)

Windows users will use an application called Git Bash, which was installed on 
your system when you installed Git. To launch Git Bash, go to:

> Click on the Windows Start Menu and search for "Git Bash"

Alternatively,

> Click on the Windows Start Menu, select Programs, and browse to Git Bash

When you launch the application, you will see something like this:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/bash.png)

## Ready, Set, Go...

If you've read and understood the information in this online turorial and successfully installed Git on your local machine, you're ready for the Interactive Session!  The sections that follow present exhibits to which we will refer during the live session.

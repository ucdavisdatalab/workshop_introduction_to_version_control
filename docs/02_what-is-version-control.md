# Version Control

## What is Version Control?

**Version control** describes a process of storing and organizing multiple versions 
(or copies) of documents that you create. Approaches to version control range 
from simple to complex and can involve the use of various human workflows and/or 
software applications to accomplish the overall goal of storing and managing multiple 
versions of the same document(s). 

Most people have a folder/directory somewhere on their computer that looks 
something like this:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/mac_finder_1.png)

Or perhaps, this:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/mac_window_2.png)

This is a rudimentary form of version control that relies completely on the human 
workflow of saving multiple versions of a file. This system works minimally well, 
in that it does provide you with a history of file versions theoretically organized 
by their time sequence. But this **filesystem method** provides no information 
about how the file has changed from version to version, why you might have saved 
a particular version, or specifically how the various versions are related. This 
human-managed filesystem approach is more subject to error than software-assisted 
version control systems. It is not uncommon for users to make mistakes when 
naming file versions, or to go back and edit files out of sequence.Software-assisted 
version control systems (VCS) such as Git were designed to solve this problem.

## Software Assisted Version Control

Version control software has its roots in the software development community, where 
it is common for many coders to work on the same file, sometimes synchronously, 
amplifying the need to track and understand revisions.But nearly all types of 
computer files, not just code, can be tracked using modern version control systems. 
IBM's OS/360 IEBUPDTE software update tool is widely regarded as the earliest 
and most widely adopted precursor to modern, version control systems. Its 
release in 1972 of the Source Code Control System (SCCS) package marked the 
first, fully fledged system designed specifically for software version control. 

Today's marketplace offers many options when it comes to choosing a version 
control software system. They include systems such as Git, Visual Source Safe, 
Subversion, Mercurial, CVS, and Plastic SCM, to name a few. Each of these systems 
offers its twist on version control, differing sometimes in the area of user 
functionality, sometimes in how it handles things on the back-end, and sometimes 
both. This tutorial focuses on the Git VCS, but in the sections that follow we 
offer some general information about classes of version control systems to help 
you better understand how Git does what it does and help you make more informed 
decisions about how to deploy it for you own work.

## Local vs Server-based Version Control

There are two general types of version control systems: **local** and **server** 
(sometimes called cloud) based systems. When working with a **local** version 
control system, all files, metadata, and everything associated with the version 
control system live on your local drive in a universe unto itself. Working locally 
is a perfectly reasonable option for those who work independently (not as part of 
a team), have no need to regularly share their files or file versions, and who 
have robust back-up practices for their local storage drive(s). Working locally 
is also sometimes the only option for projects involving protected data and/or 
proprietary code that cannot be shared. 

**Server-based VCS** utilize software running on your local computer that 
communicates with a remote server (or servers) that store your files and data.
Depending on the system being deployed, files and data may reside exclusively 
on the server and are downloaded to temporary local storage only when a file is 
being actively edited. Or, the system may maintain continuous local and remote 
versions of your files. Server-based systems facilitate team science because 
they allow multiple users to have access to the same files, and all their 
respective versions, via the server.They can also provide an important, non-local 
back-up of your files, protecting you from loss of data should your local 
storage fail. 

**Git is a free server-based version control system that can store files both **
**locally and on a remote server.** While the sections that follow offer a broader 
description of server-based version control, in this workshop we will focus only 
on using Git locally and will not configure the software to communicate with, 
store files on, or otherwise interact with a remote server. DataLab's companion 
"Git for Teams" workshop focuses on using Git with the GitHub cloud service to 
capitalize on Git's distributed version control capabilities. 

Server-based version control systems can generally be segmented into two 
distinct categories: 1) Centralized Version Control Systems (Centralized VCS) 
and 2) Distributed Version Control Systems (Distributed VCS). 

## Central Version Control Systems

**Centralized VCS** is the oldest and, surprisingly to many, still the dominant 
form of version control architecture worldwide. Centralized VCS implement a "spoke 
and wheel" architecture to provided server-based version control.   

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/spoke_and_where_cloud.png)

With the spoke and wheel architecture, the server maintains a centralized 
collection of file versions.Users utilize version control clients to "check-out" 
a file of interest to their local file storage, where they are free to make changes 
to the file. Centralized VCS typically restrict other users from checking out 
editable versions of a file if another user currently has the file checked out. 
Once the user who has checked out the file has finished making changes, they 
"check-in" their new version, which is then stored on the server from where it 
can be retrieved and "checked-out" by another user. As can be seen, 
Centralized VCS provide a very controlled and ordered universe that ensures file 
integrity and tracking of changes. However, this regulation comes at a cost. 
Namely, it reduces the ease with which multiple users can work simultaneously on 
the same file. 

## Distributed Version Control Systems

**Distributed VCS** are not dependent on a central repository as a means of sharing 
files or tracking versions. Distributed VCS implement a network architecture (as 
opposed to the spoke and wheel of the Centralized VCS as pictured above) to allow 
each user to communicate directly with every other user.

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/distributed_network.png)

In Distributed VCS, each user maintains their own version history of the files 
being tracked, and the VCS software communicates between users to keep the 
various local file systems in sync with each other. With this type of system, 
the local versions of two different users will diverge from each other if both 
users make changes to the file. This divergence will remain in place until the 
local repositories are synced, at which time the VCS stitches (or merges) the 
two different versions of the file into a single version that reflects the 
changes made by each individual, and then saves the stitched version of the file 
onto both systems as the current version. Various mechanisms can then be used to 
esolve the conflicts that may arise during this merge process. Distributed VCS 
offer greater flexibility and facilitate collaborative work, but a lack of 
understanding of the sync/merge workflow can cause problems. It is not uncommon 
for a user to forget to synch their local repository with the repositories of 
other team members and, as a result, work for extended periods of time on 
outdated files that don't reflect their teammates and result in work 
inefficiencies and merge challenges. 

## The Best of Both Worlds

An important feature of Distributed VCS is that many users and organizations 
choose to include a central server as a node in the distributed network. This 
creates an hybrid universe in which some users will sync directly to each other 
while other users will sync through a central server.

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/hybrid_network.png)

Syncing with a cloud-based server provides an extra level of backup for your 
files and also facilitates communication between users. But treating the server 
as just another node on the network (as opposed to a centralized point of control) 
puts the control and flexibility back in the hands of the individual developer. 
For example, in a true Centralized CVS, if the server goes down then nobody can 
check files in and out of the server, which means that nobody can work. But in a 
Distributed CVS this is not an issue. Users can continue to work on local versions 
and the system will sync any changes when the server becomes available. 
**Git, which is the focus of this tutorial, is a Distributed VCS.** You can use 
Git to share and sync repositories directly with other users or through a central 
Git server such as, for example, GitHub or GitLab.

## VCS and the Computer File System

When we think about Version Control, we typically think about managing changes to 
individual files. From the user perspective, the **file** is typically the minimum 
accessible unit of information. Whether working with images, tabular data, or 
written text, we typically use software to open a File that contains the 
information we want to view or edit. As such, it comes as a surprise to most users 
that the concept of files, and their organizing containers (**folders** or 
**directories**), are not intrinsic to how computers themselves store and 
interact with data. In this section of the tutorial we will learn about how 
computers store and access information and how VCS interact with this process 
to track and manage files.

## How Computers Store and Access Information

For all of their computing power and seeming intelligence, computers still only 
know two things: 0 and 1. In computer speak, we call this a **binary system**, 
and the unit of memory on a hard-disk, flash drive, or computer chip that stores 
each 1 or 0 is called a **bit**.You can think of your computer's storage device 
(regardless of what kind it is) as a presenting a large grid, where each box 
is a bit:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/empty_sectors.png)

In the above example, as with most computer storage, the bits in our storage 
grid are addressable, meaning that we can designate a particular bit using a row 
and column number such as, for example, A7, or E12. Also, remember, that each 
bit can only contain one of two values: 0 or 1. So, in practice, our storage grid 
would actually look something like this:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/filled_bits.png)

All of the complex information that we store in the computer is translated to 
this binary language prior to storage using a system called **Unicode**. You can 
think of Unicode as a codebook that assigns a unique combination of 8, 16, 32, 64, 
etc. (depending on how old your computer is) ones and zeros to each letter, 
numeral, or symbol. For example, the 8-bit Unicode for the upper case letter "A" 
is "01000001", and the 8-bit Unicode character for the digit "3" is "00110011". 
The above grid actually spells out the phrase, "Call me Ishmael", the opening 
line of Herman Melville's novel *Moby Dick*.

An important aspect of how computers story information in binary form is that, 
unlike most human readable forms of data storage, there is no right to left, up 
or down, or any other regularized organization of bits on a storage medium. When 
you save a file on your computer, the computer simply looks for any open bits 
and starts recording information. The net result is that the contents of single 
file are frequently randomly interleaved with data from other files. This mode of 
storage is used because it maximizes the use of open bits on the storage device. 
But it presents the singular problem of not making data readable in a regularized, 
linear fashion. To solve this problem, all computers reserve a particular part of 
their internal memory for a **"Directory"** which stores a sector map of all 
chunks of data. For example, if you create a file called README.txt with the 
word "hello" in it, the computer would randomly store the Unicode for the five 
characters in the word "hello" on the storage device and make a directory entry 
something like the following:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/directory.png)

Understanding the Directory concept and how computers store information is 
crucial to understanding how VCS mange your files.

## How VCS Manage Your Files

Most users think about version control as a process of managing files. For 
example, if I might have a directory called "My Project" that holds several files 
related to this project as follows: 

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/mac_finder_3.png)

One approach to managing changes to the above project files would be to store 
multiple versions of each file as in the figure below for the file analysis.r:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/version_tree.png)

In fact, many VCS do exactly this. They treat each file as the minimum unit of 
data and simply save various versions of each file along with some additional 
information about the version. This approach can work reasonably well. However, 
it has limitations. First, this approach can unnecessarily consume space on the 
local storage device, especially if you are saving many versions of a very large 
file. It also has difficulty dealing with changes in file names, typically 
treating the same file with a new name as a completely new file, thereby breaking 
the chain of version history.

**To combat these issues, good VCS don't actually manage files at all. They **
**manage Directories.** Distributed VCS like Git take this alternate approach 
to data storage that is directory, rather than file, based.  

## Graph-Based Data Management

Git (and many other Distributed VCS) manage your files as collections of data 
rather than collections of files. Git's primary unit of management is the 
**"Repository,"** or "Repo" for short, which is aligned with your computer's 
directory/folder structure. Consider, for example, the following file structure:

![](https://datalab.ucdavis.edu/cstahmer/git_workshop_images/TT_tree_mobile.jpg)

Here we see a user, Tom's, home directory, which contains three sub directories 
(Data, Thesis, and Tools) and one file (Notes.txt). Both the Data and Tools 
directories contain sub files and/or directories. If Tom wanted to track changes 
to the two files in the Data directory, he would first create a Git repository 
by placing the Data directory **"under version control."** 

When a repository is created, the Git system writes a collection of *hidden files* 
into the Data Directory that it uses to store information about all of the data 
that lives under that directory. This includes information about the addition, 
renaming, and deletion of both files and folders as well as information about 
changes to the data contained in the files themselves. Additions, deletions and 
versions of files are tracked and stored not as copies of files, but rather as a 
set of instructions that describes changes made to the underling data and the 
directory structure that describes them.

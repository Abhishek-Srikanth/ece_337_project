# ece_337_project
FPGA Implementation of bayer's demosaicing algorithm on raw images

# Git basics
* `git pull`
  * To get any changes made to current code by someone else
  * __First thing to do before working__
* `git add`
  * Say you made a new myFile.sv module. You want to add it to versioning
  * By adding you simply tell git that you want it to consider changes in this file
  * `git add myFile.sv` will add the file
  * ONE time thing per file
* `git commit`
  * Tells git which changes of a file to remember
  * Say you have finished adding changes to your file
  * You now want to make it's changes be recored
  * `git commit myFile.sv -m <someMessage>`
    * someMessage should briefly explain changes you made
* `git push`
  * You have finished your module after a lot of coding and testing
  * You want your teammates to see it
  * `git push` will push all the files you have committed since last push
* Time to read on branching next:

# Using Branches in Git
On cloning the repository you will be on master branch
You DO NOT want to work and commit directly to master branch

* A branch represents an independent line of development.
* A branch is a way of requesting your own:
  * Working Directory
  * Commit History 
  * Staging Area
* __git branch__
  * `git branch` : used to see available branches
  * `git branch <branchName>` : create a new branch
  * `git branch -d <branchName>` : delete a branch (use small d only) ; Should delete a branch after __merge__ with master
* __git checkout__
  * `git checkout <branchName>` : Changes your branch (and relevant files) to the one mentioned
  * `git checkout -b <new-branch>` : creates a new branch and checks it out
  * git checkout works hand-in-hand with git branch. When you want to start a new feature or module, you create a branch with git branch, then check it out with git checkout (or git checkout -b <...>). You can work on multiple features in a single repository by switching between them with git checkout.
* __git merge__
  * merging is git's way of putting together independent branches and integrating them into a single branch
  * `git merge <branch>` : merges specified <branch> into current branch
  * if i am on branch 'A' and i git merge 'B', then changes in B come into A
  * `git merge --no-ff <branch>` : in addition to merge, also generate merge commit. Good to document merges in a repository
  * __merge conflicts__
    * While merging branches, if two of us have changes in same parts of a file, a merge conflict occurs
    * One of the two changes must be picked by US and committed again
* __Types of merges__
  * Fast forward merge : The start point of your branch is the same as the head of master.
  * 3-way merge : The start point of your branch is not the same as master's head, ie. another team member has updated master
  # __Examples of both on :__ https://www.atlassian.com/git/tutorials/using-branches/git-merge
   
# Cloning from an 'mgXX' account
Create and add your ssh key to your github account to push and pull
This will remove "Permission denied (publickey)" error
https://help.github.com/articles/generating-ssh-keys/

# File Directory
Using same file directory as in ece 337
Source code will be located in Source Folder

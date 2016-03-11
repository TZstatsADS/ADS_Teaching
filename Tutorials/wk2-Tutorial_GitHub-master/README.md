###GitHub Tutorial

#### Installation:
* Install Git: http://git-scm.com/downloads (Windows & OS X)
* Install GitHub Desktop: https://desktop.github.com/

#### Initialization:
* Create a new empty repository
	* create through github desktop
	* create through github website
	* create through terminal: `cd` to a new director and `git init`
* Create a repository from existing local folder
	* from desktop: drag the folder to github desktop
	* from terminal: `cd` to existing folder and `git init`. Commit and push all the files/changes (see below).
* Create a new R project in Studio with Git version control
    * https://support.rstudio.com/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN
* Fork and Clone an existing git repository
	- from desktop
	- from terminal: `git clone username@host/path/to/repository`

#### Work on GitHub Desktop
* Work in local repository
    * Add/Change files
    * Commit to local repository
	* Push to remote repository
	* Pull to local repository
* Work with collaboration
	* Fork and clone a (master) repository
	* Create a branch
		* Branching is the way to work on different parts of a repository at one time. It creates a snapshot of the original branch.
		* ![branch demo](/pics/branch_demo.png)
	* Make a commit
	* Open a pull request 
	* Merge pull request into the master branch
	* Pull to local repository



#### Work on GitHub with terminal 
* Work in local repository
    * Add/Change files: `git add <filename>` or `git add -A` if you want to add all files
    * Commit to local repository: `git commit -m "Commit message"`
	* Push to remote repository `git push`
* Work with collaboration
	* Create a branch: `git checkout -b <branchname>` 
	* Switch back to master: `git checkout master`
	* Make a commit and push to repository: `git push origin <branchname>`
	* update local repository to newest commit: `git pull`
	* Merge another branch into you active branch: `git merge <otherbranchname>`
* A brief guide: http://rogerdudler.github.io/git-guide/

#### Git Glossary
* **commit**: record your changes to the local repository.
* **push**: update the remote repository with your local changes.
* **pull**: update your local repository to the newest commit
* **fork**: a request for GitHub to clone the project and registers it under your username; GitHub also keeps track of the relationship between the two repositories, so you can visualize the commits and pulls between the two projects (and other forks).
* **clone**: copy a repository into your local directory
* **branch**: branches allow you to build new features or test out ideas without putting the main project (master) at risk.
* **merge**: combine another branch in to the master
* **checkout**: switch between branches

![github demo](/pics/demo_1.png)

#### Workflow
![workflow demo](/pics/workflow_demo.png)

*source:http://rogerdudler.github.io/git-guide/ *
# GitHub Repository for LabVIEW VIs built for the UNICORN project. 

## Repository Structure
Each LabVIEW project is contained in its respective directory and one "main" directory, *UnicornMain*, where all VIs are gathered and linked.  

## How to GIT this repository
Each LabVIEW project is contained in their respective folder and new projects should follow the same structure. Furthermore, since all projects are contained
in the same repository it's important to remember that all GIT commands have be executed in the root directory of the repo.

## Dependencies 
In order to run the included LabVIEW projects "ROS for LabVIEW" has to be installed. Instructions can be found here: https://www.clearpathrobotics.com/assets/guides/ros/ROSforLabVIEW.html

## Common GIT commands

#### Clone the repository

```
git clone https://github.com/jsn15011/UNICORN-2019-LabVIEW.git
```

#### Checkout the branch you want and make a local one

```
git branch --list
git checkout <branch>
git branch <new-branch>
```

#### When your code is stable merge the branches

```
git checkout <branch>
git merge <local-branch>
```

If you are working on the same branch it's good practice to always run a fetch & pull when you start your workday.

```
git fetch
git pull
```

#### Push your changes remotely with a commit message

```
git add .
git commit -m "Commit message goes here"
git push origin <branch> 
```


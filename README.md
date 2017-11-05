# UNICORN

The trash-collecting robot.

## Getting Started

Please read through the coding style guides we are using

* [CppStyleGuide](http://wiki.ros.org/CppStyleGuide) - ROS Cpp Style Guide
* [PyStyleGuide](http://wiki.ros.org/PyStyleGuide) - ROS Python Style Guide


## Dependencies

```
sudo apt-get install ros-kinetic-effort-controllers
sudo apt-get install ros-kinetic-gmapping
sudo apt-get install ros-kinetic-gazebo-ros
sudo apt-get install ros-kinetic-range-sensor-layer
cd ~/catkin_ws/src
git clone https://github.com/HusqvarnaResearch/hrp.git
git clone https://github.com/clearpathrobotics/LMS1xx.git
git clone https://github.com/husky/husky.git
cd ~/catkin_ws/src/husky
git checkout kinetic-devel
cd ~/catkin_ws && rosdep install --from-paths src --ignore-src -r -y
cd ~/catkin_ws && catkin_make
```

## Documentation

Generate documentation using rosdoc_lite by running:
> ./generate_doc.sh

Then access the documentation by running:
> xdg-open docs/doc/html/annotated.html

Or by going to the html folder and double-clicking on annotated.html

## How to Git

Please refer to this cheat sheet before doing anything.

* [GitCheatSheet](https://services.github.com/on-demand/downloads/github-git-cheat-sheet.pdf) - Git Cheat Sheet

Open a command window and run:

```
man git
```

To access the git manual.

And check out the Git Mannerism page under InfoWiki on our team site.

### Clone the repository

```
cd ~/catkin_ws/src

git clone https://github.com/notlochness/UNICORN.git
```

### Checkout the branch you want and make a local one

```
git branch --list

git checkout <branch>

git branch <new-branch>
```

### When your code is stable merge the branches

```
git checkout <branch>

git pull

git merge <local-branch>
```

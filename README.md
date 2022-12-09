# warthog-docker

## Requirements

- Use a Linux computer
- Have docker installed, if not: https://docs.docker.com/engine/install/ubuntu/
- Have Nvidia container kit installed, if not: https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html
- User approved in `docker` group

## Steps to run ROS1 

```bash
sudo usermod -aG docker $USER
sudo docker pull ghcr.io/vmsamson/warthog
cd
mkdir Workspace
cd Workplace
git clone https://github.com/vmsamson/warthog-docker.git
cd warthog-docker
sudo ./run
```
What just happened:
- Created a Docker (taken an image of the drivers & set ups required and temporarily set up your computer)
- when typed `exit` all changes that you have made will disappear, which means every step that is made from running will have to be reproduced after exiting and re running
```bash
sudo apt update
glmark2
```
This is testing that GUI is loaded, not just the console. A horse should appear.
```bash
sudo apt install -y                     \
    ros-$ROS_DISTRO-pcl-ros             \
    ros-$ROS_DISTRO-rviz                \
    ros-$ROS_DISTRO-tf2-geometry-msgs
```
25 for AUS English
```bash
sudo apt install -y \
    build-essential \
    libeigen3-dev   \
    libjsoncpp-dev  \
    libspdlog-dev   \
    cmake
source /opt/ros/noetic/setup.bash 
source /devel/setup.bash
roslaunch ouster_ros sensor.launch      \
    sensor_hostname:= 192.168.40.9
```
Noting 192.168.40.9 is the IP of the LiDAR in the Sydney Office.

ONCE DONE:
```console
exit
```

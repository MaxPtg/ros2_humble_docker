FROM ros:humble-ros-base

SHELL ["/bin/bash", "-c"]


RUN sudo apt update && \
    sudo apt install -y ros-humble-turtlesim
    

WORKDIR /app

# build custom ROS 2 nodes
COPY ros2_ws ros2_ws/

RUN cd ros2_ws && \
    source /opt/ros/humble/setup.bash && \
    colcon build

COPY eg6/dev1/ros_entrypoint.sh /

ENTRYPOINT ["/ros_entrypoint.sh"]   
CMD ["bash"]
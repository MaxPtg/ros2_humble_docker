FROM osrf/ros:humble-desktop-full

SHELL ["/bin/bash", "-c"]

# Install Husarnet Client
RUN apt update -y
RUN apt install -y curl gnupg2 systemd
#RUN curl https://install.husarnet.com/install.sh | bash
#RUN update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy

# Install ROS 2 deppendencies (Cyclone DDS)
RUN sudo apt update && \
    sudo apt install -y \
    ros-humble-rmw-cyclonedds-cpp xauth

RUN touch /root/.Xauthority
RUN xauth add ros2-master/unix:0 MIT-MAGIC-COOKIE-1 7280cc04da0368188f3ef227f6e8b008

RUN sudo rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY eg3/dev2/ros_entrypoint.sh /
COPY eg3/dev2/cyclonedds.xml .

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]

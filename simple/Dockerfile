FROM ros:foxy

# install ros package
RUN useradd -d /althome/rgc -s /bin/bash rgc && \
      echo rgc:rgc | chpasswd && adduser rgc sudo && \
      echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
    apt-get update && apt-get install -y \
      ros-${ROS_DISTRO}-demo-nodes-cpp \
      ros-${ROS_DISTRO}-demo-nodes-py && \
    rm -rf /var/lib/apt/lists/*

USER rgc
WORKDIR /althome/rgc

# launch ros package
CMD ["ros2", "launch", "demo_nodes_cpp", "talker_listener.launch.py"]

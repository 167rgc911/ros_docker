FROM ros:foxy

# install ros package
RUN useradd -d /althome/rgc -s /bin/bash rgc && \
    apt-get update && apt-get install -y \
      ros-${ROS_DISTRO}-demo-nodes-cpp \
      ros-${ROS_DISTRO}-demo-nodes-py && \
    rm -rf /var/lib/apt/lists/*

USER rgc
WORKDIR /althome/rgc

# launch ros package
CMD ["ros2", "launch", "demo_nodes_cpp", "talker_listener.launch.py"]

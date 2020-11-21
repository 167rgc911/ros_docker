#!/bin/sh
#docker run -it --rm my/ros:foxy /ros_entrypoint.sh /bin/bash
docker run -it -v /althome:/althome --rm my/ros:foxy /ros_entrypoint.sh /bin/bash

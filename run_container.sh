#!/bin/bash

# docker run --rm -it --runtime=nvidia --env-file=environment -v /tmp/.X11-unix:/tmp/.X11-unix --device /dev/snd star_forge:latest 
# docker run --rm -it --runtime=nvidia --env-file=environment -v /tmp/.X11-unix:/tmp/.X11-unix --cap-add=SYS_PTRACE --security-opt seccomp=unconfined --device /dev/snd calvr_runtime:latest 
docker run --rm -it --runtime=nvidia -e CALVR_HOME=/usr/local -e CALVR_CONFIG_FILE=config.xml -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix --device /dev/snd star_forge:latest 

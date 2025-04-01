FROM ubuntu:24.04

# Keeps the stupid geography question from popping up
ARG DEBIAN_FRONTEND=noninteractive

# RUN sudo apt-get for dependencies
RUN apt-get update && apt-get install -y libsdl2-dev libsdl2-2.0-0 wget

# Makes config directory to copy config file in on startup
RUN mkdir config

# RUN a series of commands to unpack the rc2-daemon source and run it
RUN wget "https://github.com/W3AXL/RadioConsole2/releases/download/v1.1.0-beta1/rc2-daemon-v1.1.0-beta1-linux-x64.tar.gz" \
 && tar -xzf rc2-daemon-v1.1.0-beta1-linux-x64.tar.gz \
 && cd opt/rc2-daemon

# Runs the daemon with config file (attached to config dir on container startup)
CMD ["/opt/rc2-daemon/daemon", "-c", "/config/config.toml"]
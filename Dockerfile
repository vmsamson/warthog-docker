FROM ros:noetic-robot
ENV NO_AT_BRIDGE=1

RUN apt-get update && apt-get install -y \
    glmark2 \
    curl \
    gnome-terminal \
    dbus-x11 \
    libcanberra-gtk3-module \
  && rm -rf /var/lib/apt/lists/* \
  && echo LANG=en_US.UTF-8 >/etc/default/locale

RUN curl -s https://packages.clearpathrobotics.com/public.key | apt-key add - \
  && sh -c 'echo "deb https://packages.clearpathrobotics.com/stable/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/clearpath-latest.list' \
  && apt-get update && apt-get install -y \
     ros-noetic-warthog-desktop \
     ros-noetic-warthog-simulator \
  && rm -rf /var/lib/apt/lists/*

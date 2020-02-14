FROM gitpod/workspace-full:latest

USER root

RUN apt-get update && apt-get install -y build-essential libsdl2-dev libbz2-dev zlib1g-dev liblua5.1-0-dev git scons libfftw3-dev libcurl4-openssl-dev libssl-dev pkg-config

ADD https://github.com/timvisee/ffsend/releases/download/v0.2.58/ffsend-v0.2.58-linux-x64-static /bin/ffsend

USER root

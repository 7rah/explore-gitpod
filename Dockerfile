FROM gitpod/workspace-full:latest

USER root

RUN apt-get update && apt-get install -y gccgo-mipsel-linux-gnu

ADD https://github.com/timvisee/ffsend/releases/download/v0.2.58/ffsend-v0.2.58-linux-x64-static /bin/ffsend

RUN chmod +x /bin/ffsend

USER root

FROM debian:stable
#test

LABEL maintainer="shellclear@gmail.com" description="Steam, Enjoy your favorite games like a BOSS! :p"

RUN bash -c 'echo -e "deb http://ftp.br.debian.org/debian/ stable main contrib non-free\n" > /etc/apt/sources.list.d/stable.list'

RUN dpkg --add-architecture i386

RUN echo "steam steam/license note" | debconf-set-selections && echo "steam steam/question select I AGREE" | debconf-set-selections

RUN echo "keyboard-configuration keyboard-configuration/layout select  Description-pt_BR.UTF-8" | debconf-set-selections

RUN echo "keyboard-configuration keyboard-configuration/variant select Portuguese (Brazil)" | debconf-set-selections

RUN echo "keyboard-configuration keyboard-configuration/layout select " | debconf-set-selections

RUN apt-get update && apt-get install -y \
  steam \
  xserver-xorg-video-intel
  tcpdump

RUN apt-get clean

CMD ["/usr/games/steam", "%U"]

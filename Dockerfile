FROM debian:stable
WORKDIR /root/

# update softwares
RUN apt update
RUN apt upgrade -y

# install basic tools
RUN apt install -y openssh-server sudo
RUN useradd -rm -d /home/debian -s /bin/bash -g root -G sudo -u 1000 debian 
RUN echo 'debian:debian' | chpasswd
RUN service ssh start
EXPOSE 22
WORKDIR /home/debian/

CMD ["/usr/sbin/sshd","-D"]

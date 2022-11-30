FROM ubuntu:22.04

RUN apt update -y
RUN apt upgrade -y
RUN apt install python3 -y
RUN apt install python3-pip -y
RUN pip3 install ansible

RUN mkdir -p /home/pedro/.dotfiles

COPY . /home/pedro/.dotfiles/

ENTRYPOINT ["tail", "-f", "/dev/null"]

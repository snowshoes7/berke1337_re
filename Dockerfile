# sudo docker build -t system_health_check .
# sudo docker run -d -p 1024:1024 --rm -it system_health_check
FROM ubuntu:latest

RUN apt-get update

RUN useradd -d /home/ctf/ -m -p ctf -s /bin/bash ctf
RUN echo "ctf:ctf" | chpasswd
RUN apt-get install -y gcc gcc-multilib

WORKDIR /home/ctf

RUN gcc rng.c -o rng
RUN chmod +x ./rng

USER ctf
CMD ["/bin/bash"]

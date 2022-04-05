# sudo docker build -t system_health_check .
# sudo docker run -d -p 1024:1024 --rm -it system_health_check
FROM ubuntu:latest

RUN apt-get update

RUN useradd -d /home/ctf/ -m -p ctf -s /bin/bash ctf
RUN echo "ctf:ctf" | chpasswd
RUN apt-get install -y gcc 

WORKDIR /home/ctf

COPY chal1.c .

RUN gcc chal1.c -o chal1 -fno-stack-protector -g

USER ctf
CMD ["/bin/bash"]

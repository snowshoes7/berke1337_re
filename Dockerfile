# sudo docker build -t system_health_check .
# sudo docker run -d -p 1024:1024 --rm -it system_health_check
FROM ubuntu:latest

RUN apt-get update

RUN useradd -d /home/ctf/ -m -p ctf -s /bin/bash ctf
RUN echo "ctf:ctf" | chpasswd
RUN apt-get install -y gcc 

WORKDIR /home/ctf

COPY chal1.c .
COPY chal2.c .
COPY chal3.c .

RUN gcc -m32 chal1.c -o chal1 -fno-stack-protector -g
RUN gcc -m32 chal2.c -o chal2 -fno-stack-protector -g
RUN gcc -m32 chal3.c -o chal3 -fno-stack-protector -g

RUN rm chal1.c
RUN rm chal2.c
RUN rm chal3.c

USER ctf
CMD ["/bin/bash"]

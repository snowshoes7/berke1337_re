# sudo docker build -t system_health_check .
# sudo docker run -d -p 1024:1024 --rm -it system_health_check
FROM ubuntu:latest

RUN apt-get update

RUN useradd -d /home/ctf/ -m -p ctf -s /bin/bash ctf
RUN echo "ctf:ctf" | chpasswd
RUN apt-get install -y gcc gdb vim

WORKDIR /home/ctf

# INTRO CHALLENGES (9/22)
#COPY ./intro-9.23/rng.c .
#COPY ./intro-9.23/jail.c .
#RUN gcc rng.c -o rng

# REVERSE ENGINEERING CHALLENGE (9/29)
COPY ./rev-9.29/secret_program .
COPY ./rev-9.29/bomb .
COPY ./rev-9.29/answers.txt .

RUN chmod +x ./secret_program
RUN chmod +x ./bomb

USER ctf
CMD ["/bin/bash"]

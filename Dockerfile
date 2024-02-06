# sudo docker build -t system_health_check .
# sudo docker run -d -p 1024:1024 --rm -it system_health_check
FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update

RUN useradd -d /home/ctf/ -m -p ctf -s /bin/bash ctf
RUN echo "ctf:ctf" | chpasswd
RUN apt-get update && apt-get install -y gcc gdb vim python3-pip
RUN pip3 install angr ipython

WORKDIR /home/ctf

# INTRO CHALLENGES (9/22/22 and 9/11/23)
COPY ./intro-2.05/rng.c .
#COPY ./intro-2.05/jail.py .
RUN gcc rng.c -o rng

# REVERSE ENGINEERING CHALLENGE (9/29)
#COPY ./rev-9.29/secret_program .
#COPY ./rev-9.29/bomb .
#COPY ./rev-9.29/answers.txt .

#RUN chmod +x ./secret_program
#RUN chmod +x ./bomb

# UAF (11/10)
#COPY ./uaf-11.10/heap.c .
#COPY ./uaf-11.10/heap_demonstrate.c .
#COPY ./uaf-11.10/echo2 .
#RUN chmod +x ./echo2
#RUN gcc heap.c -o heap_chall 
#RUN gcc heap_demonstrate.c -o heap_example 

# ANGR (12/1)
# COPY ./angr-12.1/a.out .
# COPY ./angr-12.1/fauxware .


USER ctf
CMD ["/bin/bash"]

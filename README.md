# berke1337_re
Reverse engineering challenges for berke1337.

`git clone git@github.com:nigel/berke1337_re.git`


## How to run the programs 
- [Download and install docker](https://docs.docker.com/get-docker/).
- Run `docker build -t re https://github.com/nigel/berke1337_re.git`
- Run `docker run -it re` to run the programs!

- **If you have `gcc` installed on your computer**, you won't need docker. Just run `gcc chal1.c -fno-stack-protection -g` to compile your own programs.
- **If you're running linux**, you can just run these programs directly.
- **Optionally,** you can SSH into [EECS Instructional accounts](https://acropolis.cs.berkeley.edu/~account/webacct/) and run the programs there. (Not tested).


## Challenge time..
- [Download Ghidra](https://ghidra-sre.org/) or use [Binary Ninja Cloud](https://cloud.binary.ninja/) 

- Disassemble the `chal1`, `chal2`, or `chal3` to reverse engineer!

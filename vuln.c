#include <stdio.h>
#include <stdlib.h>


char *gets(char *s);

char *helper = NULL;

void shell() {
    puts("Huh? How did you get here? Well, anyway, here's your shell . . .");
    execve("/bin/sh", &helper, &helper);
    puts("system returned");
}

int main() {
    char buf[16] = { 0 };

    printf("What's your name? ");
    gets(buf);

    printf("Hi, %s!\n", buf);

    return 0;
}

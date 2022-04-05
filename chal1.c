#include <stdio.h>

int main() {
    int x;
    scanf("%d\n", &x);

    if (x == 1337)  {
        printf("ACCESS GRANTED :)\n");
        return 1;
    }

    printf("ACCESS DENIED :(\n");
    return 0;
}

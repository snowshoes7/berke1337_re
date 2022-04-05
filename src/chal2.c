#include <stdio.h>

int main() {
    int x;
    printf("Enter the secret number: ");
    scanf("%d", &x);

    x = x + 821;
    x = x - 120;

    if (x == 1337)  {
        printf("ACCESS GRANTED :)\n");
        return 1;
    }

    printf("ACCESS DENIED :(\n");
    return 0;
}

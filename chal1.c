#include <stdio.h>

int main() {
    int x;
    printf("Enter the secret number: ");
    scanf("%d", &x);

    if (x == 1337)  {
        printf("ACCESS GRANTED :)\n");
        return 1;
    }

    printf("ACCESS DENIED :(\n");
    return 0;
}

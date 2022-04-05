#include <stdio.h>

int main() {
    int x;
    printf("Enter the secret number: ");
    scanf("%d", &x);

    for (int i = 0; i < 12; i += 1) {
        x += i;
    }

    if (x == 1337)  {
        printf("ACCESS GRANTED :)\n");
        return 1;
    }

    printf("ACCESS DENIED :(\n");
    return 0;
}

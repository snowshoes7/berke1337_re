#include <stdio.h>

int main() {
    int x;

    scanf("%d", &x);

    if (x > 0x100) {
        if ((x%1337) == 6) {
            printf("Correct!\n");
            return 0;
        }
    }

    printf("Incorrect.\n");
    return -1;
}

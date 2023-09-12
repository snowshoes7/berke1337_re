#include <stdio.h>
#include <stdlib.h>

int main () {
    int *x = malloc(0x10);
    printf("Address of x: %p\n", x); 

	free(x);

	int *y = malloc(0x10);
	printf("Address of y: %p\n", y); 

	*y = 4141;
    printf("value of y: %d\n", *y);

    // USE AFTER FREE
    *x = 1337;
    printf("value of y: %d\n", *y);

	return 0;
}

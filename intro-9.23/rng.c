#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

u_int8_t get_choice(u_int32_t *state) {
    u_int8_t res = *state & 0x1F;
    *state = (*state >> 5) | ((res ^ 0x13) << 26);
    return res;
}

int main() {
    printf("Can you predict 0ski's mind and get 50 points?\n");

    int user_choice;
    u_int8_t choice;
    u_int32_t state;
    time_t t;
    int score = 0;

    /* Initialize random */
    srand((unsigned) time(&t));
    state = rand() % 0x1337;

    while (1) {
        choice = get_choice(&state);
        printf("Guess a number from 0-31:\n");
        scanf("%d", &user_choice);

        if (user_choice == choice) {
            printf("nice, you guessed the right number! You and 0ski chose: %d\n", choice & 0xff);
            score += 10;

            if (score >= 50) {
                printf("CONGRATS, YOU WIN!\n");
                return 0;
            }
        } else {
            if (score >= INT_MIN + 50) {
                score = score - 10;
            }
            printf("Wrong number! You guessed: %d, 0ski chose: %d\n", user_choice, choice);
        }

        printf("SCORE: %d\n", score);
    }

    return 0;
}


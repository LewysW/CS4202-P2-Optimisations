#include "optimisations.h"
#define N 1000000

//Optimisation works

void run_delete_null_checks() {
    int x = 42;
    int* ptrptr = malloc(sizeof(int) * N);
    ptrptr[0] = x;

    int* ptr = NULL;
    for (int i = 0; i < N; i++) {
        if (*ptr) {
            printf("%d\n", *ptr);
        }
    }
    printf("ptrptr[0]: %d\n", ptrptr[0]);
}
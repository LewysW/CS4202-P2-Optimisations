#include "optimisations.h"
#define N 1000000

//Optimisation works

void run_delete_null_checks() {
    int x = 42;
    int* ptrptr = malloc(sizeof(int) * N);
    int* ptr = NULL;
    for (int i = 0; i < N; i++) {
        if (*ptr) {
            printf("%d\n", *ptr);
        }
    }
}
#include "optimisations.h"
#define N 100000000

//Optimisation works

void run_loop_unrolling() {
    static int a[N];

    //For loop to unroll
	for (int i = 0; i < N; i++) {
        a[i] = i * i;
    }

    //Print statement avoids loop being optimised away
    printf("%d\n", a[N / 2]);
}

#include "optimisations.h"
#define N 1000000

void run_loop_unrolling() {
    static int a[N];

    //For loop to unroll
	for (int i = 0; i < N; i++) {
        a[i] = i * i;
        printf("%d\n", a[i]);
    }
}

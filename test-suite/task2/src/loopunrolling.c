#include "optimisations.h"
#define N 1000000

//Optimisation works

void run_loop_unrolling() {
    static int a[N];

    //Unrolled for loop, used same factor as optimisation
	for (int i = 0; i < N; i += 8) {
        a[i] = i * i;
        printf("%d\n", a[i]);

        a[i + 1] = (i + 1) * (i + 1);
        printf("%d\n", a[i + 1]);

        a[i + 2] = (i + 2) * (i + 2);
        printf("%d\n", a[i + 2]);

        a[i + 3] = (i + 3) * (i + 3);
        printf("%d\n", a[i + 3]);

        a[i + 4] = (i + 4) * (i + 4);
        printf("%d\n", a[i + 4]);

        a[i + 5] = (i + 5) * (i + 5);
        printf("%d\n", a[i + 5]);

        a[i + 6] = (i + 6) * (i + 6);
        printf("%d\n", a[i + 6]);

        a[i + 7] = (i + 7) * (i + 7);
        printf("%d\n", a[i]);
    }
}

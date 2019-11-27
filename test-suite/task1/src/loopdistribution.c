#include "optimisations.h"
#define N 1000000
#define LIMIT 859353
#define E 1024
#define F 2048

void run_loop_distribution() {
	static int a[N];
	static int b[N];
    static int c[N];
    static int d[N];

    // //Initialise first array
    // c[0] = 5645;
    // for (int i = 1; i < N; i++) {
    //     c[i] = (c[i - 1] * i) % LIMIT;
    // }

    // //Initialise second array
    // d[0] = 2453;
    // for (int i = 1; i < N; i++) {
    //     d[i] = (d[i - 1] * i) % LIMIT;
    // }

    //Perform action to be distributed
    for (int i = 1; i < N; i++) {
        a[i] = c[i] + E;
        printf("a[%d]: %d\n", i, a[i]);
        b[i] = d[i] + F;
        printf("b[%d]: %d\n", i, b[i]);
    }
}

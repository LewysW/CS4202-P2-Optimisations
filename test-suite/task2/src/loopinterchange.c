#include "optimisations.h"
#define N 10000

void run_loop_interchange() {
	static int num[N][N];

    //Interchanged loops with index i and index j
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            for (int k = 0; k < N; k++) {
                num[i][j] = i + j;
            }
        }
    }

	printf("%d\n", num[N / 2][N / 4]);
}

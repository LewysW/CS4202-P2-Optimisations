#include "optimisations.h"
#define N 100

//Optimisation works

void run_loop_interchange();

void run_loop_interchange() {
	int num[N][N];

    for (int j = 0; j < N; j++) {
        for (int i = 0; i < N; i++) {
            for (int k = 0; k < N; k++) {
                num[i][j] = i + j;
            }
        }
    }

	printf("%d\n", num[N / 2][N / 4]);
}

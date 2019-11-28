#include "optimisations.h"
#define N 100

void run_loop_interchange() {
	int num[N][N];

    //Loops using i and j interchanged to attempt to
    //make accesses to num more linear
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            for (int k = 0; k < N; k++) {
                num[i][j] = i + j;
            }
        }
    }

	printf("%d\n", num[N / 2][N / 4]);
}

#include "optimisations.h"
#define N 100

void run_loop_interchange() {
	static int c[N][N];
	static int a[N][N];
	static int b[N][N];

	//Initialise arrays with values
	for (int i = 0; i < N; i++) {
		for (int j = 0; j < N; j++) {
			c[i][j] = i * j;
			a[i][j] = i + j;
			b[i][j] = i - j;
		}
	}

	//Perform action to be interchanged
	for (int i = 0; i < N; i++) {
		for (int j = 0; j < N; j++) {
			for (int k = 0; k < N; k++) {
				c[i][j] = c[i][j] + a[i][k]*b[k][j];
				printf("%d\n", c[i][j]);
			}
		}
	}
}

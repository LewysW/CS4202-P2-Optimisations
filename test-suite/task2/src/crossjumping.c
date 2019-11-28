#include "optimisations.h"
#define N 10000000
#define EVEN 0
#define ODD 1

void run_cross_jumping() {
    static int arr[N];
    int x = 0;
    int y = 0;
    int* result = &x;
    int* sum = &y;

    for (int i = 0; i < N; i++) {
      //Instruction 'sum += i;' should be 
      //moved to end of loop by optimisation
      if (arr[i] > 0) {
        *result *= i;
      } else if (i > 0) {
        *result /= i;
      }
      
      *sum += arr[i];
    }

    printf("Result: %d\n, Sum: %d\n", *result, *sum);
}

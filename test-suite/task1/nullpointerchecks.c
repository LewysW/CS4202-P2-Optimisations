#include "optimisations.h"
#define N 1000000

void run_delete_null_checks() {
    //Allocates int array of length N
    int* arr = malloc(sizeof(int) * N);

    //Iterates through array and prints value if not null
    for (int i = 0; i < N; i++) {
      //check should be removed if optimisation applied
      if ((arr + i) != NULL) {
        printf("%d\n", arr + i);
      }
    }
}

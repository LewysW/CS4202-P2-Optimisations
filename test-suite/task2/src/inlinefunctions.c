#include "optimisations.h"
#include <stdint.h>
#define N 1000000
#define EVEN 0
#define ODD 1

void run_inline_functions() {
    static int arr[N];
    int result;

    for (int i = 0; i < N; i++) {
      //Function code inlined into for loop
      uintptr_t xor_ptr = (uintptr_t)(&arr[i]) ^ i;

      if (xor_ptr % 2 == 0) {
        result = EVEN;
      } else {
        result = ODD;
      }

      printf("Result: %s\n", (result) ? "EVEN" : "ODD");
    }
}

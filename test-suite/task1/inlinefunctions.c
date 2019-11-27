#include "optimisations.h"
#include <stdint.h>
#define N 1000000
#define EVEN 0
#define ODD 1

int comparison(int* x, long y);

void run_inline_functions() {
    static int arr[N];
    int result;

    for (int i = 0; i < N; i++) {
      //Function call to replace with inlined code
      result = (comparison(&arr[i], i) == EVEN) ? EVEN : ODD;
      printf("Result: %s\n", (result) ? "EVEN" : "ODD");
    }
}

//Function to inline,
//Returns whether exlusive or of address and y is odd or even
int comparison(int* x, long y) {
  uintptr_t xor_ptr = (uintptr_t)x ^ y;

  if (xor_ptr % 2 == 0) {
    return EVEN;
  } else {
    return ODD;
  }
}

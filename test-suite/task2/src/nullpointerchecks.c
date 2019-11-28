#include "optimisations.h"
#include "signal.h"
#define N 1000000

void run_delete_null_checks() {
    int x = 42;
    int* ptrptr = malloc(sizeof(int) * N);
    ptrptr[0] = x;
    //optimises away all code after segmentation fault
    raise(SIGSEGV);
}
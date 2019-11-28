#include "optimisations.h"
#include "signal.h"

void run_delete_null_checks() {
    //Both versions of the program raise a segmentation fault
    //skip straight to this stage and reduce code size at
    //the cost of debug information
    raise(SIGSEGV);
}
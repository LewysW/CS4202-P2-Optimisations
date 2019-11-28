#include "optimisations.h"
#include <unistd.h>

int main(int argc, char* argv[]) {
    int opt;

    if ((opt = getopt(argc, argv, "uinfc")) != -1) {
        switch (opt) {
            case 'u':
                run_loop_unrolling();
                break;
            case 'i':
                run_loop_interchange();
                break;
            case 'n':
                run_delete_null_checks();
                break;
            case 'f':
                run_inline_functions();
                break;
            case 'c':
                run_cross_jumping();
                break;
        }
    }
}
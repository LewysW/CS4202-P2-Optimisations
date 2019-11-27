#include "optimisations.h"
#include <unistd.h>

int main(int argc, char* argv[]) {
    int opt;

    if ((opt = getopt(argc, argv, "uidnf")) != -1) {
        switch (opt) {
            case 'u':
                run_loop_unrolling();
                break;
            case 'i':
                run_loop_interchange();
                break;
            case 'd':
                run_loop_distribution();
                break;
            case 'n':
                run_delete_null_checks();
                break;
            case 'f':
                run_inline_functions();
                break;
        }
    }

    //run_loop_interchange();
}
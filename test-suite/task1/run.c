#include "optimisations.h"
#include <unistd.h>

int main(int argc, char* argv[]) {
    int opt;

    if ((opt = getopt(argc, argv, "uidbf:")) != -1) {
        switch (opt) {
            case 'u':
                break;
            case 'i':
                run_loop_interchange();
                break;
            case 'd':
                run_loop_distribution();
                break;
            case 'b':
                break;
        }
    }

    //run_loop_interchange();
}
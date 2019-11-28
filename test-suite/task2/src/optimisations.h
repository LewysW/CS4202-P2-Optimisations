#ifndef OPTIMISATIONS_H
#define OPTIMISATIONS_H
#include <stdio.h>
#include <stdlib.h>

void run_loop_interchange();
void run_loop_unrolling();
void run_delete_null_checks();
void run_inline_functions();

#endif
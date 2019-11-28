all: clean run optimised unoptimised

optimised: interchange unrolling nullpointer inlining
	gcc ./out/run.o ./out/interchange.o ./out/unrolling.o ./out/nullpointerchecks.o ./out/inline.o -o ./out/optimised

unoptimised:
	gcc ./out/run.o ./out/nointerchange.o ./out/nounrolling.o ./out/nonullpointerchecks.o ./out/noinline.o -o ./out/unoptimised

run:
	gcc -c -o ./out/run.o ./src/run.c

interchange:
	gcc -Wall -c -O3 -floop-interchange -o ./out/interchange.o ./src/loopinterchange.c
	gcc -Wall -c -O3 -floop-interchange -S -o ./out/interchange.S ./src/loopinterchange.c
	gcc -Wall -c -O3 -fno-loop-interchange -o ./out/nointerchange.o ./src/loopinterchange.c
	gcc -Wall -c -O3 -fno-loop-interchange -S -o ./out/nointerchange.S ./src/loopinterchange.c

unrolling:
	gcc -Wall -c -O3 -funroll-loops -o ./out/unrolling.o ./src/loopunrolling.c
	gcc -Wall -c -O3 -funroll-loops -S -o ./out/unrolling.S ./src/loopunrolling.c
	gcc -Wall -c -O3 -fno-unroll-loops -o ./out/nounrolling.o ./src/loopunrolling.c
	gcc -Wall -c -O3 -fno-unroll-loops -S -o ./out/nounrolling.S ./src/loopunrolling.c

nullpointer:
	gcc -Wall -c -O3 -fdelete-null-pointer-checks -o ./out/nullpointerchecks.o ./src/nullpointerchecks.c
	gcc -Wall -c -O3 -fdelete-null-pointer-checks -S -o ./out/nullpointerchecks.S ./src/nullpointerchecks.c 
	gcc -Wall -c -O3 -fno-delete-null-pointer-checks -o ./out/nonullpointerchecks.o ./src/nullpointerchecks.c
	gcc -Wall -c -O3 -fno-delete-null-pointer-checks -S -o ./out/nonullpointerchecks.S ./src/nullpointerchecks.c

inlining:
	gcc -Wall -c -O3 -finline-functions -o ./out/inline.o ./src/inlinefunctions.c
	gcc -Wall -c -O3 -finline-functions -S -o ./out/inline.S ./src/inlinefunctions.c
	gcc -Wall -c -O3 -fno-inline -o ./out/noinline.o ./src/inlinefunctions.c
	gcc -Wall -c -O3 -fno-inline -S -o ./out/noinline.S ./src/inlinefunctions.c

clean: 
	rm -rf ./out/*

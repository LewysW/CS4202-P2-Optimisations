all: clean run optimised unoptimised

optimised: interchange distribution unrolling nullpointer inlining
	gcc ./out/run.o ./out/interchange.o ./out/distribution.o ./out/unrolling.o ./out/nullpointerchecks.o ./out/inline.o -o ./out/optimised

unoptimised:
	gcc ./out/run.o ./out/nointerchange.o ./out/nodistribution.o ./out/nounrolling.o ./out/nonullpointerchecks.o ./out/noinline.o -o ./out/unoptimised

run:
	gcc -c -o ./out/run.o ./src/run.c

interchange:
	gcc -Wall -c -o ./out/interchange.o ./src/loopinterchange.c
	gcc -Wall -c -S -o ./out/interchange.S ./src/loopinterchange.c
	gcc -Wall -c -o ./out/nointerchange.o ./src/loopinterchange.c
	gcc -Wall -c -S -o ./out/nointerchange.S ./src/loopinterchange.c

distribution:
	gcc -Wall -c -o ./out/distribution.o ./src/loopdistribution.c
	gcc -Wall -c -S -o ./out/distribution.S ./src/loopdistribution.c
	gcc -Wall -c -o ./out/nodistribution.o ./src/loopdistribution.c
	gcc -Wall -c -S -o ./out/nodistribution.S ./src/loopdistribution.c

unrolling:
	gcc -Wall -c -o ./out/unrolling.o ./src/loopunrolling.c
	gcc -Wall -c -S -o ./out/unrolling.S ./src/loopunrolling.c
	gcc -Wall -c -o ./out/nounrolling.o ./src/loopunrolling.c
	gcc -Wall -c -S -o ./out/nounrolling.S ./src/loopunrolling.c

nullpointer:
	gcc -Wall -c -o ./out/nullpointerchecks.o ./src/nullpointerchecks.c
	gcc -Wall -c -S -o ./out/nullpointerchecks.S ./src/nullpointerchecks.c 
	gcc -Wall -c -o ./out/nonullpointerchecks.o ./src/nullpointerchecks.c
	gcc -Wall -c -S -o ./out/nonullpointerchecks.S ./src/nullpointerchecks.c

inlining:
	gcc -Wall -c -o ./out/inline.o ./src/inlinefunctions.c
	gcc -Wall -c -S -o ./out/inline.S ./src/inlinefunctions.c
	gcc -Wall -c -o ./out/noinline.o ./src/inlinefunctions.c
	gcc -Wall -c -S -o ./out/noinline.S ./src/inlinefunctions.c

clean: 
	rm -rf ./out/*

all: clean run manual

manual: interchange unrolling nullpointer inlining
	gcc ./out/run.o ./out/nointerchange.o ./out/nounrolling.o ./out/nonullpointerchecks.o ./out/noinline.o -o ./out/manual

run:
	gcc -c -o ./out/run.o ./src/run.c

interchange:
	gcc -Wall -c -O3 -fno-loop-interchange -o ./out/nointerchange.o ./src/loopinterchange.c
	gcc -Wall -c -O3 -fno-loop-interchange -S -o ./out/nointerchange.S ./src/loopinterchange.c

unrolling:
	gcc -Wall -c -O3 -fno-unroll-loops -o ./out/nounrolling.o ./src/loopunrolling.c
	gcc -Wall -c -O3 -fno-unroll-loops -S -o ./out/nounrolling.S ./src/loopunrolling.c

nullpointer:
	gcc -Wall -c -O3 -fno-delete-null-pointer-checks -o ./out/nonullpointerchecks.o ./src/nullpointerchecks.c
	gcc -Wall -c -O3 -fno-delete-null-pointer-checks -S -o ./out/nonullpointerchecks.S ./src/nullpointerchecks.c

inlining:
	gcc -Wall -c -O3 -fno-inline -o ./out/noinline.o ./src/inlinefunctions.c
	gcc -Wall -c -O3 -fno-inline -S -o ./out/noinline.S ./src/inlinefunctions.c

clean: 
	rm -rf ./out/*

all: clean interchange distribution unrolling nullpointer inlining run

run:
	gcc -c run.c
	gcc run.o loopinterchange.o loopdistribution.o loopunrolling.o nullpointerchecks.o inlinefunctions.o -o run

interchange:
	gcc -c loopinterchange.c

distribution:
	gcc -c loopdistribution.c

unrolling:
	gcc -c loopunrolling.c

nullpointer:
	gcc -c nullpointerchecks.c

inlining:
	gcc -c inlinefunctions.c

clean: 
	rm -rf run *.o

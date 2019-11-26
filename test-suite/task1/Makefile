all: clean interchange distribution unrolling run

run:
	gcc -c run.c
	gcc run.o loopinterchange.o loopdistribution.o loopunrolling.o -o run

interchange:
	gcc -c loopinterchange.c

distribution:
	gcc -c loopdistribution.c

unrolling:
	gcc -c loopunrolling.c

clean: 
	rm -rf run *.o
